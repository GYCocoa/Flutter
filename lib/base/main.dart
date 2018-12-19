import 'package:flutter/material.dart';
import '../home/controller/ListViewWidget.dart';
import '../home/controller/DrawerControl.dart';
import '../home/controller/BottomNaviControl.dart';
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
      home: new Scaffold(
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new ListViewWidget(),
            new ShopController(),
            new CommunityController(),
            new MyController()
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.white,
          child: new TabBar(
            controller: controller,
            labelColor: Colors.deepPurpleAccent,
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

class MyApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('Kevin'),
//            leading: IconButton(
//                icon: Icon(Icons.menu),
//                onPressed: ()=> debugPrint('click menu')
//            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: ()=> debugPrint('click search')
              ),
            ],
            bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ]),
          ),
//          body: ListViewWidget(),
          body: TabBarView(
              children: <Widget>[
//            Icon(Icons.local_florist,size: 100,color: Colors.black12),
            ListViewWidget(),
            Icon(Icons.change_history,size: 100,color: Colors.black12),
            Icon(Icons.directions_bike,size: 100,color: Colors.black12),
          ]),
          drawer: DrawerControl(),
          bottomNavigationBar: BottomNaviControl(),
        )
    );
  }
}



