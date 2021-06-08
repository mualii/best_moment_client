import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.symmetric(vertical: 90),
        height: 240,
        alignment: Alignment.center,
        child: Image.asset('assets/images/logo.png'));
  }
}
