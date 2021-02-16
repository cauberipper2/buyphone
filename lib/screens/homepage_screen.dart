import 'package:buyphoneapp/screens/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import '../topSaleOfLaptop.dart';
import 'file:///C:/Users/nghoa/AndroidStudioProjects/flutterprojects2/buyphoneapp/lib/topSaleOfPhone.dart';
import 'package:buyphoneapp/screens/sale_screen.dart';
import 'package:buyphoneapp/screens/top_sale.dart';
import 'package:flutter/material.dart';
import 'navigation_bar.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: NavigationBar()),
                SaleScreen(),
                TopSaleProduct('ĐIỆN THOẠI NỔI BẬT NHẤT'),
                ProDuctTopSale(),
                TopSaleProduct('LAPTOP NỔI BẬT NHẤT'),
                ProDuctTopSaleLaptop(),
              ],
            ),
          ),
        ),
        floatingActionButton: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.green,
              child: Icon(Icons.shopping_cart,color: Colors.white,) ,
              onPressed: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => CartScreen()));
              },
            ),
             CircleAvatar(
               backgroundColor: Colors.red,
               radius: 10.0,
                child: Text('1',style: TextStyle(fontSize: 12.0),),
                ),
          ],
        ),
      ),
    );
  }
}
