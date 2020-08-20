
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MakeMoneyPage extends StatefulWidget{
  @override
  _MakeMoneyPage createState() => _MakeMoneyPage();
}
class _MakeMoneyPage extends State<MakeMoneyPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("赚钱"),
      ),
      body: Center(
        child: Text("赚钱"),
      ),
    );
  }

}