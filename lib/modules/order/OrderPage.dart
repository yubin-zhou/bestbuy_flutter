
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:yb_alertview_plugin/yb_alertview_plugin.dart';
import 'package:yb_image_utils/yb_image_utils.dart';

class OrderPage extends StatefulWidget{
  @override
  _OrderPage createState() => _OrderPage();
}
class _OrderPage extends State<OrderPage>{
  static const String imgUrl = "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fa6a1a37b-b7e2-4a97-ade9-291a9e9e7e88%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1696655140&t=6a2f25141fad217c2ca4d18e7944c15d";
  String _platformVersion = 'Unknown';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("自己写的组件测试"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            YbImageUtils.ybCornerImg(250, imgUrl,bgColor: Colors.blueGrey,radius: 10),
            YbImageUtils.ybCornerImg(100, imgUrl,bgColor: Colors.red),
            YbImageUtils.ybGetNetImg(200, 200, imgUrl, null,bgColor: Colors.teal),
            Text('Running on: $_platformVersion\n'),
            InkWell(
              child: Container(
                  color: Colors.green,
                  height: 50,
                  width: double.infinity,
                  child:Center(
                    child:  Text("显示原生弹窗",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.w500)),
                  )
              ),
              onTap: (){
                YbAlertviewPlugin.showNativeAlertView("我是一个原生提示弹窗");
              },
            ),

          ],
        ),
      ),
    );
  }
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await YbAlertviewPlugin.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

}