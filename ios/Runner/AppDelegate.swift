import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
        let channel = FlutterMethodChannel(name: "com.ngonzano.catbreeds/channel", binaryMessenger: controller.binaryMessenger)
       
        channel.setMethodCallHandler { (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            if call.method == "getPlatformVersion" {
                let deviceInfo: [String: Any] = [
                    "deviceName": UIDevice.current.name,
                    "osVersion": UIDevice.current.systemVersion
                ]
                result(deviceInfo)
            } else {
                result(FlutterMethodNotImplemented)
            }
        }
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}