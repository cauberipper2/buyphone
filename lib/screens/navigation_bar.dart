import 'package:buyphoneapp/screens/homepage_screen.dart';
import 'package:buyphoneapp/screens/menu_top_button.dart';
import 'package:buyphoneapp/screens/search_button.dart';
import 'package:flutter/material.dart';

import 'drawer_screen.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(right:15.0),
                child: MenuTopButton()),
            SearchButton(),
          ],
        ),
      ),
    );
  }
}
