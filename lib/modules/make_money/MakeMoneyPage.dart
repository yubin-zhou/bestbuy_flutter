import 'package:bestbuy_flutter/demo/Draw_board_page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MakeMoneyPage extends StatefulWidget {
  @override
  _MakeMoneyPage createState() => _MakeMoneyPage();
}

class _MakeMoneyPage extends State<MakeMoneyPage> {
  List<String> dataList = [
    "简单画板实现",
    "Flutter plugins Demo",
    "Flutter packages Demo",
    "Flutter add Native view"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("demo"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: (){
              _itemClickHandler(index);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(13),
                  child: Text(
                    "$index  ${dataList[index]}",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                Divider(height: 1.0,indent: 10.0,color: Colors.grey,),
              ],
            ),
          );
        },
        itemCount: dataList.length,
      ),
    );
  }
   _itemClickHandler(int index){
     print(dataList[index]);
     switch(index){
       case 0:
         Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Draw_board_page1()));
         break;
       case 1:
         break;
       case 2:
         break;
       case 3:
         break;
       case 4:
         break;
       default:
         break;
     }
  }
}
