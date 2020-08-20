import 'package:bestbuy_flutter/main/MainPage.dart';
import 'package:bestbuy_flutter/res/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '拉手购',
//      //显示性能标签
//      showPerformanceOverlay: true,
//      // 去除右上角debug的标签
     // debugShowCheckedModeBanner: false,
//      checkerboardRasterCacheImages: true,
      //      // 显示语义视图
      //showSemanticsDebugger: true,
//      // 检查离屏渲染
//      checkerboardOffscreenLayers: true,
      theme: ThemeData(primaryColor: Colours.app_theme),
      home: MainPage(),
    );
  }
}
