import 'package:flutter/material.dart';


class BuyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          gradient: LinearGradient(
              colors: [
                Colors.orange.withOpacity(0.98),
                Colors.red.withOpacity(0.98),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
      ),
        child: Container(
          padding: const EdgeInsets.only(top:5.0),
          child: Column(
            children: [
              Text('MUA NGAY',
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18.0),
              ),
              Text('Giao hàng tận nơi hoặc nhân tại siêu thị',
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18.0),
              ),
            ],
          ),
        ),
    );
  }
}
