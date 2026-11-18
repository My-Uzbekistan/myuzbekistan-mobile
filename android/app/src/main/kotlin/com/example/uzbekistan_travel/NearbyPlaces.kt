package com.example.uzbekistan_travel

import android.Manifest
import android.annotation.SuppressLint
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.content.pm.ServiceInfo
import android.location.Location
import android.os.Build
import android.os.IBinder
import android.os.Looper
import androidx.core.app.NotificationCompat
import androidx.core.app.ServiceCompat
import androidx.core.content.ContextCompat
import com.google.android.gms.location.LocationCallback
import com.google.android.gms.location.LocationRequest
import com.google.android.gms.location.LocationResult
import com.google.android.gms.location.LocationServices
import com.google.android.gms.location.Priority
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

object NearbyPlaces {
    private const val CHANNEL = "uz.myuz/nearby_places"
    private const val PREFERENCES = "nearby_places"
    private const val KEY_ENABLED = "enabled"
    private const val KEY_LAST_LATITUDE = "last_latitude"
    private const val KEY_LAST_LONGITUDE = "last_longitude"
    private const val KEY_TITLE = "notification_title"
    private const val KEY_TEXT = "notification_text"
    private const val BACKGROUND_ENTRYPOINT = "nearbyPlacesBackgroundMain"
    const val DISTANCE_METERS = 500f

    private val pending = mutableListOf<Map<String, Any>>()
    private var inFlight = 0

    private var mainChannel: MethodChannel? = null
    private var mainReady = false

    private var backgroundEngine: FlutterEngine? = null
    private var backgroundChannel: MethodChannel? = null
    private var backgroundReady = false

    fun attachMain(context: Context, messenger: BinaryMessenger) {
        val appContext = context.applicationContext
        mainReady = false
        mainChannel = MethodChannel(messenger, CHANNEL).also { channel ->
            channel.setMethodCallHandler { call, result ->
                if (call.method == "ready") {
                    mainReady = true
                    result.success(null)
                    flush()
                } else {
                    handleCommand(appContext, call, result)
                }
            }
        }
    }

    fun detachMain() {
        mainChannel?.setMethodCallHandler(null)
        mainChannel = null
        mainReady = false
    }

    private fun handleCommand(context: Context, call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "start" -> {
                val title = call.argument<String>("title")
                val text = call.argument<String>("text")
                if (title != null && text != null) {
                    preferences(context).edit()
                        .putString(KEY_TITLE, title)
                        .putString(KEY_TEXT, text)
                        .apply()
                }
                start(context)
                result.success(null)
            }
            "stop" -> {
                stop(context)
                result.success(null)
            }
            "requestAlways" -> result.success(null)
            "markSent" -> {
                val latitude = call.argument<Double>("latitude")
                val longitude = call.argument<Double>("longitude")
                if (latitude != null && longitude != null) saveLastSent(context, latitude, longitude)
                result.success(null)
            }
            else -> result.notImplemented()
        }
    }

    fun start(context: Context) {
        if (!hasBackgroundPermission(context)) return
        preferences(context).edit().putBoolean(KEY_ENABLED, true).apply()
        ContextCompat.startForegroundService(context, Intent(context, NearbyPlacesLocationService::class.java))
    }

    fun stop(context: Context) {
        preferences(context).edit().putBoolean(KEY_ENABLED, false).apply()
        context.stopService(Intent(context, NearbyPlacesLocationService::class.java))
    }

    fun isEnabled(context: Context): Boolean =
        preferences(context).getBoolean(KEY_ENABLED, false)

    fun notificationTitle(context: Context): String =
        preferences(context).getString(KEY_TITLE, null) ?: "MyUzbekistan"

    fun notificationText(context: Context): String =
        preferences(context).getString(KEY_TEXT, null) ?: ""

    fun handleLocation(context: Context, location: Location) {
        if (!movedEnough(context, location)) return
        saveLastSent(context, location.latitude, location.longitude)
        pending.add(
            mapOf(
                "latitude" to location.latitude,
                "longitude" to location.longitude,
                "accuracy" to location.accuracy.toDouble(),
            )
        )
        if (mainChannel == null) startBackgroundEngine(context.applicationContext)
        flush()
    }

    private fun movedEnough(context: Context, location: Location): Boolean {
        val preferences = preferences(context)
        val latitude = preferences.getString(KEY_LAST_LATITUDE, null)?.toDoubleOrNull() ?: return true
        val longitude = preferences.getString(KEY_LAST_LONGITUDE, null)?.toDoubleOrNull() ?: return true
        val result = FloatArray(1)
        Location.distanceBetween(latitude, longitude, location.latitude, location.longitude, result)
        return result[0] >= DISTANCE_METERS
    }

    private fun saveLastSent(context: Context, latitude: Double, longitude: Double) {
        preferences(context).edit()
            .putString(KEY_LAST_LATITUDE, latitude.toString())
            .putString(KEY_LAST_LONGITUDE, longitude.toString())
            .apply()
    }

    private fun flush() {
        val channel = when {
            mainChannel != null && mainReady -> mainChannel
            mainChannel == null && backgroundReady -> backgroundChannel
            else -> null
        } ?: return

        val items = pending.toList()
        pending.clear()
        items.forEach { arguments ->
            inFlight++
            channel.invokeMethod("onLocation", arguments, object : MethodChannel.Result {
                override fun success(result: Any?) = complete()
                override fun error(code: String, message: String?, details: Any?) = complete()
                override fun notImplemented() = complete()
            })
        }
    }

    private fun complete() {
        inFlight--
        if (inFlight <= 0 && pending.isEmpty()) destroyBackgroundEngine()
    }

    private fun startBackgroundEngine(context: Context) {
        if (backgroundEngine != null) return
        val loader = FlutterInjector.instance().flutterLoader()
        loader.startInitialization(context)
        loader.ensureInitializationComplete(context, null)

        val engine = FlutterEngine(context)
        backgroundReady = false
        backgroundChannel = MethodChannel(engine.dartExecutor.binaryMessenger, CHANNEL).also { channel ->
            channel.setMethodCallHandler { call, result ->
                if (call.method == "ready") {
                    backgroundReady = true
                    result.success(null)
                    flush()
                } else {
                    handleCommand(context, call, result)
                }
            }
        }
        backgroundEngine = engine
        engine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint(loader.findAppBundlePath(), BACKGROUND_ENTRYPOINT)
        )
    }

    private fun destroyBackgroundEngine() {
        backgroundChannel?.setMethodCallHandler(null)
        backgroundChannel = null
        backgroundReady = false
        backgroundEngine?.destroy()
        backgroundEngine = null
    }

    fun hasBackgroundPermission(context: Context): Boolean {
        val foreground =
            granted(context, Manifest.permission.ACCESS_COARSE_LOCATION) ||
                granted(context, Manifest.permission.ACCESS_FINE_LOCATION)
        val background = Build.VERSION.SDK_INT < Build.VERSION_CODES.Q ||
            granted(context, Manifest.permission.ACCESS_BACKGROUND_LOCATION)
        return foreground && background
    }

    private fun granted(context: Context, permission: String): Boolean =
        ContextCompat.checkSelfPermission(context, permission) == PackageManager.PERMISSION_GRANTED

    private fun preferences(context: Context) =
        context.getSharedPreferences(PREFERENCES, Context.MODE_PRIVATE)
}

class NearbyPlacesLocationService : Service() {
    private val notificationChannelId = "nearby_places_tracking"
    private val notificationId = 5001

    private val callback = object : LocationCallback() {
        override fun onLocationResult(result: LocationResult) {
            val location = result.lastLocation ?: return
            NearbyPlaces.handleLocation(applicationContext, location)
        }
    }

    override fun onBind(intent: Intent?): IBinder? = null

    @SuppressLint("MissingPermission")
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (!NearbyPlaces.isEnabled(this) || !NearbyPlaces.hasBackgroundPermission(this)) {
            stopSelf()
            return START_NOT_STICKY
        }
        ServiceCompat.startForeground(
            this,
            notificationId,
            buildNotification(),
            ServiceInfo.FOREGROUND_SERVICE_TYPE_LOCATION,
        )
        val request = LocationRequest.Builder(Priority.PRIORITY_HIGH_ACCURACY, 0L)
            .setMinUpdateDistanceMeters(NearbyPlaces.DISTANCE_METERS)
            .setWaitForAccurateLocation(false)
            .build()
        val client = LocationServices.getFusedLocationProviderClient(this)
        client.removeLocationUpdates(callback)
        client.requestLocationUpdates(request, callback, Looper.getMainLooper())
        return START_STICKY
    }

    override fun onDestroy() {
        LocationServices.getFusedLocationProviderClient(this).removeLocationUpdates(callback)
        super.onDestroy()
    }

    private fun buildNotification(): android.app.Notification {
        val title = NearbyPlaces.notificationTitle(this)
        val manager = getSystemService(NotificationManager::class.java)
        manager.createNotificationChannel(
            NotificationChannel(notificationChannelId, title, NotificationManager.IMPORTANCE_LOW)
        )
        val launchIntent = packageManager.getLaunchIntentForPackage(packageName)
        val contentIntent = PendingIntent.getActivity(
            this,
            0,
            launchIntent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )
        return NotificationCompat.Builder(this, notificationChannelId)
            .setSmallIcon(R.mipmap.ic_launcher)
            .setContentTitle(title)
            .setContentText(NearbyPlaces.notificationText(this))
            .setContentIntent(contentIntent)
            .setOngoing(true)
            .setSilent(true)
            .build()
    }
}

class NearbyPlacesBootReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        when (intent.action) {
            Intent.ACTION_BOOT_COMPLETED,
            Intent.ACTION_MY_PACKAGE_REPLACED -> {
                if (NearbyPlaces.isEnabled(context)) NearbyPlaces.start(context)
            }
        }
    }
}
