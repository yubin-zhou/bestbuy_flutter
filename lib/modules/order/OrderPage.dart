
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderPage extends StatefulWidget{
  @override
  _OrderPage createState() => _OrderPage();
}
class _OrderPage extends State<OrderPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("订单"),
      ),
      body: Center(
        child: Text("订单"),
      ),
    );
  }

}