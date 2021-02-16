import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class SaleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Carousel(
        images: [
          Image.asset('sale1.png'),
          Image.asset('sale2.png'),
          Image.asset('sale3.png'),
        ],
        dotSize: 3,
        dotBgColor: Colors.white12,
        dotColor: Colors.grey,
        autoplay: true,
        dotIncreasedColor: Colors.red,
      ),
    );
  }
}
