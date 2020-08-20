import 'package:bestbuy_flutter/modules/home/models/GoodsItemModel.dart';
import 'package:bestbuy_flutter/modules/home/widgets/GoodsItemWidget.dart';
import 'package:bestbuy_flutter/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bestbuy_flutter/utils/screen_utils.dart';
import 'package:bestbuy_flutter/utils/test_utils.dart';
class MinePageList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MinePageList();
  }
}
class _MinePageList extends State<MinePageList>{
   @override
  Widget build(BuildContext context) {
     double itemW = (Screen.size(context).width - 30)/2;
     double itemH = itemW + 150;
     double ratio = itemW / itemH;
     List list = TestUtils.getDataList();
    return SliverPadding(
      padding: EdgeInsets.all(10),//边距
      sliver: SliverGrid( //Grid
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //Grid按两列显示
          mainAxisSpacing: 10.0,//主轴间距
          crossAxisSpacing: 10.0,//纵轴间距
          childAspectRatio: ratio,
        ),
        delegate: new SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            GoodsItemModel model = list[index];
//创建子widget
            return new Container(
              child:ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child:GoodsItemWidget(model: model,itemSize: Size(itemW,itemH)),
              ),

            );
          },
          childCount: list.length,
        ),
      ),
    );

  }
}
