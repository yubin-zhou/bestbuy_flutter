import 'dart:core';

class GoodsItemModel {
  String goodsName;
  int minGroupPrice;
  int couponDiscount;
  int minNormalPrice;
  int bestBuyPrice;
  int promotionAmount;
  int promotionRate;
  int marketPrice;
  String goodsImageUrl;
  String salesTip;
  String goodsId;
  int userType;
  int channel;

  GoodsItemModel(
      {this.goodsName,
      this.minGroupPrice,
      this.couponDiscount,
      this.minNormalPrice,
      this.bestBuyPrice,
      this.promotionAmount,
      this.promotionRate,
      this.marketPrice,
      this.goodsImageUrl,
      this.salesTip,
      this.goodsId,
      this.userType,
      this.channel});

  GoodsItemModel.fromJsonMap(Map<String, dynamic> map)
      : goodsName = map['goodsName'] as String,
        minGroupPrice = map['minGroupPrice'] as int,
        couponDiscount = map['couponDiscount'] as int,
        minNormalPrice = map['minNormalPrice'] as int,
        bestBuyPrice = map['bestBuyPrice'] as int,
        promotionAmount = map['promotionAmount'] as int,
        promotionRate = map['promotionRate'] as int,
        marketPrice = map['marketPrice'] as int,
        goodsImageUrl = map['goodsImageUrl'] as String,
        salesTip = map['salesTip'] as String,
        goodsId = map['goodsId'] as String,
        userType = map['userType'] as int,
        channel = map['channel'] as int;
}
