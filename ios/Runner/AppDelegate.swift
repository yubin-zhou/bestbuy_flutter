import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
//      GeneratedPluginRegistrant.register(withRegistry: self)
      GeneratedPluginRegistrant.register(with: self)
      let factory = NativeForiOSViewFactory()
      let registrar = self.registrar(forPlugin: "platform_for_ios_view_plugin")
      registrar?.register(factory, withId: "native_for_ios_view_label")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
