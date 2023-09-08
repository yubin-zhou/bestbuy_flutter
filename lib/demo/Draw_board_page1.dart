import 'package:flutter/material.dart';

/**
 * Draw_board_page1
 * 烯牛数据
 * Create by zhouyubin on 2023/08/31
 * Copyright (c) 2023 zhouyubin. All rights reserved.
 * @Description :TODO
 */

class Draw_board_page1 extends StatefulWidget {

  const Draw_board_page1({Key key}) : super(key: key);

  @override
  _Draw_board_page1State createState() => _Draw_board_page1State();
}

class _Draw_board_page1State extends State<Draw_board_page1> {

  final List<Offset> _points = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("画线"),
      ),
      body: GestureDetector(
        onPanUpdate: (detail){
          _points.add(detail.localPosition);
          setState(() {

          });
        },
        onPanEnd: (detail){
          _points.add(null);
          setState(() {

          });
        },
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: CustomPaint(
            painter: SketchPainter(_points),
          ),
        ),
      ),
    );

  }
}
class SketchPainter extends CustomPainter{


  final List<Offset> points;
  SketchPainter(this.points);
  static final pen = Paint()
  ..color = Colors.red
  ..strokeWidth = 2.0;

  @override
  void paint(Canvas canvas, Size size) {
    if(points.isEmpty){
      return;
    }
    for(int i = 0; i < points.length - 1; i++){
      if(points[i]!=null && points[i+1]!=null){
        canvas.drawLine(points[i], points[i+1],pen);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}

 