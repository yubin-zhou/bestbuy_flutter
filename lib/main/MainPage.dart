import 'dart:ffi';

import 'package:bestbuy_flutter/modules/home/HomePage.dart';
import 'package:bestbuy_flutter/modules/make_money/MakeMoneyPage.dart';
import 'package:bestbuy_flutter/modules/mine/page/MinePage.dart';
import 'package:bestbuy_flutter/modules/order/OrderPage.dart';
import 'package:bestbuy_flutter/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  @override
  _MinePage createState() => _MinePage();
}
class _MinePage extends State<MainPage>{
  List<Widget> _pageList;
  final List<String> _appBarTitles = ['首页', '赚钱', '订单', '我的'];
  PageController _pageController;
  int _currentIndex = 0;
  List<BottomNavigationBarItem> _list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();

  }
  void initData() {
    _pageController = new PageController(initialPage: 0);
    _pageList = [
      HomePage(),
      MakeMoneyPage(),
      OrderPage(),
      MinePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:_buildBottomNavigationBarWidget(),
      body: _buildBodyWidget(),
    );
  }
  Widget _buildBodyWidget() {
    return PageView(
      physics: const NeverScrollableScrollPhysics(), // 禁止滑动
      controller: _pageController,
      onPageChanged: (int index){
        if (index != _pageController) {
          setState(() {
            _currentIndex = index;
          });
        }
      },
      children: _pageList,
    );
  }
  Widget _buildBottomNavigationBarWidget() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      currentIndex: _currentIndex,
      fixedColor: Colours.app_text_theme,
      items: _buildBottomNavigationBarItem(),
      onTap: (index) {
        _pageController.jumpToPage(index);
      },
    );
  }
  Widget loadIcon(String imgStr, double width){
    return new Image.asset(imgStr,width: width,height: width,fit: BoxFit.scaleDown);
  }
  final double _tabIconWidth = 21.0;
  List<BottomNavigationBarItem> _buildBottomNavigationBarItem() {
    if (_list == null) {
      var _tabImages = [
        [
          loadIcon("assets/images/home/home_unselected.png", _tabIconWidth,),
          loadIcon("assets/images/home/home_selected.png", _tabIconWidth,),
        ],
        [
          loadIcon("assets/images/home/makemoney_unselected.png", _tabIconWidth,),
          loadIcon("assets/images/home/makemoney_selected.png", _tabIconWidth,),
        ],
        [
          loadIcon("assets/images/home/order_unselected.png", _tabIconWidth,),
          loadIcon("assets/images/home/order_selected.png", _tabIconWidth,),
        ],
        [
          loadIcon("assets/images/home/mine_unselected.png", _tabIconWidth,),
          loadIcon("assets/images/home/mine_selected.png", _tabIconWidth,),
        ]
      ];
      _list = List.generate(_tabImages.length, (i) {
        return BottomNavigationBarItem(
            icon: _tabImages[i][0],
            activeIcon: _tabImages[i][1],
            title: Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(_appBarTitles[i], key: Key(_appBarTitles[i]),),
            )
        );
      });
    }
    return _list;
  }
}