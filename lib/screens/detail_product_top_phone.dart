import 'package:buyphoneapp/listProduct.dart';
import 'package:buyphoneapp/screens/cart_screen.dart';
import 'package:buyphoneapp/screens/detail_product_top_items.dart';
import 'package:buyphoneapp/screens/homepage_screen.dart';
import 'package:buyphoneapp/screens/installment_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../listProDuctLaptop.dart';
import 'buy_button.dart';

class DetailProductTop extends StatefulWidget {
  final String id;
  final String installment;
  final String url;
  final String version1;
  final String version2;
  final String cost;
  final String costOnline;
  final String description;
  final String realPicture1;
  final String realPicture2;
  final String realPicture3;
  final String realPicture4;
  final String screen;
  final String operatingSystem;
  final String frontCamera;
  final String rearCamera;
  final String cpu;
  final String ram;
  final String memoryInside;
  final String simCard;
  final String powerOfPin;

  const DetailProductTop({Key key, this.id,this.installment, this.url, this.version1, this.version2, this.cost,this.costOnline, this.description,this.realPicture1,this.realPicture2,this.realPicture3,this.realPicture4, this.screen, this.operatingSystem, this.frontCamera, this.rearCamera, this.cpu, this.ram, this.memoryInside, this.simCard, this.powerOfPin, String name,}) : super(key: key);

  @override
  _DetailProductTopState createState() => _DetailProductTopState();
}

class _DetailProductTopState extends State<DetailProductTop> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Thông tin sản phẩm',style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.black.withAlpha(900),
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){},color: Colors.deepOrange,)
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top:20.0),
              child: Column(
                children: <Widget> [
                  Stack(
                    children: <Widget>[
                     Row(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: Image.asset(widget.url),
                        ),
                      ],
                    ),
                      Container(
                        padding: EdgeInsets.fromLTRB(200, 20, 0, 0),
                          child: Text('Giá tại ',style: TextStyle( color: Colors.black,fontSize: 20.0),)),
                      Container(
                          padding: EdgeInsets.fromLTRB(265, 20, 0, 0),
                          child: Text(' Hồ chí minh',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 20.0,
                          ),)),
                      Container(
                          padding: EdgeInsets.fromLTRB(200, 50, 0, 0),
                          child: Text(widget.cost,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25.0,
                              decoration: TextDecoration.lineThrough
                          ),)),
                      Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        )
                        ),
                          padding: EdgeInsets.fromLTRB(190, 100, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                width: 220,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.deepOrange,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight
                                  )
                                ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:5.0,top: 5.0),
                                    child: Text('MUA ONLINE GIẢM SỐC',style: TextStyle(color: Colors.white,fontSize: 18),),
                                  )),
                              Container(
                                  width: 220,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.4),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:60.0,top: 5.0),
                                    child: Text(widget.costOnline,style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
                                  )),
                            ],
                          ),

                      )
                ],
              ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(25,10, 0,20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Text('Hình ảnh thực tế',
                          style: TextStyle(color: Colors.black,fontSize: 20)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(20,0, 10,0),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey,width: 1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(widget.realPicture1),
                                        )
                                      ),
                                    ),
                                    Text('Xám', style: TextStyle(color: Colors.black,fontSize: 15.0)),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey,width: 1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                      ),
                                      child: Image.asset(widget.realPicture2),
                                    ),
                                    Text('Bạc', style: TextStyle(color: Colors.black,fontSize: 15.0)),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey,width: 1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                      ),
                                      child: Image.asset(widget.realPicture3),
                                    ),
                                    Text('Xanh Dương', style: TextStyle(color: Colors.black,fontSize: 15.0)),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey,width: 1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                      ),
                                      child: Image.asset(widget.realPicture4),
                                    ),
                                    Text('Vàng đồng', style: TextStyle(color: Colors.black,fontSize: 15.0)),
                                  ],
                                ),

                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                      child: Row(
                        children: <Widget>[
                          Text('Thông số kỹ thuật', style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 370,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20,5,45,10),
                            child: Text('Màn hình:',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(35,5,0,10),
                            child: Text(widget.screen,
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 370,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20,5,45,10),
                            child: Text('Hệ điều hành:',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Container(
                            child: Text(widget.operatingSystem,
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 370,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20,5,45,10),
                            child: Text('Camera sau:',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10,5,0,10),
                            child: Text(widget.frontCamera,
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 370,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20,5,39,10),
                            child: Text('Camera trước:',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text(widget.rearCamera,
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 18.0),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 370,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20,5,45,10),
                            child: Text('CPU:',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(75,5,0,10),
                            child: Text(widget.cpu,
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 370,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20,5,45,10),
                            child: Text('RAM:',
                              style: TextStyle(fontSize: 20.0,color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(75,5,45,10),
                            child: Text(widget.ram,
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 370,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20,5,45,10),
                            child: Text('Bộ nhớ trong',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5,5,45,10),
                            child: Text(widget.memoryInside,
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 370,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20,5,45,10),
                            child: Text('Thẻ sim:',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(40,5,45,10),
                            child: Text(widget.simCard,
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20,5,20,10),
                            child: Text('Dung lượng pin:',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Text(widget.powerOfPin,
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                  BuyButton(),
                  InstallmentButton(),

  ]
        ),
      ),
          )
      )
    );

  }
}
