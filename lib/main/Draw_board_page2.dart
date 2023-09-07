import 'dart:math';

import 'package:flutter/material.dart';

/**
 * Draw_board_page1
 * 烯牛数据
 * Create by zhouyubin on 2023/08/31
 * Copyright (c) 2023 zhouyubin. All rights reserved.
 * @Description :TODO
 */

class Draw_board_page2 extends StatefulWidget {

  const Draw_board_page2({Key key}) : super(key: key);

  @override
  _Draw_board_page2State createState() => _Draw_board_page2State();
}

class _Draw_board_page2State extends State<Draw_board_page2> {
  String text = "12";
  List<String> list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = ["我","知道","哈","随机","整数","你","，","。","方法","好"];
    final stream = Stream.periodic(Duration(milliseconds: 200),(_)=>list[Random().nextInt(10)]);
    stream.listen((event) {
      text = text + event;
      if(mounted){
        setState(() {

        });
      }

    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("画线"),
      ),
      body: Text(text),
    );

  }
}


 