import 'package:flutter/material.dart';

class Authenication extends StatefulWidget {
  @override
  _AuthenicationState createState() => _AuthenicationState();
}

class _AuthenicationState extends State<Authenication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrange,
                  Colors.red,
                ],
              )
            ),
          ),
          title: Text('p-Shop',style: TextStyle(fontSize: 40,color: Colors.white),)
        ),
        body: Container(

        ),
      ),
    );
  }
}
