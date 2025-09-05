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

   GMSServices.provideAPIKey("AIzaSyAY4fqJiqLrYu7oHWfbM5m28xZh--XWSC4")
       FirebaseApp.configure()
       UNUserNotificationCenter.current().delegate = self
       application.registerForRemoteNotifications()
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
