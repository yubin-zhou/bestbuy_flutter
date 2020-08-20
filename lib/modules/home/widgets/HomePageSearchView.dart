import 'package:bestbuy_flutter/res/colors.dart';
import 'package:flutter/material.dart';

/// 首页顶部搜搜框样式
class HomePageSearchView extends StatefulWidget {
  @override
  _HomePageSearchView createState() => _HomePageSearchView();
}

class _HomePageSearchView extends State<HomePageSearchView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(18.0)),
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15, right: 5),
            child: loadIcon("assets/images/home/home_search_img.png", 15),
          ),
          Expanded(
              child: Text(
            "粘贴商品名称/关键词/链接搜索",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 14, color: Colours.app_text_CCC),
          )),
        ],
      ),
    );
  }

  Widget loadIcon(String imgStr, double width) {
    return new Image.asset(imgStr,
        width: width, height: width, fit: BoxFit.scaleDown);
  }
}
