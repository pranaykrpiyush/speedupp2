import 'package:flutter/material.dart';
import 'package:speedupp/onBoarding_screen.dart';
import 'package:speedupp/splash_screen.dart';
import 'package:speedupp/web_view_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen = 0;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = await preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:
          initScreen == 0 || initScreen == null ? 'onBoard' : 'splash',
      routes: {
        'onBoard': (context) => OnBoardingScreen(),
        'splash': (context) => SplashScreen()
      },
    );
  }
}

// Scaffold(
// appBar: AppBar(
// toolbarHeight: 1,
// ),
// body: Container(child: SplashScreen())));
