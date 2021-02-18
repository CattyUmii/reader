import 'package:flutter/material.dart';
import 'package:book_store/models/BookList.dart';

class DetailScreen extends StatelessWidget {

  //Declare a field that holds the BookModel
  final BookModel bookModel;

  //In the constructor, require a BookModel that lsi down for all types of book
  DetailScreen({Key key, @required this.bookModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${bookModel.title}"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text("This book was written by ${bookModel.author}")
      ),
    );
  }
}
