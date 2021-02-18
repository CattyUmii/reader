import 'package:book_store/screens/detailScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:book_store/models/BookList.dart';

class ForYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Text(
            'Top Reader',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 210.0,
          padding: EdgeInsets.only(left: 15),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: bookList.length,
            itemBuilder: (BuildContext context, int index) {
              BookModel books = bookList[index];
              return InkWell(
                child: Container(
                  width: 150,
                  height: 210,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 130,
                        width: 100,
                        child: Image.asset(
                          books.imageUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        books.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'by ${books.author}',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(bookModel: bookList[index])
                      ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
