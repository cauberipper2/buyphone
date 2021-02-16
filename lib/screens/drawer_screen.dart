import 'package:buyphoneapp/screens/about_us.dart';
import 'package:buyphoneapp/screens/history_screen.dart';
import 'package:buyphoneapp/screens/notifications_screen.dart';
import 'package:buyphoneapp/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'favorite_screen.dart';
import 'homepage_screen.dart';
import 'login.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: new Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                   gradient: LinearGradient(
                     colors: [
                       Colors.teal,
                       Colors.green,
                     ],
                     begin: Alignment.bottomRight,
                     end: Alignment.topLeft
                   )
                ),
                  accountName: Text('Hoài Phong',style: TextStyle(fontSize: 20.0)),
                  accountEmail: Text('cauberipper2@gmail.com',style: TextStyle(fontSize: 20.0),),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: AssetImage('picture_personal.jpg')
                        )
                      ),
                  ),
              ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
                title: Text('Thông báo'),
                onTap: (){
                  Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => NotificationsScreen()));
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
                title: Text('Yêu thích'),
                onTap: (){
                  Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => FavoritePage()));
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.history,
                    color: Colors.white,
                  ),
                ),
                title: Text('Lịch sử đặt hàng'),
                onTap: (){
                  Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => HistoryScreen()));
                },
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                      Icons.person,
                    color: Colors.white,
                  ),
                ),
                title: Text('Tôi'),
                onTap: (){
                  Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => ProfileScreen()));
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                      Icons.home,
                    color: Colors.white,
                  ),
                ),
                title: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePageScreen()));
                    },
                    child: Text('Trang chủ')),
              ),
              Divider(),
              ListTile(
                leading: Text('About us'),
                trailing: Icon(Icons.help),
                onTap: (){
                  Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => AboutUsScreen()));
                },
              ),
              ListTile(
                leading: Text('Log in'),
                trailing: Icon(Icons.exit_to_app_sharp),
                onTap: (){
                  Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => LoginScreen()));
                },

              )
            ],
          ),
        ),
      ),
    );
  }
}
