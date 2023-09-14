//
//  NativeForiOSViewPlugin.swift
//  Runner
//
//  Created by zhouyubin on 2023/9/14.
//

import UIKit

class NativeForiOSViewPlugin: NSObject,FlutterPlugin {
    static func register(with registrar: FlutterPluginRegistrar) {
        let factory = NativeForiOSViewFactory(messenger: registrar.messenger())
        registrar.register(factory, withId: "native_for_ios_view_label")
    }

}
