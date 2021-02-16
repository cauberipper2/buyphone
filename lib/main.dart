import 'package:buyphoneapp/screens/authenication.dart';
import 'package:buyphoneapp/screens/homepage_screen.dart';
import 'package:buyphoneapp/screens/login.dart';
import 'package:buyphoneapp/screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: HomePageScreen(),
        ),
    );
  }
}

