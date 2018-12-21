import 'package:flutter/material.dart';

class MyController extends StatefulWidget {
  @override
  MyState createState() => new MyState();
}

class MyState extends State<MyController> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("我的"),
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text('我的'),
        ),
      ),
    );
  }
}