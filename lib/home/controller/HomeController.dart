import 'package:flutter/material.dart';
import 'ListViewWidget.dart';
import 'DrawerControl.dart';

class HomeController extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<HomeController> {
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
        )
    );
  }
}
