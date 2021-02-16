import 'package:flutter/material.dart';
import '../listProduct.dart';

class ItemCard extends StatelessWidget {
  final ListProduct product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press, ListProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.url),
              ),
            ),
          Text(
            "\$${product.cost}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}