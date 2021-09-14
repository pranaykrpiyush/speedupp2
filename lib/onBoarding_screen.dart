import 'package:introduction_screen/introduction_screen.dart';

import 'package:flutter/material.dart';
import 'package:speedupp/web_view_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      done: TextButton(
        child: Text('Done'),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => WebViewScreen()));
        },
      ),
      skip: TextButton(
        child: Text('Skip'),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => WebViewScreen()));
        },
      ),
      next: Icon(Icons.arrow_forward),
      showSkipButton: true,
      showDoneButton: true,
      //  showNextButton: true,
      nextColor: Color.fromARGB(255, 55, 55, 193),
      color: Colors.white,
      onDone: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WebViewScreen()));
      },
      onSkip: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => WebViewScreen()));
      },
      pages: [
        PageViewModel(
          title: 'Grow on YouTube',
          decoration: PageDecoration(
            bodyTextStyle: TextStyle(fontSize: 20.0),
          ),
          //decoration: PageDec,
          body: 'Exchange Likes, Comments, Subscribers and more',
          image: Image.asset('images/onBoarding1new.jpg'),
        ),
        PageViewModel(
          decoration: PageDecoration(
            bodyTextStyle: TextStyle(fontSize: 20.0),
          ),
          title: 'No more wait, build free subscribers',
          body: 'Simply signup, add your task and see magic',
          image: Image.asset('images/onBoarding2new.jpg'),
        ),
        PageViewModel(
          title: 'Earn points and withdraw cash',
          body:
              'Refer and earn upto 10000 points and earn by engaging with content',
          image: Image.asset('images/onBoarding3.jpg'),
          decoration: PageDecoration(
            bodyTextStyle: TextStyle(fontSize: 20.0),
          ),
        ),
      ],
    );
  }
}
