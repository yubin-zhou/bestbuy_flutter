import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      GeneratedPluginRegistrant.register(with: self)
      let registrar:FlutterPluginRegistrar = self.registrar(forPlugin: "platform_for_ios_view_plugin")!
      let factory = NativeForiOSViewFactory(messenger: registrar.messenger())
      registrar.register(factory, withId: "native_for_ios_view_label")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
