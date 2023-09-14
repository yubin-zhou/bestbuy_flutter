//
//  NativeForiOSView.swift
//  Runner
//
//  Created by zhouyubin on 2023/9/13.
//

import UIKit
import Foundation
import Flutter
class NativeForiOSView: NSObject,FlutterPlatformView {
    private var _view: UIView = UIView()
    let frame:CGRect
    let viewId: Int64
    var text: String = ""
    
    init(_ frame:CGRect,viewId:Int64,args:Any?,binaryMessenger messenger: FlutterBinaryMessenger?) {
        self.frame = frame
        self.viewId = viewId
        super.init()
        if(args is NSDictionary){
            let dict = args as! NSDictionary
            self.text = dict.value(forKey: "text") as! String
            
        }
        createNativeView(view: _view)
    }
    
    func view() -> UIView {
        return _view
    }
    func createNativeView(view _view: UIView){
        _view.backgroundColor = .orange
        let lab:UILabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 60))
        lab.text = "这是一个iOS 原生View:==" + self.text
        lab.textColor = .white
        _view.addSubview(lab)
       }
    
    

}
