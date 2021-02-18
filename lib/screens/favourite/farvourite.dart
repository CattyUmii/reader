import 'package:book_store/util/utils.dart';
import 'package:book_store/widgets/drawer/mainDrawer.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
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
