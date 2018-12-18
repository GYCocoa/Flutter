import 'package:flutter/material.dart';
import '../model/post.dart';

void main()=>runApp(ListViewDetailWidget());

class ListViewDetailWidget extends StatelessWidget{

  final Post post;
  ListViewDetailWidget({Key key,this.post}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text(post.title),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.pop(context,post.title);
              }),
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            child: Image.network(post.imageUrl),
            onTap: (){
              Navigator.pop(context,post.title);
            },
          ),
          SizedBox(height: 16),
          Text(post.description,
            style: Theme.of(context).textTheme.title,
          ),
          SizedBox(height: 16),
          Text(post.title,
            style: Theme.of(context).textTheme.title,
          ),
          SizedBox(height: 16),
          Text(post.author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

