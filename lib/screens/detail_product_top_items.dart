import 'package:flutter/material.dart';

class DetailProductTopItems{
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


  DetailProductTopItems({
   @required this.id,
   @required this.installment,
   @required this.url,
   @required this.version1,
   @required this.version2,
   @required this.cost,
   @required this.costOnline,
    this.description,
    this.realPicture1,
    this.realPicture2,
    this.realPicture3,
     this.realPicture4,
    this.screen,
    this.operatingSystem,
    this.frontCamera,
    this.rearCamera,
    this.cpu,
    this.ram,
    this.memoryInside,
    this.simCard,
    this.powerOfPin,
});
}

List<DetailProductTopItems> detailProductTopItems = [
  DetailProductTopItems
    (
      id: '1',
      url: 'iphone12.png',
      installment: 'Trả góp 0%',
      version1: '128GB',
      version2: '256GB',
      cost: '35.990.000đ',
      costOnline: '33.990.000',
      description: '',
      realPicture1: 'iphone12xam.png',
      realPicture2: 'iphone12bac.png',
      realPicture3: 'iphone12xanhduong.png',
      realPicture4: 'iphone12vangdong.png',
      screen: "OLED\s 6.7\"\, \n Super Retina XDR" ,
      operatingSystem: 'iOS 14',
      frontCamera: '3 camera 12 MP',
      rearCamera: '12 MP',
      cpu: 'Apple A14 Bionic 6 nhân',
      ram: '6GB',
      memoryInside: '256GB',
      simCard: '1 Nano SIM  & \n1 eSIM Hỗ trợ 5G',
      powerOfPin: '3687 mAH\n có sạc nhanh'
  ),
  DetailProductTopItems
    (
      id: '2',
      url: 'iphone11.png',
    installment: 'Trả góp 0%',
      version1: '64GB',
      version2: '128GB',
      cost: '16.390.000đ',
      costOnline: '14.390.000',
      description: '',
    realPicture1: 'iphone11do.png',
    realPicture2: 'iphone11.xanhla.png',
    realPicture3: 'iphone11tim.png',
    realPicture4: 'iphone11den.png',
      screen: 'IPS LCD, 6.1\"\, Liquid Retina',
      operatingSystem: 'iOS 14',
      frontCamera: '2 camera 12 MP',
      rearCamera: '12 MP',
      cpu: 'Apple A13 Bionic 6 nhân',
      ram: '4GB',
      memoryInside: '64GB',
      simCard: '1 Nano SIM  & 1 eSIM \n Hỗ trợ 4G',
      powerOfPin: '3110 mAH, có sạc nhanh'
  ),
  DetailProductTopItems
    (
      id: '3',
      url: 'iphonexr.png',
    installment: 'Trả góp 0%',
      version1: '',
      version2: '',
      cost: '11.690.000đ',
      costOnline: '10.690.000',
      description: '',
    realPicture1: 'iphone11do.png',
    realPicture2: 'iphone11.xanhla.png',
    realPicture3: 'iphone11tim.png',
    realPicture4: 'iphone11den.png',
      screen: 'IPS LCD\,6.1\"\, Liquid Retina',
      operatingSystem: 'iOS 12',
      frontCamera: '12MP',
      rearCamera: '7 MP',
      cpu: 'Apple A12 Bionic 6 nhân',
      ram: '3GB',
      memoryInside: '64GB',
      simCard: '1 Nano SIM & 1 eSIM \n Hỗ trợ 4G',
      powerOfPin: '2942 mAH, có sạc nhanh'
  ),
  DetailProductTopItems
    (
    id: '4',
    url: 'iphone12mini.png',
    installment: 'Trả góp 0%',
    version1: '64GB',
    version2: '128GB',
    cost: '18.490.000đ',
    costOnline:'16.490.000',
    description: '',
    realPicture1: 'iphone12xam.png',
    realPicture2: 'iphone12bac.png',
    realPicture3: 'iphone12xanhduong.png',
    realPicture4: 'iphone12vangdong.png',
      screen: 'OLED\,5.4\"\nSuper Retina XDR',
      operatingSystem: 'iOS 14',
      frontCamera: '2 camera 12 MP',
      rearCamera: '12 MP',
      cpu: 'Apple A14 Bionic 6 nhân',
      ram: '4GB',
      memoryInside: '64GB',
      simCard: '1 Nano SIM  & 1 eSIM\n Hỗ trợ 5G',
      powerOfPin: '2227 mAH, có sạc nhanh'
  ),
  DetailProductTopItems
    (
    id: '5',
    url: 'samsungm51.png',
    installment: 'Trả góp 0%',
    version1: '',
    version2: '',
    cost: '8.990.000đ',
    costOnline:'7.990.000',
    description: '',
    realPicture1: 'iphone12xam.png',
    realPicture2: 'iphone12bac.png',
    realPicture3: 'iphone12xanhduong.png',
    realPicture4: 'iphone12vangdong.png',
      screen: 'Super AMOLED Plus\n \,6,7\"\, FULL HD+',
      operatingSystem: 'Android 10',
      frontCamera: 'Chính 64 MP & Phụ 12 MP\,\n 5 MP\,5 MP',
      rearCamera: '32 MP',
      cpu: 'Snapdragon 730 8 nhân',
      ram: '8GB',
      memoryInside: '128GB',
      simCard: '2 Nano SIM\, Hỗ trợ 4G',
      powerOfPin: '7000 mAh\, có sạc nhanh'
  ),
];