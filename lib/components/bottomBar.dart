import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              label: 'Home'
          ),
          new BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: 'Favourite'
          ),
          new BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bookmark),
              label: 'Bookmark'
          )
        ]
    );
  }
}
