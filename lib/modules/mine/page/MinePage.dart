import 'package:bestbuy_flutter/main/TestPage.dart';
import 'package:bestbuy_flutter/main/widgets/YBAppBar.dart';
import 'package:bestbuy_flutter/modules/mine/page/MinePageHeader.dart';
import 'package:bestbuy_flutter/modules/mine/page/MinePageList.dart';
import 'package:bestbuy_flutter/res/colors.dart';
import 'package:bestbuy_flutter/utils/toast_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:oktoast/oktoast.dart';


class MinePage extends StatefulWidget {
  @override
  _MinePage createState() => _MinePage();
}

class _MinePage extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light, // 设置状态栏颜色
      child: Scaffold(
        backgroundColor: Colours.app_main_bg,
        appBar: YBAppBar(
          title: Text(
            "我的",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          navigationBarBackgroundColor: Colours.app_text_theme,
          navigationBarBackgroundImage:
              "assets/images/mine/mine_nav_bg_img.png",
          trailingWidget: _setBtnWidget(),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            MinePageHeader(), //头部
            pageListTitleHead(),
            MinePageList(), //列表


          ],
        ),
      ),
    );
  }
  // 列表的头部
  Widget pageListTitleHead() {
    return SliverFixedExtentList(
      itemExtent: 40,
      delegate:
          new SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          color: Colours.app_main_bg,
          padding: EdgeInsets.only(left: 10, right: 10),
          alignment: Alignment.bottomLeft,
          child: Text(
            "猜你喜欢",
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFF2E2A20),
                fontWeight: FontWeight.w500),
          ),
        );
      }, childCount: 1),
    );
  }

  Widget _setBtnWidget() {
    return IconButton(
      color: Colors.red,
      icon: Image.asset(
        "assets/images/mine/mine_set_icon.png",
        width: 18,
        height: 18,
        fit: BoxFit.scaleDown,
      ),
      onPressed: setIconBtn,
    );
  }

  void setIconBtn() {
    print("几岁");
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => TestPage()));
  }
}
