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
    let frame:CGRect
    let viewId: Int64
    var text: String = ""
    
    init(_ frame:CGRect,viewId:Int64,args:Any?) {
        self.frame = frame
        self.viewId = viewId
        if(args is NSDictionary){
            let dict = args as! NSDictionary
            self.text = dict.value(forKey: "text") as! String
            
        }
    }
    func view() -> UIView {
        let view:UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.backgroundColor = .orange
        let lab:UILabel = UILabel.init(frame: CGRect(x: 10, y: 10, width: 180, height: 30))
        lab.text = "这是一个iOS 原生View:==" + self.text
        lab.textColor = .white
        lab.font = UIFont.systemFont(ofSize: 18)
        view.addSubview(lab)
        return view
    }
    
    

}
