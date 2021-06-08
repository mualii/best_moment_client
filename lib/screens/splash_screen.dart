import 'package:flutter/material.dart';

import 'intro_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx) => IntroScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size.width * .5);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: height * .26,
          width: width * .5,
        ),
      ),
    );
  }
}
