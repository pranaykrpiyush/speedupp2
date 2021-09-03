import 'package:flutter/material.dart';

import 'dart:async';

import 'package:speedupp/web_view_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3, microseconds: 100),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WebViewScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Center(
          child: Image.asset('images/lo.jpg'),
        ),
      ),
    );
  }
}
