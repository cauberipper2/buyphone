import 'package:buyphoneapp/listProduct.dart';
import 'package:buyphoneapp/screens/detail_product_top_phone.dart';
import 'package:buyphoneapp/screens/detail_product_top_items.dart';
import 'package:buyphoneapp/screens/detail_product_top_laptop.dart';
import 'package:buyphoneapp/screens/items_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listProDuctLaptop.dart';

class ProDuctTopSaleLaptop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10 ,10, 10),
        child: Row(
            children: <Widget>[
              Wrap(
                children: List.generate(listOfProductLaptop.length, (index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) =>DetailProductTopLaptop(
                        id: listOfProductLaptop[index].id.toString(),
                        installment: listOfProductLaptop[index].installment.toString(),
                        name: listOfProductLaptop[index].name.toString(),
                        cost: listOfProductLaptop[index].cost.toString(),
                        costOnline: listOfProductLaptop[index].costOnline.toString(),
                        url: listOfProductLaptop[index].url.toString(),
                        promotion1: listOfProductLaptop[index].promotion1.toString(),
                        promotion2: listOfProductLaptop[index].promotion2.toString(),
                        promotion3: listOfProductLaptop[index].promotion3.toString(),
                        promotionGift: listOfProductLaptop[index].promotionalGift.toString(),
                      )));
                    },
                    child: Container(
                        padding: EdgeInsets.only(top:20.0),
                        width: 250,
                        height: 440,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,width: 2),
                          borderRadius: BorderRadius.all(
                              Radius.circular(20.0)
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: [
                                Image.asset(listOfProductLaptop[index].url),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Container(
                                    width: 120,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      color: Colors.yellow,
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Text(listOfProductLaptop[index].installment,style: TextStyle(fontSize: 17.0),)),
                                  ),
                                ),
                                Text(listOfProductLaptop[index].name,
                                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top:5),
                                  child: Text(listOfProductLaptop[index].cost,
                                    style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(20,10,20,10),
                                      child: Text('giá khuyến mãi',
                                        style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.red),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(20,0,20,0),
                                      child: Text(listOfProductLaptop[index].costOnline,
                                        style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.red),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                    ),
                  );
                }
                ),
              )
            ]
        ),
      ),
    );
  }
}
