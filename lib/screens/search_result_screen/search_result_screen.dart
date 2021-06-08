import 'package:best_moment_client/models/checkboxmodel.dart';
import 'package:best_moment_client/screens/search_result_screen/widget/BuildCarouselSliderStackClass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchResultScreen extends StatefulWidget {
  @override
  _SearchResultScreenState createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  List<CheckBoxModel> checkBoxList = [
    CheckBoxModel(title: 'الافتراضي'),
    CheckBoxModel(title: 'الاقرب'),
    CheckBoxModel(title: 'الاكثر مشاهدة'),
    CheckBoxModel(title: 'اقل الاسعار'),
    CheckBoxModel(title: 'اعلى الاسعار'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        backgroundColor: Color(0xff2EB3CA),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 16.0),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios),
                Spacer(),
                Column(
                  children: [
                    Text(
                      "مدينة الرياض ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                    Text(
                      "من 03 -12 ابريل (9 ليالي)",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(),
              ],
            ),
          ),
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * .140),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print('hi');
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/search_Result_icon.png'),
                            Text(
                              'تنقية',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      displayBottomSheet(context);
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'فرز',
                              style: TextStyle(fontSize: 20),
                            ),
                            Image.asset('assets/images/filter.png')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => BuildSearchResultList(
                    photos: [
                      'https://cf.bstatic.com/xdata/images/hotel/max1280x900/61925213.jpg?k=bf1cc52a3af6d1fc181f31a0bb8ea401cfd1a3fc62c99ff8b6378d5f674e9d6e&o=&hp=1',
                      'https://cf.bstatic.com/xdata/images/hotel/max1280x900/61925213.jpg?k=bf1cc52a3af6d1fc181f31a0bb8ea401cfd1a3fc62c99ff8b6378d5f674e9d6e&o=&hp=1',
                    ],
                    context: context,
                    views: 66,
                    rate: 4.5,
                    id: 4412,
                    booking: 4,
                    location: 'استراحة مميزة باطلالة على البحر',
                    oldPrice: 867,
                    price: 700,
                    totalPrice: 5992,
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget BuildSearchResultList({
    @required BuildContext context,
    @required List<String> photos,
    @required int views,
    @required double rate,
    @required int id,
    String title = ('كود الوحدة'),
    @required int booking,
    @required String location,
    @required int oldPrice,
    @required int price,
    @required int totalPrice,
    bool isFavorite = false,
  }) {
    // print(
    //  ,
    // );
    int _current = 0;
    List imgList = [
      "assets/images/hotel1.png",
      "assets/images/hotel2.png",
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: BuildCarouselSliderStack(
            StackHeight: MediaQuery.of(context).size.width * .46901,
            current: _current,
            imgList: imgList,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            NumberOfVies: 555,
          ),
        ),
        Text(
          'استراحة مميزة باطلالة على البحر',
          style: TextStyle(fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '1653 Fepme Parkway',
              style: TextStyle(fontSize: 20),
            ),
            Icon(
              Icons.location_pin,
              color: Color(0xffDDDDDD),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'تم حجزه 6 مرات هذا الأسبوع',
              style: TextStyle(fontSize: 20),
            ),
            Icon(
              Icons.check_circle_sharp,
              color: Color(0xffDDDDDD),
            ),
          ],
        ),
      ],
    );
  }

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        enableDrag: true,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
        ),
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height * .45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0)),
              color: Color(0xffFFFFFF),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'فرز',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              checkBoxList[index].isChecked =
                                  !checkBoxList[index].isChecked;
                            });
                            Navigator.of(context).pop();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              checkBoxList[index].isChecked
                                  ? Icon(
                                      Icons.check,
                                      color: Color(0xff2EB3CA),
                                    )
                                  : Container(),
                              Spacer(),
                              Text(
                                checkBoxList[index].title,
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    separatorBuilder: (context, index) => Divider(
                      height: 10,
                    ),
                    itemCount: checkBoxList.length,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
