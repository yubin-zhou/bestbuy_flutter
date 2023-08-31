import 'package:bestbuy_flutter/modules/mine/models/MineItemModel.dart';
import 'package:bestbuy_flutter/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bestbuy_flutter/utils/screen_utils.dart';
import 'package:bestbuy_flutter/extension/StringExtension.dart';
import 'package:flutter/rendering.dart';

//我的页面头部view
class MinePageHeader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MinePageHeader();
  }
}

class _MinePageHeader extends State<MinePageHeader> with AutomaticKeepAliveClientMixin{
  double _h = 0;
  double _imageSize = 55;
  List<MineItemModel> _items(){
    List<MineItemModel> lists = [
      MineItemModel("mine_list_order","我的订单",0),
      MineItemModel("mine_list_adress","收货地址",0),
      MineItemModel("mine_list_tutorial","新手教程",0),
      MineItemModel("mine_list_customer_service","联系客服",0),
      MineItemModel("mine_list_share","分享下载",0),
      MineItemModel("mine_list_feedback","建议反馈",0),
    ];
    return lists;
  }
  @override
  Widget build(BuildContext context) {
    _h = 20 + 55 * Screen.width(context) / 375.0 + 46 + 100;
    _imageSize = 55 * Screen.width(context) / 375.0;
    print("MinePageHeader===build");
    return SliverList(
      delegate:
      new SliverChildBuilderDelegate((BuildContext context, int index) {
        //创建列表项
        if (index == 0) {
          return _headerView(context);
        } else {
          return new Container(
            height: 50,
            color: Colors.white,
            child: _createItemWidget(index - 1),
          );
        }
      }, childCount: _items().length + 1
      ),
    );
  }
 // ItemWidget
  Widget _createItemWidget(int index) {
    MineItemModel model = _items()[index];
    String name = model.title;
    String icon = model.icon;
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Color(0xFFF4F4F4))),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Image.asset("assets/images/mine/$icon.png",width: 20,height: 20,fit: BoxFit.scaleDown,),
                SizedBox(width: 8,),
                Text("$name",textAlign: TextAlign.left,style: TextStyle(fontSize: 14,color: Color(0xFF2E2A20)),),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Image.asset("assets/images/mine/item_arrow.png",width: 10,height: 10,fit: BoxFit.scaleDown,),
          ),
        ],
      ),
    );
  }


  Widget _headerView(BuildContext context) {
    return Container(
      width: Screen.width(context),
      height: _h,
      child: _headerViewContent(),
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: AssetImage("assets/images/mine/mine_header_bg.png"),
            fit: BoxFit.fill),
      ),
    );
  }

  Widget _headerViewContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _userInfoWidget(context),
        _userAccountInfoWidget(context),
        _userFansWidget(context),
      ],
    );
  }

  Widget _userInfoWidget(BuildContext context) {
    Size size = "普通会员".getTextSizeWithTextStyle(TextStyle(fontSize: 12));
    double _viptagWidth = 14 + 10 + size.width;
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10, right: 20),
      height: _imageSize + 20,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: _imageSize,
                    height: _imageSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_imageSize / 2.0),
                    ),
                    child: Image.asset(
                      "assets/images/mine/mine_avatar_icon.png",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.center,
                    child: Text(
                      "风一样的男子",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 26,
            width: _viptagWidth + 14,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Color(0XFF403F44),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/mine/mine_menber_vip.png",
                  width: 14,
                  height: 12,
                  fit: BoxFit.scaleDown,
                ),
                Text(
                  "普通会员",
                  style: TextStyle(fontSize: 12, color: Color(0xFFEACB8D)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _userAccountInfoWidget(BuildContext context) {
    final TextStyle moneyTextStyle = TextStyle(
        fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white);
    final TextStyle titleTextStyle =
    TextStyle(fontSize: 14, color: Color(0xFFE9E9E9));
    return Container(
      height: 100,
      width: double.infinity,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "888.00",
                  textAlign: TextAlign.center,
                  style: moneyTextStyle,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "购物卡额度 (元)",
                  textAlign: TextAlign.center,
                  style: titleTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "666.00",
                  textAlign: TextAlign.center,
                  style: moneyTextStyle,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "账户额度 (元)",
                  textAlign: TextAlign.center,
                  style: titleTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _userFansWidget(BuildContext context) {
    return Container(
      height: 46,
      width: double.infinity,
      decoration: BoxDecoration(
        image: new DecorationImage(
            image: AssetImage("assets/images/mine/mine_header_bottom_bg.png"),
            fit: BoxFit.fill),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: <Widget>[
            _createLeftWidget(),
            Expanded(
              flex: 1,
              child: _createRightWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createLeftWidget() {
    return Container(
      margin: EdgeInsets.only(left: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "assets/images/mine/mine_member_icon.png",
            width: 30,
            height: 20,
            fit: BoxFit.scaleDown,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "普通会员",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 14, color: Color(0xFF2E2A20)),
          ),
        ],
      ),
    );
  }

  Widget _createRightWidget() {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            "开通广员，赚取更多收益",
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 14, color: Color(0xFFA1865E)),
          ),
          SizedBox(
            width: 8,
          ),
          Image.asset(
            "assets/images/mine/mine_member_arror.png",
            width: 6,
            height: 10,
            fit: BoxFit.scaleDown,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
