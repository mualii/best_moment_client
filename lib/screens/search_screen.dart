import 'package:best_moment_client/models/cites_model.dart';
import 'package:best_moment_client/models/rent.dart';
import 'package:best_moment_client/screens/citypicker_screen.dart';
import 'package:best_moment_client/widgets/city_widget.dart';
import 'package:best_moment_client/widgets/rectangle_button.dart';
import 'package:best_moment_client/widgets/rent_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'notifacation_screen/notifacations_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String city = "الرياض";

  List<Rent> rentItems = [
    Rent(image: 'assets/images/image1.png', title: 'الشاليهات و الاستراحات'),
    Rent(image: 'assets/images/image2.png', title: "المعسكرات")
  ];
  List<City> cities = [
    City(image: 'assets/images/ryad.png', name: 'الرياض'),
    City(image: 'assets/images/jeddah.png', name: "جدة")
  ];
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height * .17);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 26),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => NotifacationScreen()));
                    },
                    child: Container(
                      child: Image.asset('assets/images/bell.png'),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'الموقع',
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () async {
                              final newCity = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => CityPickerScreen()));
                              setState(() {
                                if (newCity != null) city = newCity;
                              });
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(Icons.arrow_drop_down_sharp),
                                  Text(
                                    city,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xff30C6E0),
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Text(
                        'حدد تاريخ الحجز',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'المزيد',
                    style: TextStyle(fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Text(
                      'البحث عن الايجارات',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 140,
                child: ListView.builder(
                    itemCount: rentItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    itemBuilder: (ctx, i) => RentWidget(
                          image: rentItems[i].image,
                          title: rentItems[i].title,
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'المزيد',
                    style: TextStyle(fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Text(
                      'البحث عن مدينة',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 140,
                child: ListView.builder(
                    itemCount: cities.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    itemBuilder: (ctx, i) => CityWidget(
                          image: cities[i].image,
                          title: cities[i].name,
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Text(
                    'الخصائص',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.payment,
                      color: Color(0xff30C6E0),
                    ),
                    Icon(
                      Icons.done,
                      color: Color(0xff30C6E0),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xff30C6E0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.globe,
                      color: Color(0xff30C6E0),
                    ),
                    Icon(
                      Icons.phone_outlined,
                      color: Color(0xff30C6E0),
                    ),
                    Icon(
                      Icons.thumb_up_outlined,
                      color: Color(0xff30C6E0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * .18,
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Text(
                    ' أضف استارحتك معنا',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                height: height * .21,
                child: Image.asset('assets/images/home.png'),
              ),
              SizedBox(
                height: height * .17,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: RectButton(
                  title: 'اضف استراحتك',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
