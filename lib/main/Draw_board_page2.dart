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

  final List<Path> _paths = [];
  Path _current;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("画线"),
      ),
      body: GestureDetector(
        onPanDown: (detail){
          setState(() {
            _current = Path();
            _paths..add(_current);
            if(_current!=null){
              _current.moveTo(detail.localPosition.dx, detail.localPosition.dy);
            }
          });
        },
        onPanUpdate: (detail){
          setState(() {
            if(_current!=null){
              _current.lineTo(detail.localPosition.dx, detail.localPosition.dy);
            }
          });
        },
        onPanEnd: (detail){
          _current = null;
        },
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: CustomPaint(
            painter: SketchPainter(_paths),
          ),
        ),
      ),
    );

  }
}
class SketchPainter extends CustomPainter{


  final List<Path> paths;
  SketchPainter(this.paths);
  static final pen = Paint()
  ..color = Colors.red
  ..style = PaintingStyle.stroke
  ..strokeWidth = 2.0;

  @override
  void paint(Canvas canvas, Size size) {
    if(paths.isEmpty){
      return;
    }
    for(int i = 0; i < paths.length - 1; i++){
      if(paths[i]!=null && paths[i+1]!=null){
        canvas.drawPath(paths[i], pen);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}

 