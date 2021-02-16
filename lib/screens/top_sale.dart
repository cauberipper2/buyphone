import 'package:flutter/material.dart';



Container TopSaleProduct(String name){
   return Container(
    height: 50,
    width: double.infinity,
    child: Stack(
      children: <Widget>[
        Row(
          children: [
            Container(
              color: Colors.red,
              width: 300,
              height: 50,
              child:  Center(
                child: Text(name,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow,fontSize: 20.0),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.teal,
                height: 50,
                child:  Image.asset('hoamai.png'),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}