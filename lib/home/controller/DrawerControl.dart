import 'package:flutter/material.dart';

class DrawerControl extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
//                DrawerHeader(
//                  child: Text('Kevin'.toUpperCase()),
//                  decoration: BoxDecoration(
//                    color: Colors.grey[100],
//                  ),
//                ),
          UserAccountsDrawerHeader(
            accountName: Text('Kevin',style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('gycocoa@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIbGiaLHIGeT8fZuya7pQMCKqkFpOM5E3x9lA8TcfhromAicyZQbN6iaNiaQQdhicgdD5R0PpBiayoC16jQ/132'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage('http://pic39.nipic.com/20140311/8821914_215322719000_2.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Messages',textAlign: TextAlign.right),
            trailing: Icon(Icons.message,color: Colors.black12,size: 22),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite',textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite,color: Colors.black12,size: 22),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings',textAlign: TextAlign.right),
            trailing: Icon(Icons.settings,color: Colors.black12,size: 22),
            onTap: ()=> Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}