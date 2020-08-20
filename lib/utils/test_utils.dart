import 'dart:convert';

import 'package:bestbuy_flutter/modules/home/models/GoodsItemModel.dart';
class TestUtils{
    static const _jsonStr = "{\"code\":\"2000\",\"msg\":\"请求成功!\",\"data\":{\"channel\":null,\"sharePeopleUserId\":null,\"searchId\":null,\"goodsList\":[{\"couponEndTime\":null,\"searchId\":\"\",\"platFormPromotionAmount\":null,\"link\":\"https://coupon.m.jd.com/coupons/show.action?linkKey=AAROH_xIpeffAs_-naABEFoeVtIW0Khm3UHA3PQ-RooHv1ac3Q1hk8CaXOfjD8Ro95sjCtRFFga85cA_qqY8wNPVay7Zaw&to=mall.jd.com/index-10032313.html\",\"minGroupPrice\":16900,\"couponDiscount\":10000,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":16900,\"bestBuyPrice\":6900,\"goodsName\":\"莉兹星空星耀口红女学生款平价高颜值哑光豆沙色持久不脱色美妆 08#豆沙色\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":3156,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":610,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"item.jd.com/61484228994.html\",\"goodsImageUrl\":\"http://img14.360buyimg.com/pop/jfs/t1/87132/17/1969/248863/5dc7a4b6Ec1e9469d/1152468afc66a535.jpg\",\"salesTip\":\"31\",\"goodsId\":\"61484228994\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":2,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"\",\"platFormPromotionAmount\":null,\"link\":\"https://coupon.m.jd.com/coupons/show.action?linkKey=AAROH_xIpeffAs_-naABEFoeyd1T3PBZZGdZ7sAgW2LA6QvCArHfLd_ocDw0QLYxSf0LjPprtNwuSv_3lYGUPpD-XuN27Q\",\"minGroupPrice\":9890,\"couponDiscount\":4000,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":9890,\"bestBuyPrice\":5890,\"goodsName\":\"韩纪美妆魅惑口红滋润保湿不易沾杯不易掉色彩妆口红 孕妇可用 06亮燿玫红色\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":3268,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":740,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"item.jd.com/66981659476.html\",\"goodsImageUrl\":\"http://img14.360buyimg.com/pop/jfs/t1/103911/26/16052/126628/5e795937Ea21a8c82/4178531c54a9529d.jpg\",\"salesTip\":\"24\",\"goodsId\":\"66981659476\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":2,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"367db7bdf761e4196be01882afc70150b4c\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":2990,\"couponDiscount\":500,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":2990,\"bestBuyPrice\":2490,\"goodsName\":\"【专柜正品】奇迹马油膏霜美白保湿补水面霜面油韩国马油护肤品女\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":373,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":200,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://omsproductionimg.yangkeduo.com/images/2017-11-20/f2ef084c5051fcb90258c65030a3333a.jpeg\",\"salesTip\":\"8692\",\"goodsId\":\"218943540\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"367db7bdf761e4196be01882afc70150b4c\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":9900,\"couponDiscount\":0,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":9900,\"bestBuyPrice\":9900,\"goodsName\":\"美肤宝套装正品美白补水保湿去黄淡斑水乳霜护肤品化妆品女\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":742,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":100,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/goods/images/2019-10-05/7863c6f9-ef01-458e-975b-2a7120667842.jpg\",\"salesTip\":\"2593\",\"goodsId\":\"1127332240\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"367db7bdf761e4196be01882afc70150b4c\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":9900,\"couponDiscount\":300,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":9900,\"bestBuyPrice\":9600,\"goodsName\":\"美肤宝套装水乳组合美白补水保湿淡斑护肤品水乳组合化妆品正品\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":720,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":100,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/goods/images/2020-04-14/8a0d1c69-1c95-46ec-84d2-b7be54f67381.jpg\",\"salesTip\":\"2178\",\"goodsId\":\"207657855\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"367db7bdf761e4196be01882afc70150b4c\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":9900,\"couponDiscount\":3000,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":9900,\"bestBuyPrice\":6900,\"goodsName\":\"品牌高保湿补水美白抗皱紧致护肤品中年妈妈祛皱抗衰老化妆品套装\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":1035,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":200,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://img.pddpic.com/mms-material-img/2020-07-11/d4986997-80fd-4c9d-884f-b857b2950b7a.png.a.jpeg\",\"salesTip\":\"714\",\"goodsId\":\"107612207653\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"367db7bdf761e4196be01882afc70150b4c\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":14200,\"couponDiscount\":0,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":14200,\"bestBuyPrice\":14200,\"goodsName\":\"珀莱雅紧致肌密焕颜修护乳保湿补水美白淡斑乳细纹修复化妆护肤品\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":3195,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":300,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://img.pddpic.com/mms-material-img/2020-06-09/e7412023-6c33-4f58-9e90-3a21b42c12e7.jpeg\",\"salesTip\":\"485\",\"goodsId\":\"57670295427\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"367db7bdf761e4196be01882afc70150b4c\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":12160,\"couponDiscount\":1000,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":12160,\"bestBuyPrice\":11160,\"goodsName\":\"蜗牛原液套装美白祛斑霜化妆品套装补水保湿水乳护肤品女孕妇可用\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":1674,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":200,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://img.pddpic.com/mms-material-img/2020-07-28/1715b3ed-8fbf-477b-8ec9-df776f6c772f.jpg\",\"salesTip\":\"4785\",\"goodsId\":\"89756136061\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"367db7bdf761e4196be01882afc70150b4c\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":3900,\"couponDiscount\":0,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":3900,\"bestBuyPrice\":3900,\"goodsName\":\"泰国ATREUS VC爽肤水补水舒缓保湿护肤水女生收缩毛孔水护肤水\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":292,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":100,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/goods/images/2020-03-20/6622cc59-fd4e-4355-8448-821c3e0fdeee.jpg\",\"salesTip\":\"2.5万\",\"goodsId\":\"23471166116\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"367db7bdf761e4196be01882afc70150b4c\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":9900,\"couponDiscount\":3000,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":9900,\"bestBuyPrice\":6900,\"goodsName\":\"品牌抗皱紧致套装祛皱化妆品中年妇女妈妈抗衰老去皱纹护肤品全套\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":1035,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":200,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/goods/images/2020-06-06/c7708dcd-3ecf-4348-bea8-d2bf81988625.jpg\",\"salesTip\":\"1479\",\"goodsId\":\"79064948285\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"30c556b8696ca45b889a8426a519d3131cf\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":948,\"couponDiscount\":100,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":948,\"bestBuyPrice\":848,\"goodsName\":\"盒装果冻海绵粉扑五角形小房子美妆蛋干湿两用气垫BB粉扑化妆工具\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":159,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":250,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/openapi/images/2019-04-22/94568adb7aa10c3ce371e8e5910fbaed.jpeg\",\"salesTip\":\"0\",\"goodsId\":\"138789261603\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"30c556b8696ca45b889a8426a519d3131cf\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":2790,\"couponDiscount\":500,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":2790,\"bestBuyPrice\":2290,\"goodsName\":\"美妆蛋超软不吃粉斜切化妆蛋蛋海绵干湿两用彩妆套装粉扑定妆气垫\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":343,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":200,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/goods/images/2020-03-27/f7aaf38572c1059769ebf91dec0c0f99.jpeg\",\"salesTip\":\"0\",\"goodsId\":\"155508945026\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"30c556b8696ca45b889a8426a519d3131cf\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":3450,\"couponDiscount\":500,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":3450,\"bestBuyPrice\":2950,\"goodsName\":\"每周色彩蛋蛋粉扑美妆蛋化妆海绵不卡粉彩妆蛋干湿两用2只送架子\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":442,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":200,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/goods/images/2019-12-07/3d269d17-0467-4157-b5cd-93ddcdbd616b.jpg\",\"salesTip\":\"0\",\"goodsId\":\"155493302516\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"30c556b8696ca45b889a8426a519d3131cf\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":4280,\"couponDiscount\":0,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":4280,\"bestBuyPrice\":4280,\"goodsName\":\"化妆镜台式LED带灯宿舍桌面梳妆镜女网红便携随身补光美妆小镜子\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":802,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":250,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/goods/images/2019-06-05/e0e6bef8-78d1-4c48-87a7-cfa3024d243f.jpg\",\"salesTip\":\"0\",\"goodsId\":\"132786717553\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"30c556b8696ca45b889a8426a519d3131cf\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":6070,\"couponDiscount\":1500,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":6070,\"bestBuyPrice\":4570,\"goodsName\":\"热销末颜 12支18支24支32支化妆刷套装初学美妆彩妆工具眼影套刷\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":1131,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":330,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/goods/images/2019-10-03/6cef436f-75f9-4697-aaae-3638488008ee.jpg\",\"salesTip\":\"0\",\"goodsId\":\"155041494997\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"30c556b8696ca45b889a8426a519d3131cf\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":1568,\"couponDiscount\":200,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":1568,\"bestBuyPrice\":1368,\"goodsName\":\"【10个9.8】葫芦粉扑化妆棉水滴美妆蛋脸扑干湿两用不吃粉蘑菇头\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":102,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":100,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/goods/images/2019-04-19/fbc143f4-bcae-4770-8863-0f1d64f05821.jpg\",\"salesTip\":\"0\",\"goodsId\":\"133949150096\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"30c556b8696ca45b889a8426a519d3131cf\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":1996,\"couponDiscount\":200,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":1996,\"bestBuyPrice\":1796,\"goodsName\":\"酒红色美妆蛋超软不吸粉三切面干湿两用气垫海绵粉扑彩妆蛋送架子\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":269,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":200,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/goods/images/2020-05-29/02712bf6-5519-48ad-9f46-d0c997fdb6fa.jpg\",\"salesTip\":\"0\",\"goodsId\":\"135630881422\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"30c556b8696ca45b889a8426a519d3131cf\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":3145,\"couponDiscount\":300,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":3145,\"bestBuyPrice\":2845,\"goodsName\":\"化妆刷套装全套美妆工具粉底刷眼影刷散粉刷化妆刷软毛刷子化妆\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":213,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":100,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://t00img.yangkeduo.com/goods/images/2020-03-14/3b35a934-d58e-4d50-bd64-7a72130526e4.jpg\",\"salesTip\":\"0\",\"goodsId\":\"114892224972\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"30c556b8696ca45b889a8426a519d3131cf\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":9900,\"couponDiscount\":0,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":9900,\"bestBuyPrice\":9900,\"goodsName\":\"12支天城唯美化妆刷套装彩妆套装初学者美妆工具刷子眼影刷\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":74,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":10,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://img.pddpic.com/mms-material-img/2020-07-20/f8e075a6-34f3-4328-90ed-1e76b89c25b4.jpg.a.jpeg\",\"salesTip\":\"0\",\"goodsId\":\"155352966609\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"},{\"couponEndTime\":null,\"searchId\":\"30c556b8696ca45b889a8426a519d3131cf\",\"platFormPromotionAmount\":null,\"link\":\"\",\"minGroupPrice\":1112,\"couponDiscount\":0,\"goodsDesc\":null,\"couponStartDate\":null,\"minNormalPrice\":1112,\"bestBuyPrice\":1112,\"goodsName\":\"O.TWO.O 粉刷化妆刷全套美妆刷8支套装眼部刷子初学者眼影刷工具\",\"promotionUrl\":null,\"sharePromotionAmount\":null,\"goodsEvalCount\":null,\"goodsDetailUrls\":null,\"promotionAmount\":166,\"couponMinOrderAmount\":null,\"mallName\":null,\"couponShareUrl\":null,\"hasCoupon\":null,\"promotionRate\":200,\"marketPrice\":-1,\"goodsGalleryUrls\":null,\"couponEndDate\":null,\"materialUrl\":\"\",\"goodsImageUrl\":\"https://img.pddpic.com/mms-material-img/2020-06-27/a437ea26-83cf-428b-a829-ca33e1e23d7b.jpeg\",\"salesTip\":\"0\",\"goodsId\":\"144237812780\",\"couponId\":null,\"goodsThumbnailUrl\":null,\"sharePeopleUserId\":null,\"userType\":0,\"channel\":1,\"couponStartTime\":null,\"destUrl\":\"\"}],\"pageNum\":null,\"listId\":null,\"relationId\":null,\"totalCount\":null}}";

   static List<GoodsItemModel> getDataList(){
     Map<String, dynamic> goodsMap = json.decode(_jsonStr);
     Map<String,dynamic> data = goodsMap["data"];
     List list = data["goodsList"];
     List<GoodsItemModel> dataList = new List();
     for(int i=0;i<list.length;i++){
       Map map = list[i];
       dataList.add(GoodsItemModel.fromJsonMap(map));
     }
     return dataList;
   }
}