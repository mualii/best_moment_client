import 'package:flutter/material.dart';

Widget defaultButton({
  @required double width,
  @required double height,
  double radius = 20.0,
  @required Function function,
  @required String text,
}) =>
    Container(
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: Color(0xff30C6E0),
      ),
    );
