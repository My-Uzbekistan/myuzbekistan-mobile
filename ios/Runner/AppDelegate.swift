import Flutter
import UIKit
import GoogleMaps
import FirebaseCore
import FirebaseMessaging
@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

   GMSServices.provideAPIKey("AIzaSyAmD7zWRcB1xu4__tUdhRYWuVrg4JfNAl0")
       FirebaseApp.configure()
       UNUserNotificationCenter.current().delegate = self
       application.registerForRemoteNotifications()
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
