import 'package:flutter/material.dart';

class RentWidget extends StatelessWidget {
  final title;
  final image;
  RentWidget({this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 40,
                padding: EdgeInsets.only(bottom: 4, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffffffff).withOpacity(.1),
                      Color(0xff000000).withOpacity(.5),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                alignment: Alignment.bottomRight,
                width: double.infinity,
                // color: Colors.blue,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
