import 'package:bestbuy_flutter/modules/home/models/GoodsItemModel.dart';
import 'package:bestbuy_flutter/res/colors.dart';
import 'package:extended_text/extended_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoodsItemWidget extends StatefulWidget {
  const GoodsItemWidget({Key key, this.model, this.itemSize}) : super(key: key);
  final GoodsItemModel model;
  final Size itemSize;

  @override
  State<StatefulWidget> createState() {
    return _GoodsItemWidget();
  }
}

class _GoodsItemWidget extends State<GoodsItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _goodsImg(), // 图片
          _goodsRichTitle(), // 标题
          _offerDetailsWidget(), // 优惠内容
          _lashougouPrice(), // 拉收购价钱
          _returnMoneyAndSalesVolume(), // 返现和单量
        ],
      ),
    );
  }

  /// 商品图片显示
  Widget _goodsImg() {
    return Container(
      color: Colours.image_bg,
      child: Image.network(
        widget.model.goodsImageUrl,
        width: widget.itemSize.width,
        height: widget.itemSize.width,
        fit: BoxFit.fill,
      ),
    );
  }

  /// 商品标题富文本显示
  Widget _goodsRichTitle() {
    /// icon
    InlineSpan iconRich() {
      String imageStr = widget.model.channel == 1
          ? "assets/images/goods/goods_detail_pdd_icon.png"
          : "assets/images/goods/goods_detail_jd_icon.png";
      ImageSpan imageSpan = ImageSpan(
        AssetImage(imageStr),
        imageWidth: 14,
        imageHeight: 14,
        margin: EdgeInsets.only(right: 5.0, bottom: 2.0),
      );
      return imageSpan;
    }

    /// goodsName
    InlineSpan goodsTitle() {
      return TextSpan(text: widget.model.goodsName);
    }

    return Container(
      margin: EdgeInsets.only(top: 10,left: 8,right: 8),
      child: RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
            text: null,
            style: TextStyle(
                color: Colours.app_text_theme,
                fontSize: 14,
                fontWeight: FontWeight.w400),
            children: <InlineSpan>[
              iconRich(),
              goodsTitle(),
            ]),
      ),
    );
  }

  /// 优惠内容显示
  Widget _offerDetailsWidget() {
    /// 原价显示
    Widget offerPriceContainer = Container(
      padding: EdgeInsets.only(right: 8),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Text(
            "原价¥46",
            style: TextStyle(
                color: Colours.app_text_CCC,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: 0.8,
              color: Colours.app_text_CCC,
            ),
          ),
        ],
      ),
    );
    // 立减10元
    Widget offerDetailCardContet = Container(
      height: 20,
      padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 3),
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: AssetImage(
                "assets/images/goods/goods_detail_offer_bg_icon.png"),
            fit: BoxFit.fitWidth),
      ),
      child: RichText(
        text: TextSpan(
            style: TextStyle(color: Color(0xffD2B4A4), fontSize: 10),
            children: <InlineSpan>[
              ImageSpan(
                  AssetImage("assets/images/goods/goods_detail_card_icon.png"),
                  imageWidth: 11,
                  imageHeight: 9,
                  margin: EdgeInsets.only(right: 5)),
              TextSpan(text: "立减20 元"),
            ]),
      ),
    );
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8,top: 6),
      width: widget.itemSize.width,
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          offerPriceContainer,
          offerDetailCardContet,
        ],
      ),
    );
  }
  /// 拉手购价格
  Widget _lashougouPrice(){
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 8, right: 8,top: 6),
      child: RichText(
        text: TextSpan(text: "拉手购: ",style: TextStyle(color: Color(0xffF82E5B),fontWeight: FontWeight.bold,fontSize: 12),
          children: <InlineSpan>[
            TextSpan(text: "¥",style: TextStyle(fontSize: 8)),
            TextSpan(text: "88",style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
      );
  }
  Widget _returnMoneyAndSalesVolume(){
    ImageSpan imageSpan = ImageSpan(
      AssetImage("assets/images/goods/goods_detail_fan_icon.png"),
      imageWidth: 14,
      imageHeight: 14,
      margin: EdgeInsets.only(right: 5.0),
    );
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: 10,left: 8,right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            text: TextSpan(
                text: null,
                style: TextStyle(
                    color: Colours.app_text_theme,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                children: <InlineSpan>[
                  imageSpan,
                  TextSpan(text: "返现约1.5元",style: TextStyle(fontSize: 12,color: Color(0xffababab))),
                ]),
          ),
          Text("月销4.4万",style: TextStyle(fontSize: 12,color: Color(0xffababab)),),
        ],
      ),
    );
  }
}
