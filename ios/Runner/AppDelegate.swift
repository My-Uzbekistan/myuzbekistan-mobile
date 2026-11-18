import Flutter
import UIKit
import CoreLocation
import GoogleMaps
import FirebaseCore
import FirebaseMessaging
@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

   GMSServices.provideAPIKey("AIzaSyAmD7zWRcB1xu4__tUdhRYWuVrg4JfNAl0")
       FirebaseApp.configure()
       UNUserNotificationCenter.current().delegate = self
       application.registerForRemoteNotifications()
       NearbyPlacesLocation.shared.resumeIfEnabled()
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func didInitializeImplicitFlutterEngine(_ engineBridge: any FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)
    if let registrar = engineBridge.pluginRegistry.registrar(forPlugin: "NearbyPlacesLocation") {
      NearbyPlacesLocation.shared.attach(messenger: registrar.messenger())
    }
  }
}

final class NearbyPlacesLocation: NSObject, CLLocationManagerDelegate {
  static let shared = NearbyPlacesLocation()

  private let enabledKey = "nearby_places_enabled"
  private let alwaysRequestedKey = "nearby_places_always_requested"
  private let manager = CLLocationManager()
  private var channel: FlutterMethodChannel?
  private var ready = false
  private var pending: [[String: Any]] = []
  private var inFlight = 0
  private var backgroundTask: UIBackgroundTaskIdentifier = .invalid
  private var authorizationResult: FlutterResult?
  private var promptShown = false
  private var alwaysRequestStarted = false

  private override init() {
    super.init()
    manager.delegate = self
    manager.pausesLocationUpdatesAutomatically = false
  }

  func resumeIfEnabled() {
    guard UserDefaults.standard.bool(forKey: enabledKey) else { return }
    manager.startMonitoringSignificantLocationChanges()
  }

  func attach(messenger: FlutterBinaryMessenger) {
    ready = false
    let channel = FlutterMethodChannel(name: "uz.myuz/nearby_places", binaryMessenger: messenger)
    channel.setMethodCallHandler { [weak self] call, result in
      self?.handle(call, result: result)
    }
    self.channel = channel
  }

  private func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "ready":
      ready = true
      result(nil)
      flush()
    case "start":
      if manager.authorizationStatus == .authorizedAlways {
        UserDefaults.standard.set(true, forKey: enabledKey)
        manager.startMonitoringSignificantLocationChanges()
      }
      result(nil)
    case "stop":
      UserDefaults.standard.set(false, forKey: enabledKey)
      manager.stopMonitoringSignificantLocationChanges()
      result(nil)
    case "requestAlways":
      requestAlways(result: result)
    case "canRequestAlways":
      result(canRequestAlways())
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  private func canRequestAlways() -> Bool {
    switch manager.authorizationStatus {
    case .notDetermined:
      return true
    case .authorizedWhenInUse:
      return !UserDefaults.standard.bool(forKey: alwaysRequestedKey)
    default:
      return false
    }
  }

  private func requestAlways(result: @escaping FlutterResult) {
    guard manager.authorizationStatus == .authorizedWhenInUse, authorizationResult == nil else {
      result(false)
      return
    }
    authorizationResult = result
    promptShown = false
    alwaysRequestStarted = false
    let center = NotificationCenter.default
    center.addObserver(self, selector: #selector(onWillResignActive), name: UIApplication.willResignActiveNotification, object: nil)
    center.addObserver(self, selector: #selector(onDidBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
    if UIApplication.shared.applicationState == .active {
      startAlwaysRequest()
    }
  }

  private func startAlwaysRequest() {
    guard authorizationResult != nil, !alwaysRequestStarted else { return }
    alwaysRequestStarted = true
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
      guard let self, self.authorizationResult != nil else { return }
      self.manager.requestAlwaysAuthorization()
      DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
        guard let self, !self.promptShown else { return }
        self.finishAuthorizationRequest()
      }
    }
  }

  @objc private func onWillResignActive() {
    guard alwaysRequestStarted else { return }
    promptShown = true
    UserDefaults.standard.set(true, forKey: alwaysRequestedKey)
  }

  @objc private func onDidBecomeActive() {
    if !alwaysRequestStarted {
      startAlwaysRequest()
      return
    }
    guard promptShown else { return }
    finishAuthorizationRequest()
  }

  private func finishAuthorizationRequest() {
    guard let result = authorizationResult else { return }
    NotificationCenter.default.removeObserver(self, name: UIApplication.willResignActiveNotification, object: nil)
    NotificationCenter.default.removeObserver(self, name: UIApplication.didBecomeActiveNotification, object: nil)
    authorizationResult = nil
    result(promptShown)
  }

  func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
    if manager.authorizationStatus == .authorizedAlways, authorizationResult != nil {
      finishAuthorizationRequest()
    }
  }

  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    guard let location = locations.last else { return }
    beginBackgroundTask()
    pending.append([
      "latitude": location.coordinate.latitude,
      "longitude": location.coordinate.longitude,
      "accuracy": location.horizontalAccuracy,
    ])
    flush()
  }

  func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {}

  private func flush() {
    guard ready, let channel else { return }
    let items = pending
    pending.removeAll()
    for arguments in items {
      inFlight += 1
      channel.invokeMethod("onLocation", arguments: arguments) { [weak self] _ in
        guard let self else { return }
        self.inFlight -= 1
        if self.inFlight <= 0 && self.pending.isEmpty {
          self.endBackgroundTask()
        }
      }
    }
  }

  private func beginBackgroundTask() {
    guard backgroundTask == .invalid else { return }
    backgroundTask = UIApplication.shared.beginBackgroundTask(withName: "NearbyPlacesLocation") { [weak self] in
      self?.endBackgroundTask()
    }
  }

  private func endBackgroundTask() {
    guard backgroundTask != .invalid else { return }
    UIApplication.shared.endBackgroundTask(backgroundTask)
    backgroundTask = .invalid
  }
}
