import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YBAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double contentHeight; //从外部指定高度
  Color navigationBarBackgroundColor; //设置导航栏背景的颜色
  String navigationBarBackgroundImage; //设置导航栏背景图片
  Widget leadingWidget;
  Widget trailingWidget;
  Text title;

  YBAppBar({
    @required this.leadingWidget,
    @required this.title,
    this.contentHeight = 44,
    this.navigationBarBackgroundColor = Colors.white,
    this.navigationBarBackgroundImage = "",
    this.trailingWidget,
  }) : super();

  @override
  _YBAppBar createState() => _YBAppBar();

  @override
  Size get preferredSize => new Size.fromHeight(contentHeight);
}

/// 这里没有直接用SafeArea，而是用Container包装了一层
/// 因为直接用SafeArea，会把顶部的statusBar区域留出空白
/// 外层Container会填充SafeArea，指定外层Container背景色也会覆盖原来SafeArea的颜色
///     var statusheight = MediaQuery.of(context).padding.top;  获取状态栏高度

class _YBAppBar extends State<YBAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: widget.navigationBarBackgroundImage == ""
          ? widget.navigationBarBackgroundColor
          : null,
      child: _navContentWidget(),
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: widget.navigationBarBackgroundImage == ""
                ? null
                : AssetImage(widget.navigationBarBackgroundImage),
            fit: BoxFit.fill),
      ),
    );
  }
  Widget _navContentWidget() {
    return new SafeArea(
      top: true,
      child: new Container(
          height: widget.contentHeight,
          child: new Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                left: 0,
                child: new Container(
                  padding: const EdgeInsets.only(left: 5),
                  child: widget.leadingWidget,
                ),
              ),
              new Container(
                child: widget.title,
              ),
              Positioned(
                right: 0,
                child: new Container(
                  padding: const EdgeInsets.only(right: 5),
                  child: widget.trailingWidget,
                ),
              ),
            ],
          )),
    );
  }

}
