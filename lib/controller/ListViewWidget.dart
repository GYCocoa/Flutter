import 'package:flutter/material.dart';
import '../model/post.dart';


class ListViewWidget extends StatelessWidget{

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16),
//          Text(posts[index].description,
//            style: Theme.of(context).textTheme.title,
//          ),
//          SizedBox(height: 16),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: _listItemBuilder,
      itemCount: posts.length,
    );
  }

}
