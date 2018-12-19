import 'package:flutter/material.dart';

class ShopController extends StatefulWidget {
  @override
  ShopState createState() => new ShopState();
}

class ShopState extends State<ShopController> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("商城"),
          backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text('商城'),
        ),
      ),
    );
  }
}