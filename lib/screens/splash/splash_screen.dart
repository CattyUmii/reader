import 'dart:async';
import 'file:///D:/FlutterProject/reader/reader/lib/screens/home/homeScreen.dart';
import 'package:book_store/screens/home/start_screen.dart';
import 'package:book_store/util/router.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimeout() {
    return new Timer(Duration(seconds: 2), handleTimeout);
  }

  void handleTimeout() {
    changeScreen();
  }

  changeScreen() async {
    MyRouter.pushPageReplacement(
      context,
      StartScreen(),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/img/splash/img_splash_screen.png",
        ),
      ),
    );
  }
}