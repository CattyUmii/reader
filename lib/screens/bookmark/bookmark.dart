import 'package:book_store/util/utils.dart';
import 'package:book_store/widgets/drawer/mainDrawer.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatefulWidget {
  @override
  _BookmarkScreenState createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          Utils.silverAppbar()
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
