import 'package:book_store/screens/homeScreen.dart';
import 'package:book_store/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {

  final String title = 'PDF Book Reader';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: this.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
