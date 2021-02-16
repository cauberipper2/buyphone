import 'package:flutter/material.dart';
import 'drawer_screen.dart';

class MenuTopButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.menu),
        color: Colors.white,
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DrawerScreen()));
        },
      ),
    );
  }
}
