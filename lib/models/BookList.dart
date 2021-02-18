class BookModel {

  String title;
  String imageUrl;
  String author;
  BookModel({ this.title, this.imageUrl, this.author });
}

List bookList = <BookModel>[
  BookModel(
      imageUrl: 'assets/img/book1.jpg',
      title: 'FatherHood',
      author: 'Marcus'),
  BookModel(
      imageUrl: 'assets/img/book2.jpg',
      title: 'FatherHood',
      author: 'Marcus'),
  BookModel(
      imageUrl: 'assets/img/book3.jpg',
      title: 'FatherHood',
      author: 'Marcus'),
  BookModel(
      imageUrl: 'assets/img/book4.jpg',
      title: 'FatherHood',
      author: 'Marcus'),
  BookModel(
      imageUrl: 'assets/img/book5.jpg',
      title: 'FatherHood',
      author: 'Marcus'),
];