import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// for search result screen

Widget BuildCarouselSliderStack({
  @required int current,
  @required List imgList,
  @required Function onPageChanged,
  double StackHeight = 180,
  double Stackwidth = double.infinity,
  double Radius = 10.0,
  @required int NumberOfVies,
  Function OnTap,
}) {
  return Stack(
    children: [
      Container(
        height: StackHeight,
        width: Stackwidth,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: onPageChanged,
          ),
          items: imgList
              .map((item) => Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(Radius),
                        child: Image.asset(
                          item,
                          fit: BoxFit.fill,

// height: MediaQuery.of(context).size.height * .30,
                        )),
                  ))
              .toList(),
        ),
      ),
      Positioned(
        top: 10,
        left: 50,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff30C6E0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  "NumberOfVies",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.visibility,
                  color: Colors.white,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
      Positioned(
        top: 10,
        right: 50,
        child: InkWell(
          child: Icon(
            Icons.favorite_border_rounded,
            color: Colors.white,
            size: 30,
          ),
          onTap: OnTap,
        ),
      ),
      Positioned(
          bottom: 10,
          left: 50,
          child: Row(
            children: [
              Icon(
                Icons.star_sharp,
                color: Color(0xffFFE070),
              ),
              Text(
                '8.6 (17 تقييم)',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          )),
      Positioned(
          bottom: 10,
          right: 50,
          child: Column(
            children: [
              Text(
                'كود الوحدة',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((url) {
                  int index = imgList.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.only(bottom: 8, right: 5, top: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: current == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                }).toList(),
              )
            ],
          )),
    ],
  );
}
