import 'package:flutter/material.dart';
import 'package:flutter_demo/home/model/post.dart';
import 'package:flutter_demo/home/controller/ListViewDetailWidget.dart';

class ListViewWidget extends StatelessWidget{

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Column(
          children: <Widget>[
            Image.network(posts[index].imageUrl),
            SizedBox(height: 16),
            Text(posts[index].title,
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(height: 16),
            Text(posts[index].author,
              style: Theme.of(context).textTheme.subhead,
            ),
            SizedBox(height: 16),
          ],
        ),
        onTap: (){
        _navigationDetails(context,posts[index]);
        },
      ),
    );
  }

  _navigationDetails(BuildContext context,Post post) async{
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewDetailWidget(post: post)));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _listItemBuilder,
      itemCount: posts.length,
    );
  }

}
