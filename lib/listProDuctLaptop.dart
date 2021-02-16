import 'package:flutter/material.dart';

class ListProductLaptop{
  final String id;
  final String installment;
  final String name;
  final String cost;
  final String costOnline;
  final String url;
  final String promotion1;
  final String promotion2;
  final String promotion3;
  final String promotionalGift;

  ListProductLaptop({
    @required this.id,
    @required this.installment,
    @required this.name,
    @required this.cost,
    @required this.costOnline,
    @required this.url,
    this.promotion1,
    this.promotion2,
    this.promotion3,
    this.promotionalGift,
  });
}

List<ListProductLaptop> listOfProductLaptop =[
  ListProductLaptop(
    id: '1',
    installment: 'Trả góp 0%',
    name: 'Lenovo IdeaPad \n S340 14IIL \n i5 1035G1 \n(81W003SVN)',
    cost: '19.990.000đ',
    costOnline: '18.790.000',
    url: 'laptopnenovo.png',
    promotion1: 'Balo Laptop Lenovo',
    promotion2: 'Mua kèm Microsoft 365 Personal 1 năm chỉ \n còn 790,000đ',
    promotion3: 'Mua Đồng hồ thời trang giảm 40%\n (không kèm khuyến mãi khác)',
    promotionalGift: 'promotionGift_lenovo.png'
  ),
  ListProductLaptop(
      id: '2',
      installment: 'Trả góp 0%',
      name: 'Macbook 2017 \n 128GB\n i5\n (MQD32SAVA)',
      cost: '19.990.000đ',
      costOnline: '18.990.000',
      url: 'macbook2017.jpg',
      promotion1: 'Túi chống sốc Laptop 14\" eValu',
      promotion2: 'Mua kèm Microsoft 365 Personal 1 năm chỉ \n còn 790,000đ',
      promotion3: 'Mua Đồng hồ thời trang giảm 40%\n (không kèm khuyến mãi khác)',
      promotionalGift: 'promotionGift_macbook2017.png'
  ),
  ListProductLaptop(
      id: '3',
      installment: 'Trả góp 0%',
      name: 'Acer Nitro 5 \n AN515 55 5206 \n i5 10300H \n (NH.Q7NSV.007)',
      cost: '23.990.000đ',
      costOnline: '22.990.000',
      url: 'acernitro.jpg',
      promotion1: 'Balo Gaming Predator (Trong thùng máy)',
      promotion2: 'Mua kèm Microsoft 365 Personal 1 năm chỉ \n còn 790,000đ',
      promotion3: 'Mua Đồng hồ thời trang giảm 40%\n (không kèm khuyến mãi khác)',
      promotionalGift: 'promotionGift_acernito.jpg'
  ),
  ListProductLaptop(
      id: '4',
      installment: 'Trả góp 0%',
      name: 'Acer Aspire 3 \n A315 54K 37BO \n i3 813OU\n (NX.HEESV.00D)',
      cost: '10.990.000đ',
      costOnline:'10.790.000',
      url: 'aceraspire.jpg',
      promotion1: 'Balo Gaming Predator (Trong thùng máy)',
      promotion2: 'Mua kèm Microsoft 365 Personal 1 năm chỉ \n còn 790,000đ',
      promotion3: 'Mua Đồng hồ thời trang giảm 40%\n (không kèm khuyến mãi khác)',
      promotionalGift: 'promotionGift_acer.png'
  ),
  ListProductLaptop(
      id: '5',
      installment: 'Trả góp 0%',
      name: 'HP15s \n fq1111TU \n i3 1005G1 \n (193R0PA)',
      cost: '11.390.000đ',
      costOnline:'11.190.000',
      url: 'hp15s.jpg',
      promotion1: 'Balo Laptop HP',
      promotion2: 'Mua kèm Microsoft 365 Personal 1 năm chỉ \n còn 790,000đ',
      promotion3: 'Mua Đồng hồ thời trang giảm 40%\n (không kèm khuyến mãi khác)',
      promotionalGift: 'promotionGift_hp.png'
  ),
];