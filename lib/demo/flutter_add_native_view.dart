import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/**
 * flutter_add_native_view
 * 烯牛数据
 * Create by zhouyubin on 2023/09/12
 * Copyright (c) 2023 zhouyubin. All rights reserved.
 * @Description :TODO
 */

class flutter_add_native_view extends StatefulWidget {
  const flutter_add_native_view({Key key}) : super(key: key);

  @override
  _flutter_add_native_viewState createState() =>
      _flutter_add_native_viewState();
}

class _flutter_add_native_viewState extends State<flutter_add_native_view> {

   MethodChannel _channel = MethodChannel("native_for_ios_view_label");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter 加载 原生页面"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _flutterView(),
          _nativeView(),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () async{
              var result = await _channel.invokeMethod("setText",{"name":"张三","age":"18"});
              print("给原生传参数");
              print("返回值："+ result);
            },
            child: Container(
              width: double.infinity,
              height: 40,
              child: Center(
                child: Text("给原生传参数"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _flutterView() {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.teal,
      child: Text(
        "这是Flutter View",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  Widget _nativeView() {
    if (Platform.isIOS) {
      return Container(
        height: 200,
        width: double.infinity,
        child: UiKitView(
            viewType: "native_for_ios_view_label",
            creationParams: {"text": "我是来自Flutter 页面的参数"},
            onPlatformViewCreated: (viewId){
              print("Fluutet viewId:$viewId");

            },
            creationParamsCodec: const StandardMessageCodec()),
      );
    } else if (Platform.isAndroid) {
      return Container(
        height: 200,
        width: double.infinity,
        child: AndroidView(
          viewType: "native_for_ios_view_label",
          creationParams: {"text": "我是来自Flutter 页面的参数"},
          onPlatformViewCreated: (viewId){
            print("Fluutet viewId:$viewId");


          },
          creationParamsCodec: const StandardMessageCodec(),
        ),
      );
    } else {
      return Text("Not supported");
    }
  }
}
