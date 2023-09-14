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
        self.setUpUI(_view)
       }
   
}
extension NativeForiOSView{
    func setUpUI(_ view: UIView){
        var width = UIScreen.main.bounds.size.width
        view.backgroundColor = .orange
        let lab:UILabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: width, height: 60))
        lab.text = "这是一个iOS 原生View:==" + self.text
        lab.textColor = .white
        view.addSubview(lab)
        let btn:UIButton = UIButton.init(frame: CGRect.init(x: 20, y: CGRectGetMaxY(lab.frame)+20, width: width - 40, height: 45))
        btn.addTarget(self, action: #selector(btnClick(_ :)), for: .touchUpInside)
        btn.setTitle("iOS 按钮", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .blue
        view.addSubview(btn)
    }
    @objc func btnClick(_ btn: UIButton){
        let alert: UIAlertController = UIAlertController(title: "温馨提示", message: "我是一个原生的弹窗", preferredStyle: .alert)
        let action1 = UIAlertAction.init(title: "取消", style: .cancel) { a in
            print("iOS取消")
        }
        alert.addAction(action1)
        self.getCurrentVc().present(alert, animated: true)
        
    }
}
extension NativeForiOSView{
    public func getCurrentVc() -> UIViewController{
        let rootVc = UIApplication.shared.keyWindow?.rootViewController
        let currentVc = getCurrentVcFrom(rootVc!)
        return currentVc
       }
    private func getCurrentVcFrom(_ rootVc:UIViewController) -> UIViewController{
     var currentVc:UIViewController
     var rootCtr = rootVc
     if(rootCtr.presentedViewController != nil) {
       rootCtr = rootVc.presentedViewController!
     }
     if rootVc.isKind(of:UITabBarController.classForCoder()) {
       currentVc = getCurrentVcFrom((rootVc as! UITabBarController).selectedViewController!)
     }else if rootVc.isKind(of:UINavigationController.classForCoder()){
       currentVc = getCurrentVcFrom((rootVc as! UINavigationController).visibleViewController!)
     }else{
       currentVc = rootCtr
     }
     return currentVc
    }
}
