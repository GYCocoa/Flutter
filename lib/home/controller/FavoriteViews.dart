import 'package:flutter/material.dart';

class FavoriteController extends StatefulWidget{

  @override

  _FavoriteState createState() => _FavoriteState();
}


// widget的状态保存在一个State对象中, 它和widget的布局显示分离
class _FavoriteState extends State<FavoriteController>{

  bool _isFavorited = true;
  int _favoriteCount = 50;

  // 当widget状态改变时, State 对象调用setState(), 告诉框架去重绘widget
  void _favoriteOnPress(){
    setState(() {
      if(_isFavorited){
        _isFavorited = false;
        _favoriteCount -= 1;
      }else{
        _isFavorited = true;
        _favoriteCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
              icon: Icon(_isFavorited ? Icons.star : Icons.star_border),
              onPressed: _favoriteOnPress,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}