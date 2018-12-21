import 'package:flutter/material.dart';

class ShopController extends StatefulWidget {
  @override
  ShopState createState() => new ShopState();
}

class ShopState extends State<ShopController> {
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
          title: new Text("商城"),
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text('商城'),
        ),
      ),
    );
  }
}