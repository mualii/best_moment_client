import 'package:best_moment_client/models/checkboxmodel.dart';
import 'package:best_moment_client/screens/search_result_screen/widget/drop_menu_with.dart';
import 'package:best_moment_client/screens/search_result_screen/widget/rowcheckbox.dart';
import 'package:best_moment_client/screens/search_result_screen/widget/show_drop_box.dart';
import 'package:best_moment_client/widgets/defaultButton.dart';
import 'package:flutter/material.dart';

class FiltterScreen extends StatefulWidget {
  @override
  _FiltterScreenState createState() => _FiltterScreenState();
}

class _FiltterScreenState extends State<FiltterScreen> {
  var nameOfHotelController = TextEditingController();
  var codeOfHotelController = TextEditingController();
  bool rememberMe1 = false;
  bool rememberMe2 = false;
  bool rememberMe3 = false;
  bool rememberMe4 = false;
  List HighcheckBox = [
    CheckBoxModel(title: 'بيت شعر', photo: 'assets/images/Path.png'),
    CheckBoxModel(title: 'المجالس', photo: 'assets/images/boards.png'),
    CheckBoxModel(title: 'غرف الطعام', photo: 'assets/images/Shape.png'),
    CheckBoxModel(title: 'غرف الجلوس', photo: 'assets/images/dinar.png'),
  ];
  TextEditingController hotelNameController = TextEditingController();

  TextEditingController hotelIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String data = '';

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'تنقية',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'بحث متقدم',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.search),
                ],
              ),
              DropMenuWithSearch(
                width: MediaQuery.of(context).size.width * .85,
                hintText: 'المنطقة',
                iconSet: Icons.arrow_back_ios,
                listData: ['Test'],
                onValueChanged: (v) {
                  data = v;
                },
                dropdownValueData: data,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropMenuWithSearch(
                    width: MediaQuery.of(context).size.width * .40,
                    hintText: 'الحي',
                    iconSet: Icons.arrow_back_ios,
                    listData: ['Test'],
                    onValueChanged: (v) {
                      data = v;
                    },
                    dropdownValueData: data,
                  ),
                  DropMenuWithSearch(
                    width: MediaQuery.of(context).size.width * .40,
                    hintText: 'المدن',
                    iconSet: Icons.arrow_back_ios,
                    listData: ['Test'],
                    onValueChanged: (v) {
                      data = v;
                    },
                    dropdownValueData: data,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              RowCheckBox(context: context, data: data, index: 0),
              RowSelect(
                onChange: (val) {
                  setState(() {
                    HighcheckBox[1].isChecked = !HighcheckBox[1].isChecked;
                  });
                },
                list: HighcheckBox,
                index: 1,
                context: context,
                title: HighcheckBox[1].title,
                imageName: HighcheckBox[1].photo,
              ),
              RowSelect(
                list: HighcheckBox,
                onChange: (val) {
                  setState(() {
                    HighcheckBox[2].isChecked = !HighcheckBox[2].isChecked;
                  });
                },
                index: 2,
                context: context,
                title: HighcheckBox[2].title,
                imageName: HighcheckBox[2].photo,
              ),
              RowSelect(
                onChange: (val) {
                  setState(() {
                    HighcheckBox[3].isChecked = !HighcheckBox[3].isChecked;
                  });
                },
                list: HighcheckBox,
                index: 3,
                context: context,
                title: HighcheckBox[3].title,
                imageName: HighcheckBox[3].photo,
              ),

              SizedBox(height: 20),
              //For result and delete
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .25,
                    height: 60.0,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Color(0xffD4D4D4), width: 2)),
                      onPressed: () {},
                      child: Text(
                        'مسح',
                        style:
                            TextStyle(color: Color(0xff8A8A8A), fontSize: 20),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  Spacer(),
                  defaultButton(
                    width: MediaQuery.of(context).size.width * .55,
                    height: 60.0,
                    function: () {},
                    text: 'اظهر النتائج',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

// ======================   Row Check  Box =========================
  Padding RowCheckBox({BuildContext context, String data, int index}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffE6E6E6)),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 100,
                  child: CheckboxListTile(
                      value: HighcheckBox[index].isChecked,
                      title: Icon(Icons.arrow_back_ios),
                      checkColor: Colors.green,
                      activeColor: Colors.white10,
                      onChanged: (val) {
                        setState(() {
                          HighcheckBox[index].isChecked =
                              !HighcheckBox[index].isChecked;
                        });
                      }),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .35,
                ),
                Text(
                  HighcheckBox[index].title,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .05,
                ),
                Image.asset(HighcheckBox[index].photo),
              ],
            ),
            HighcheckBox[index].isChecked
                ? ShowDropBox(
                    context: context,
                    data: data,
                    ischange: rememberMe2,
                    ischange2: rememberMe3,
                    onTap: (val) {
                      setState(() {
                        rememberMe2 = !rememberMe2;
                      });
                    },
                    onChange: (val) {
                      setState(() {
                        rememberMe3 = !rememberMe3;
                      });
                    })
                : Container(),
          ],
        ),
      ),
    );
  }
// ======================   Show Drop Box =========================

} //كود الاستراحة/
