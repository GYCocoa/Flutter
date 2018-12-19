import 'package:flutter/material.dart';

class MyController extends StatefulWidget {
  @override
  MyState createState() => new MyState();
}

class MyState extends State<MyController> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("我的"),
          backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text('我的'),
        ),
      ),
    );
  }
}