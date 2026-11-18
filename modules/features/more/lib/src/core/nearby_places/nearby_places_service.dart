import 'dart:async';
import 'dart:io';

import 'package:domain/domain.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:more/src/generated/locales/app_localizations.dart';
import 'package:shared/shared.dart';

@lazySingleton
class NearbyPlacesService {
  final DevicesRepository _devicesRepository;
  final Repository _repository;
  final SecurityStorage _securityStorage;
  final AppPreference _appPreference;

  NearbyPlacesService(
    this._devicesRepository,
    this._repository,
    this._securityStorage,
    this._appPreference,
  );

  final _channel = const MethodChannel('uz.myuz/nearby_places');

  late final ValueNotifier<bool> enabledListenable = ValueNotifier(isEnabled);

  AppLifecycleListener? _lifecycleListener;
  StreamSubscription<String>? _firebaseTokenSubscription;
  StreamSubscription<Position>? _foregroundSubscription;
  double? _lastSentLatitude;
  double? _lastSentLongitude;
  bool _waitingForSettings = false;
  bool _askedThisLaunch = false;

  bool get isEnabled => _securityStorage.isNearbyPlacesEnabled();

  bool get _isLoggedIn => _securityStorage.getAccessToken().orEmpty().isNotEmpty;

  bool get canSkipDisclosure => !Platform.isIOS;

  Future<bool> shouldAskOnLaunch() async {
    if (_askedThisLaunch) return false;
    _askedThisLaunch = true;
    if (!_isLoggedIn || isEnabled) return false;
    if (!Platform.isIOS) return true;
    try {
      return await _channel.invokeMethod<bool>('canRequestAlways') ?? false;
    } catch (_) {
      return false;
    }
  }

  Future<void> init() async {
    await _listenNativeLocations();
    _lifecycleListener ??= AppLifecycleListener(
      onResume: _onAppResumed,
      onPause: _stopForegroundTracking,
    );
    _firebaseTokenSubscription ??= FirebaseMessaging.instance.onTokenRefresh
        .listen(_onFirebaseTokenRefreshed);
    await _onAppOpened();
    await _startForegroundTracking();
  }

  Future<void> _startForegroundTracking() async {
    if (_foregroundSubscription != null || !_isLoggedIn) return;
    if (!await LocationManager().hasLocationPermission()) return;
    _foregroundSubscription = LocationManager()
        .getPositionStream(distanceFilter: 500)
        .listen(
          (position) => _send(
            position.latitude,
            position.longitude,
            position.accuracy,
          ),
          onError: (_) => _stopForegroundTracking(),
        );
  }

  void _stopForegroundTracking() {
    _foregroundSubscription?.cancel();
    _foregroundSubscription = null;
  }

  Future<void> initBackground() async {
    await _listenNativeLocations();
  }

  Future<bool> enable() async {
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.whileInUse) {
      await _requestAlways();
      permission = await Geolocator.checkPermission();
    }
    if (permission != LocationPermission.always) {
      _waitingForSettings = true;
      return false;
    }

    await _turnOn();
    return true;
  }

  Future<void> disable() async {
    _waitingForSettings = false;
    await _securityStorage.changeNearbyPlacesState(false);
    enabledListenable.value = false;
    await _invoke('stop');
  }

  Future<void> _turnOn() async {
    _waitingForSettings = false;
    await _securityStorage.changeNearbyPlacesState(true);
    enabledListenable.value = true;
    await _start();
    await _sendCurrentPosition();
    await _startForegroundTracking();
  }

  Future<void> _requestAlways() async {
    if (Platform.isAndroid) {
      await Permission.locationAlways.request();
      return;
    }
    await _invoke('requestAlways');
  }

  Future<void> _onAppOpened() async {
    if (!_isLoggedIn) {
      await _invoke('stop');
      return;
    }
    await _registerFirebaseToken();
    await _syncBackgroundMonitoring();
    await _sendCurrentPosition();
  }

  Future<void> _onAppResumed() async {
    if (!_isLoggedIn) return;
    if (_waitingForSettings && await LocationManager().hasAlwaysPermission()) {
      await _turnOn();
      return;
    }
    _waitingForSettings = false;
    await _syncBackgroundMonitoring();

    final position = await LocationManager().getPositionSilently();
    if (position != null) {
      await _send(position.latitude, position.longitude, position.accuracy);
    }
    await _startForegroundTracking();
  }

  Future<void> _syncBackgroundMonitoring() async {
    if (isEnabled && await LocationManager().hasAlwaysPermission()) {
      await _start();
      return;
    }
    if (isEnabled) {
      await _securityStorage.changeNearbyPlacesState(false);
      enabledListenable.value = false;
    }
    await _invoke('stop');
  }

  Future<void> _sendCurrentPosition() async {
    final position = await LocationManager().getPositionSilently();
    if (position == null) return;
    await _send(position.latitude, position.longitude, position.accuracy);
  }

  Future<void> _listenNativeLocations() async {
    _channel.setMethodCallHandler((call) async {
      if (call.method != 'onLocation') return null;
      final arguments = Map<String, dynamic>.from(call.arguments as Map);
      final latitude = (arguments['latitude'] as num).toDouble();
      final longitude = (arguments['longitude'] as num).toDouble();
      final accuracy = (arguments['accuracy'] as num?)?.toDouble();
      if (!_isLoggedIn || !isEnabled) return null;
      await _send(latitude, longitude, accuracy);
      return null;
    });
    await _invoke('ready');
  }

  Future<void> _send(double latitude, double longitude, double? accuracy) async {
    if (!_isLoggedIn) return;
    if (latitude == 0 && longitude == 0) return;

    final previousLatitude = _lastSentLatitude;
    final previousLongitude = _lastSentLongitude;
    if (previousLatitude != null && previousLongitude != null) {
      final movedMeters = Geolocator.distanceBetween(
        previousLatitude,
        previousLongitude,
        latitude,
        longitude,
      );
      if (movedMeters < 500) return;
    }
    _lastSentLatitude = latitude;
    _lastSentLongitude = longitude;

    try {
      final firebaseToken = await FirebaseMessaging.instance.getToken();
      if (firebaseToken == null) return;
      await _devicesRepository.sendLocation(
        firebaseToken: firebaseToken,
        latitude: latitude,
        longitude: longitude,
        accuracy: accuracy,
      );
      if (Platform.isAndroid) {
        await _channel.invokeMethod('markSent', {
          'latitude': latitude,
          'longitude': longitude,
        });
      }
    } catch (_) {
      _lastSentLatitude = previousLatitude;
      _lastSentLongitude = previousLongitude;
    }
  }

  Future<void> _onFirebaseTokenRefreshed(String firebaseToken) async {
    if (!_isLoggedIn) return;
    try {
      await _repository.setFirebaseToken(token: firebaseToken);
    } catch (_) {}
  }

  Future<void> _registerFirebaseToken() async {
    try {
      final firebaseToken = await FirebaseMessaging.instance.getToken();
      if (firebaseToken == null) return;
      await _repository.setFirebaseToken(token: firebaseToken);
    } catch (_) {}
  }

  Future<void> _start() async {
    final locale = _appPreference.getLocale() ?? AppLocale.uz;
    final localization = lookupFeatureMoreLocalizations(Locale(locale.name));
    try {
      await _channel.invokeMethod('start', {
        'title': localization.nearbyPlacesTrackingTitle,
        'text': localization.nearbyPlacesTrackingText,
      });
    } catch (_) {}
  }

  Future<void> _invoke(String method) async {
    try {
      await _channel.invokeMethod(method);
    } catch (_) {}
  }
}
