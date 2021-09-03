import 'package:flutter/material.dart';
import 'package:speedupp/splash_screen.dart';
import 'package:speedupp/web_view_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 1,
            ),
            body: Container(child: SplashScreen())));
  }
}
