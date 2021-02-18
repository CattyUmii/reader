import 'package:flutter/material.dart';
import 'package:book_store/models/tab_navigation_item.dart';
import 'package:book_store/widgets/drawer/mainDrawer.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          for (final tabItem in TabNavigationItem.items) tabItem.page
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) => setState(() => _currentIndex = index),
        items: <BottomNavigationBarItem>[
          for (final tabItem in TabNavigationItem.items)
            new BottomNavigationBarItem(
                icon: tabItem.icon,
                label: tabItem.title
            )
        ]
      ),
    );
  }
}
