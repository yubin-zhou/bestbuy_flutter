import 'dart:developer';

import 'package:bestbuy_flutter/modules/home/widgets/HomePageSearchView.dart';
import 'package:bestbuy_flutter/modules/search/SearchResultPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          child: HomePageSearchView(),
          onTap: clickSearchView,
        ),
      ),
      body: Center(
        child: Text("首页"),
      ),
    );
  }

  // 点击搜索框跳转
  void clickSearchView() {
    print("点击搜索了");
    log("asdasdasdasdasd");
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => new SearchResultPage()));
  }
}
