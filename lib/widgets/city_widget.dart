import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  final title;
  final image;
  CityWidget({this.image, this.title});

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
              bottom: 6,
              left: 220,
              right: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                height: 26,
                padding: EdgeInsets.only(bottom: 10, right: 10),

                alignment: Alignment.bottomRight,
                width: 70,
                // color: Colors.blue,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
