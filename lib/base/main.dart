import 'package:flutter/material.dart';
import '../home/controller/HomeController.dart';
import '../shop/controller/ShopController.dart';
import '../community/controller/CommunityController.dart';
import '../my/controller/MyController.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  GuoheState createState() => new GuoheState();
}

class GuoheState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new HomeController(),
            new ShopController(),
            new CommunityController(),
            new MyController()
          ],
        ),
        bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
          controller: controller,
          labelColor: Colors.blue,
          indicatorColor: Colors.orange,
          unselectedLabelColor: Colors.black26,
          tabs: <Widget>[
            new Tab(
              text: "首页",
              icon: new Icon(Icons.home),
            ),
            new Tab(
              text: "商城",
              icon: new Icon(Icons.shop),
            ),
            new Tab(
              text: "社区",
              icon: new Icon(Icons.public),
            ),
            new Tab(
              text: "我的",
              icon: new Icon(Icons.my_location),
            ),
          ],
        ),
      ),
      ),
    );
  }
}




