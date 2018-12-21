import 'package:flutter/material.dart';
import 'DrawerControl.dart';
import 'BottomNaviControl.dart';

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
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: ()=> debugPrint('click menu')
          ),
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
          body: TabBarView(
              children: <Widget>[
                Icon(Icons.local_florist,size: 100,color: Colors.black12),
                Icon(Icons.change_history,size: 100,color: Colors.black12),
                Icon(Icons.directions_bike,size: 100,color: Colors.black12),
              ]),
          drawer: DrawerControl(),
          bottomNavigationBar: BottomNaviControl(),
        )
    );
  }
}