import 'package:book_store/screens/bookmark/bookmark.dart';
import 'package:book_store/screens/favourite/farvourite.dart';
import 'package:book_store/screens/home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabNavigationItem {
  final Widget page;
  final String title;
  final Icon icon;

  //init
  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon
  });

  static List<TabNavigationItem> get items => [
    TabNavigationItem(
      page: HomeScreen(),
      icon: Icon(FontAwesomeIcons.home),
      title: "Home",
    ),

    TabNavigationItem(
      page: FavouriteScreen(),
      icon: Icon(FontAwesomeIcons.heart),
      title: "Favourite",
    ),

    TabNavigationItem(
      page: BookmarkScreen(),
      icon: Icon(FontAwesomeIcons.bookmark),
      title: "Bookmark",
    ),

  ];

}