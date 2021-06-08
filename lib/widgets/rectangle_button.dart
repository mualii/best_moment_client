import 'package:flutter/material.dart';

class RectButton extends StatelessWidget {
  final title;
  RectButton({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xff30C6E0), borderRadius: BorderRadius.circular(10)),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
