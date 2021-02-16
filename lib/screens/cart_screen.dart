import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  final String id;
  final String name;
  final String url;
  final String cost;

  CartScreen({this.id,this.url,this.cost, this.name});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Gio hang'),
          ),
        ),
    );

  }
}
