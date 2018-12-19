import 'package:flutter/material.dart';

class CommunityController extends StatefulWidget {
  @override
  CommunityState createState() => new CommunityState();
}

class CommunityState extends State<CommunityController> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("社区"),
          backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text('社区'),
        ),
      ),
    );
  }
}