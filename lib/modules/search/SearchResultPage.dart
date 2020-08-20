
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchResultPage extends StatefulWidget{
  @override
  _SearchResultPage createState() => _SearchResultPage();
}
class _SearchResultPage extends State<SearchResultPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
      ),
      body: Center(
        child: Text("搜索"),
      ),
    );
  }

}