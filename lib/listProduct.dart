import 'package:flutter/material.dart';

class ListProduct{
  final String id;
  final String installment;
  final String name;
  final String cost;
  final String costOnline;
  final String url;

  ListProduct({
    @required this.id,
    @required this.installment,
    @required this.name,
    @required this.cost,
    @required this.costOnline,
    @required this.url,
  });
}

List<ListProduct> listOfProduct =[
 ListProduct(
      id: '1',
   installment: 'Trả góp 0%',
     name: 'Iphone12',
   cost: '35.990.000đ',
   costOnline: '33.990.000',
     url: 'iphone12.png',

 ),
  ListProduct(
      id: '2',
      installment: 'Trả góp 0%',
      name: 'Iphone11',
      cost: '16.390.000đ',
      costOnline: '14.390.000',
      url: 'iphone11.png'
  ),
  ListProduct(
      id: '3',
      installment: 'Trả góp 0%',
      name: 'IphoneXr',
      cost: '11.690.000đ',
      costOnline: '10.690.000',
      url: 'iphonexr.png'
  ),
  ListProduct(
      id: '4',
      installment: 'Trả góp 0%',
      name: 'Iphone 12 mini 64GB',
      cost: '18.490.000đ',
      costOnline:'16.490.000',
      url: 'iphone12mini.png'
  ),
  ListProduct(
      id: '5',
      installment: 'Trả góp 0%',
      name: 'Samsung Galaxy M51',
      cost: '8.990.000đ',
      costOnline:'7.990.000',
      url: 'samsungm51.png'
  ),
];