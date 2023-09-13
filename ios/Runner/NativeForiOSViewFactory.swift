//
//  NativeForiOSViewFactory.swift
//  Runner
//
//  Created by zhouyubin on 2023/9/13.
//

import UIKit
import Flutter
class NativeForiOSViewFactory: NSObject,FlutterPlatformViewFactory {
    
    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return NativeForiOSView(frame, viewId: viewId, args: args)
    }
    func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterStandardMessageCodec.sharedInstance()
    }
    

}
