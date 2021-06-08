import 'package:best_moment_client/models/cites_model.dart';
import 'package:flutter/material.dart';

class CityPickerScreen extends StatefulWidget {
  @override
  _CityPickerScreenState createState() => _CityPickerScreenState();
}

class _CityPickerScreenState extends State<CityPickerScreen> {
  TextEditingController _controller = TextEditingController();

  bool _isChecked = false;
  String pickedCity = 'الاقرب';
  List<City> cites = [
    City(
      name: 'الرياض',
    ),
    City(
      name: 'جدة',
    ),
    City(
      name: 'تابوك',
    ),
    City(
      name: 'المدينة',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width * .28);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 26),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context, pickedCity);
                      },
                      child: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: width * .28,
                  ),
                  Container(
                    child: Text(
                      'اختر المدينة',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                controller: _controller,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  hintText: 'بحث',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                  value: true,
                  onChanged: (value) {},
                  secondary: Text("الاقرب"),
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: Color(0xff30C6E0),
                  activeColor: Colors.transparent),
              ListView.builder(
                  itemCount: cites.length,
                  shrinkWrap: true,
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 20, top: 0),
                      child: InkWell(
                          onTap: () {
                            pickedCity = cites[i].name;
                            Navigator.pop(context, pickedCity);
                          },
                          child: Text(
                            cites[i].name,
                            textAlign: TextAlign.right,
                          )),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
