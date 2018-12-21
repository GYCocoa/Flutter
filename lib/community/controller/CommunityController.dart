import 'package:flutter/material.dart';

class CommunityController extends StatefulWidget {
  @override
  CommunityState createState() => new CommunityState();
}

class CommunityState extends State<CommunityController> {
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
          title: new Text("社区"),
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text('社区'),
        ),
      ),
    );
  }
}