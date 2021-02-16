import 'package:buyphoneapp/listProduct.dart';
import 'package:buyphoneapp/screens/detail_product_top_phone.dart';
import 'package:buyphoneapp/screens/detail_product_top_items.dart';
import 'package:buyphoneapp/screens/items_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProDuctTopSale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10 ,10, 10),
        child: Row(
          children: <Widget>[
        Wrap(
        children: List.generate(detailProductTopItems.length, (index){
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) =>DetailProductTop(
                id: detailProductTopItems[index].id.toString(),
                installment: detailProductTopItems[index].installment.toString(),
                url: detailProductTopItems[index].url.toString(),
                cost: detailProductTopItems[index].cost.toString(),
                costOnline: detailProductTopItems[index].costOnline.toString(),
                realPicture1: detailProductTopItems[index].realPicture1.toString(),
                  realPicture2: detailProductTopItems[index].realPicture2.toString(),
                  realPicture3: detailProductTopItems[index].realPicture3.toString(),
                  realPicture4: detailProductTopItems[index].realPicture4.toString(),
                screen: detailProductTopItems[index].screen.toString(),
                operatingSystem: detailProductTopItems[index].operatingSystem.toString(),
                  frontCamera: detailProductTopItems[index].frontCamera.toString(),
                  rearCamera: detailProductTopItems[index].rearCamera.toString(),
                  cpu: detailProductTopItems[index].cpu.toString(),
                  ram: detailProductTopItems[index].ram.toString(),
                  memoryInside: detailProductTopItems[index].memoryInside.toString(),
                  simCard: detailProductTopItems[index].simCard.toString(),
                  powerOfPin: detailProductTopItems[index].powerOfPin.toString(),

              )));
            },
                child: Container(
                  padding: EdgeInsets.only(top:20.0),
                  width: 200,
                  height: 380,
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
                              Image.asset(listOfProduct[index].url),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Container(
                                  width: 120,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Colors.yellow,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      child: Text(listOfProduct[index].installment,style: TextStyle(fontSize: 17.0),)),
                                ),
                              ),
                              Text(listOfProduct[index].name,
                                style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                              ),
                              Text(listOfProduct[index].cost,
                                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,
                                  decoration: TextDecoration.lineThrough,
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
                                    child: Text(listOfProduct[index].costOnline,
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
