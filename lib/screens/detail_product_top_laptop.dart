import 'package:buyphoneapp/listProduct.dart';
import 'package:buyphoneapp/screens/detail_product_top_items.dart';
import 'package:buyphoneapp/screens/homepage_screen.dart';
import 'package:buyphoneapp/screens/installment_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buy_button.dart';

class DetailProductTopLaptop extends StatefulWidget {
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
  final String promotion1;
  final String promotion2;
  final String promotion3;
  final String promotionGift;

  const DetailProductTopLaptop({Key key, this.id,this.installment, this.url, this.version1, this.version2, this.cost,this.costOnline, this.description,this.realPicture1,this.realPicture2,this.realPicture3,this.realPicture4, this.screen, this.operatingSystem, this.frontCamera, this.rearCamera, this.cpu, this.ram, this.memoryInside, this.simCard, this.powerOfPin, String name, this.promotion1, this.promotion2, this.promotion3, this.promotionGift,}) : super(key: key);

  @override
  _DetailProductTopLaptopState createState() => _DetailProductTopLaptopState();
}

class _DetailProductTopLaptopState extends State<DetailProductTopLaptop> {
  int currentIndex;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                    children: <Widget> [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                  children: [
                                  Container(
                                    padding: EdgeInsets.only(left:20),
                                  width: 180,
                                    height: 200,
                                    child: Image.asset(widget.url),
                        ),
                                    Container(
                                      child: Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              Text('Giá tại  ',
                                              style: TextStyle(fontSize: 20.0),
                                              ),
                                              Text('Hồ chí minh',
                                                style: TextStyle(fontSize: 20.0,color: Colors.blue),
                                              ),
                                              ],
                                          ),
                                          Text(widget.cost,style: TextStyle(fontSize: 20.0),),
                                          Column(
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
                                        ],
                                      ),
                                    ),
            ]
                                  ),
                                ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.check_circle,
                                      color: Colors.green,
                                    ),
                                    Text(widget.promotion1)
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.check_circle,
                                      color: Colors.green,
                                    ),
                                    Text(widget.promotion2)
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.check_circle,
                                      color: Colors.green,
                                    ),
                                    Text(widget.promotion3)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left:10,top:10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Quà khuyến mãi',
                                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20.0),
                                          ),
                                          Image.asset(widget.promotionGift,width: 100,height: 100,),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                BuyButton(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InstallmentButton(),
                      ),
                          ]
                          )
    ),
    )
    )
    );


  }
}
