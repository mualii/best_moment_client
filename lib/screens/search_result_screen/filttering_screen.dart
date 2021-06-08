import 'package:best_moment_client/models/checkboxmodel.dart';
import 'package:best_moment_client/screens/search_result_screen/widget/defaultFormField.dart';
import 'package:best_moment_client/screens/search_result_screen/widget/drop_menu_with.dart';
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
  List HighcheckBox = [
    CheckBoxModel(title: 'بيت شعر'),
    CheckBoxModel(title: 'المجالس'),
    CheckBoxModel(title: 'غرف الطعام'),
    CheckBoxModel(title: 'غرف الجلوس'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black26)),
                      width: MediaQuery.of(context).size.width * .40,
                      child: defaultFormField(
                        controller: nameOfHotelController,
                        type: TextInputType.name,
                        fontSize: 16,
                        hint: 'اسم الاستراحة',
                        color: Color(0xffAAAAAA),
                      )),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black26)),
                    width: MediaQuery.of(context).size.width * .40,
                    child: defaultFormField(
                      controller: codeOfHotelController,
                      type: TextInputType.number,
                      fontSize: 16,
                      hint: 'كود الاستراحة',
                      color: Color(0xffAAAAAA),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: HighcheckBox[0].isChecked
                          ? Color(0xffE6E6E6)
                          : Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: HighcheckBox[0].isChecked
                              ? Colors.black26
                              : Color(0xffE6E6E6))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 20,
                          ),
                          // CheckboxListTile(
                          //     value: HighcheckBox[0].isChecked,
                          //     shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(2),
                          //     ),
                          //     // rememberMe2,
                          //     onChanged: (val) {
                          //       setState(() {
                          //         HighcheckBox[0].isChecked =
                          //             !HighcheckBox[0].isChecked;
                          //       });
                          //     }),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .40,
                          ),
                          Text(
                            'بيت شعر',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Image.asset('assets/images/Path.png'),
                        ],
                      ),
                      HighcheckBox[0].isChecked
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(),
                                    SizedBox(height: 55),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.black26)),
                                      width: MediaQuery.of(context).size.width *
                                          .4,
                                      child: defaultFormField(
                                        controller: codeOfHotelController,
                                        type: TextInputType.number,
                                        fontSize: 16,
                                        hint: 'العرض',
                                        color: Color(0xffAAAAAA),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    DropMenuWithSearch(
                                      width: MediaQuery.of(context).size.width *
                                          .4,
                                      hintText: 'نوع التكييف',
                                      iconSet: Icons.arrow_back_ios,
                                      listData: ['Test'],
                                      onValueChanged: (v) {
                                        data = v;
                                      },
                                      dropdownValueData: data,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'مشب',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        CheckboxListTile(
                                            value: rememberMe2,
                                            onChanged: (val) {
                                              setState(() {
                                                rememberMe2 = !rememberMe2;
                                              });
                                            }),
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.black26)),
                                      width: MediaQuery.of(context).size.width *
                                          .35,
                                      child: defaultFormField(
                                        controller: codeOfHotelController,
                                        type: TextInputType.number,
                                        fontSize: 16,
                                        hint: 'عدد الاشخاص',
                                        color: Color(0xffAAAAAA),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.black26)),
                                      width: MediaQuery.of(context).size.width *
                                          .35,
                                      child: defaultFormField(
                                        controller: codeOfHotelController,
                                        type: TextInputType.number,
                                        fontSize: 16,
                                        hint: 'الطول',
                                        color: Color(0xffAAAAAA),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    DropMenuWithSearch(
                                      width: MediaQuery.of(context).size.width *
                                          .4,
                                      hintText: 'نوع التكييف',
                                      iconSet: Icons.arrow_back_ios,
                                      listData: ['Test'],
                                      onValueChanged: (v) {
                                        data = v;
                                      },
                                      dropdownValueData: data,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'تدفئة',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        CheckboxListTile(
                                            value: rememberMe3,
                                            onChanged: (val) {
                                              setState(() {
                                                rememberMe3 = !rememberMe3;
                                              });
                                            }),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )
                          : Container(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),

              // error
              Container(
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
                              value: HighcheckBox[1].isChecked,
                              title: Icon(Icons.arrow_back_ios),
                              checkColor: Colors.green,
                              activeColor: Colors.red,
                              onChanged: (val) {
                                setState(() {
                                  HighcheckBox[1].isChecked =
                                      !HighcheckBox[1].isChecked;
                                });
                              }),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .35,
                        ),
                        Text(
                          'المجالس',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .05,
                        ),
                        Image.asset('assets/images/boards.png'),
                      ],
                    ),
                    HighcheckBox[1].isChecked
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(),
                                  SizedBox(height: 55),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                            Border.all(color: Colors.black26)),
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          hintText: 'العرض',
                                          hintStyle: TextStyle(
                                            color: Color(0xffAAAAAA),
                                            fontSize: 16,
                                          )),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  DropMenuWithSearch(
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    hintText: 'نوع التكييف',
                                    iconSet: Icons.arrow_back_ios,
                                    listData: ['Test'],
                                    onValueChanged: (v) {
                                      data = v;
                                    },
                                    dropdownValueData: data,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'مشب',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Checkbox(
                                          value: rememberMe2,
                                          onChanged: (val) {
                                            setState(() {
                                              rememberMe2 = !rememberMe2;
                                            });
                                          }),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                            Border.all(color: Colors.black26)),
                                    width:
                                        MediaQuery.of(context).size.width * .35,
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          hintText: 'عدد الاشخاص',
                                          hintStyle: TextStyle(
                                            color: Color(0xffAAAAAA),
                                            fontSize: 16,
                                          )),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                            Border.all(color: Colors.black26)),
                                    width:
                                        MediaQuery.of(context).size.width * .35,
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          hintText: 'الطول',
                                          hintStyle: TextStyle(
                                            color: Color(0xffAAAAAA),
                                            fontSize: 16,
                                          )),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  DropMenuWithSearch(
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    hintText: 'نوع التكييف',
                                    iconSet: Icons.arrow_back_ios,
                                    listData: ['Test'],
                                    onValueChanged: (v) {
                                      data = v;
                                    },
                                    dropdownValueData: data,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'تدفئة',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Checkbox(
                                          value: rememberMe3,
                                          onChanged: (val) {
                                            setState(() {
                                              rememberMe3 = !rememberMe3;
                                            });
                                          }),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        : Container(),
                  ],
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: HighcheckBox[2].isChecked
              //             ? Color(0xffE6E6E6)
              //             : Color(0xffFFFFFF),
              //         borderRadius: BorderRadius.circular(10),
              //         border: Border.all(
              //             color: HighcheckBox[2].isChecked
              //                 ? Colors.black26
              //                 : Color(0xffE6E6E6))),
              //     child: Column(
              //       children: [
              //         Row(
              //           children: [
              //             Icon(
              //               Icons.arrow_drop_down_outlined,
              //               size: 20,
              //             ),
              //             CheckboxListTile(
              //                 value: rememberMe2,
              //                 onChanged: (val) {
              //                   setState(() {
              //                     HighcheckBox[2].isChecked =
              //                         !HighcheckBox[2].isChecked;
              //                   });
              //                 }),
              //             SizedBox(
              //               width: MediaQuery.of(context).size.width * .40,
              //             ),
              //             Text(
              //               'غرف الطعام',
              //               style: TextStyle(fontSize: 18),
              //             ),
              //             SizedBox(
              //               width: MediaQuery.of(context).size.width * .05,
              //             ),
              //             Image.asset('assets/images/Shape.png'),
              //           ],
              //         ),
              //         HighcheckBox[2].isChecked
              //             ? Row(
              //                 mainAxisAlignment: MainAxisAlignment.end,
              //                 children: [
              //                   Column(
              //                     // crossAxisAlignment: CrossAxisAlignment.end,
              //                     children: [
              //                       Container(),
              //                       SizedBox(height: 55),
              //                       Container(
              //                         decoration: BoxDecoration(
              //                             color: Colors.white,
              //                             borderRadius:
              //                                 BorderRadius.circular(10),
              //                             border: Border.all(
              //                                 color: Colors.black26)),
              //                         width: MediaQuery.of(context).size.width *
              //                             .4,
              //                         child: TextFormField(
              //                           textAlign: TextAlign.center,
              //                           decoration: InputDecoration(
              //                               contentPadding: EdgeInsets.zero,
              //                               hintText: 'العرض',
              //                               hintStyle: TextStyle(
              //                                 color: Color(0xffAAAAAA),
              //                                 fontSize: 16,
              //                               )),
              //                         ),
              //                       ),
              //                       SizedBox(height: 5),
              //                       DropMenuWithSearch(
              //                         width: MediaQuery.of(context).size.width *
              //                             .4,
              //                         hintText: 'نوع التكييف',
              //                         iconSet: Icons.arrow_back_ios,
              //                         listData: ['Test'],
              //                         onValueChanged: (v) {
              //                           data = v;
              //                         },
              //                         dropdownValueData: data,
              //                       ),
              //                       Row(
              //                         children: [
              //                           Text(
              //                             'مشب',
              //                             style: TextStyle(fontSize: 18),
              //                           ),
              //                           CheckboxListTile(
              //                               value: rememberMe2,
              //                               onChanged: (val) {
              //                                 setState(() {
              //                                   rememberMe2 = !rememberMe2;
              //                                 });
              //                               }),
              //                         ],
              //                       )
              //                     ],
              //                   ),
              //                   Spacer(),
              //                   Column(
              //                     // crossAxisAlignment: CrossAxisAlignment.end,
              //                     children: [
              //                       Container(
              //                         decoration: BoxDecoration(
              //                             color: Colors.white,
              //                             borderRadius:
              //                                 BorderRadius.circular(10),
              //                             border: Border.all(
              //                                 color: Colors.black26)),
              //                         width: MediaQuery.of(context).size.width *
              //                             .35,
              //                         child: TextFormField(
              //                           textAlign: TextAlign.center,
              //                           decoration: InputDecoration(
              //                               contentPadding: EdgeInsets.zero,
              //                               hintText: 'عدد الاشخاص',
              //                               hintStyle: TextStyle(
              //                                 color: Color(0xffAAAAAA),
              //                                 fontSize: 16,
              //                               )),
              //                         ),
              //                       ),
              //                       SizedBox(height: 5),
              //                       Container(
              //                         decoration: BoxDecoration(
              //                             color: Colors.white,
              //                             borderRadius:
              //                                 BorderRadius.circular(10),
              //                             border: Border.all(
              //                                 color: Colors.black26)),
              //                         width: MediaQuery.of(context).size.width *
              //                             .35,
              //                         child: TextFormField(
              //                           textAlign: TextAlign.center,
              //                           decoration: InputDecoration(
              //                               contentPadding: EdgeInsets.zero,
              //                               hintText: 'الطول',
              //                               hintStyle: TextStyle(
              //                                 color: Color(0xffAAAAAA),
              //                                 fontSize: 16,
              //                               )),
              //                         ),
              //                       ),
              //                       SizedBox(height: 5),
              //                       DropMenuWithSearch(
              //                         width: MediaQuery.of(context).size.width *
              //                             .4,
              //                         hintText: 'نوع التكييف',
              //                         iconSet: Icons.arrow_back_ios,
              //                         listData: ['Test'],
              //                         onValueChanged: (v) {
              //                           data = v;
              //                         },
              //                         dropdownValueData: data,
              //                       ),
              //                       Row(
              //                         children: [
              //                           Text(
              //                             'تدفئة',
              //                             style: TextStyle(fontSize: 18),
              //                           ),
              //                           CheckboxListTile(
              //                               value: rememberMe3,
              //                               onChanged: (val) {
              //                                 setState(() {
              //                                   rememberMe3 = !rememberMe3;
              //                                 });
              //                               }),
              //                         ],
              //                       )
              //                     ],
              //                   ),
              //                 ],
              //               )
              //             : Container(),
              //         SizedBox(
              //           height: 20,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: HighcheckBox[3].isChecked
              //             ? Color(0xffE6E6E6)
              //             : Color(0xffFFFFFF),
              //         borderRadius: BorderRadius.circular(10),
              //         border: Border.all(
              //             color: HighcheckBox[3].isChecked
              //                 ? Colors.black26
              //                 : Color(0xffE6E6E6))),
              //     child: Column(
              //       children: [
              //         Row(
              //           children: [
              //             Icon(
              //               Icons.arrow_drop_down_outlined,
              //               size: 20,
              //             ),
              //             CheckboxListTile(
              //                 value: rememberMe2,
              //                 onChanged: (val) {
              //                   setState(() {
              //                     HighcheckBox[3].isChecked =
              //                         !HighcheckBox[3].isChecked;
              //                   });
              //                 }),
              //             SizedBox(
              //               width: MediaQuery.of(context).size.width * .40,
              //             ),
              //             Text(
              //               'غرف الجلوس',
              //               style: TextStyle(fontSize: 18),
              //             ),
              //             SizedBox(
              //               width: MediaQuery.of(context).size.width * .05,
              //             ),
              //             Image.asset('assets/images/dinar.png'),
              //           ],
              //         ),
              //         HighcheckBox[3].isChecked
              //             ? Row(
              //                 mainAxisAlignment: MainAxisAlignment.end,
              //                 children: [
              //                   Column(
              //                     // crossAxisAlignment: CrossAxisAlignment.end,
              //                     children: [
              //                       Container(),
              //                       SizedBox(height: 55),
              //                       Container(
              //                         decoration: BoxDecoration(
              //                             color: Colors.white,
              //                             borderRadius:
              //                                 BorderRadius.circular(10),
              //                             border: Border.all(
              //                                 color: Colors.black26)),
              //                         width: MediaQuery.of(context).size.width *
              //                             .4,
              //                         child: TextFormField(
              //                           textAlign: TextAlign.center,
              //                           decoration: InputDecoration(
              //                               contentPadding: EdgeInsets.zero,
              //                               hintText: 'العرض',
              //                               hintStyle: TextStyle(
              //                                 color: Color(0xffAAAAAA),
              //                                 fontSize: 16,
              //                               )),
              //                         ),
              //                       ),
              //                       SizedBox(height: 5),
              //                       DropMenuWithSearch(
              //                         width: MediaQuery.of(context).size.width *
              //                             .4,
              //                         hintText: 'نوع التكييف',
              //                         iconSet: Icons.arrow_back_ios,
              //                         listData: ['Test'],
              //                         onValueChanged: (v) {
              //                           data = v;
              //                         },
              //                         dropdownValueData: data,
              //                       ),
              //                       Row(
              //                         children: [
              //                           Text(
              //                             'مشب',
              //                             style: TextStyle(fontSize: 18),
              //                           ),
              //                           CheckboxListTile(
              //                               value: rememberMe2,
              //                               onChanged: (val) {
              //                                 setState(() {
              //                                   rememberMe2 = !rememberMe2;
              //                                 });
              //                               }),
              //                         ],
              //                       )
              //                     ],
              //                   ),
              //                   Spacer(),
              //                   Column(
              //                     // crossAxisAlignment: CrossAxisAlignment.end,
              //                     children: [
              //                       Container(
              //                         decoration: BoxDecoration(
              //                             color: Colors.white,
              //                             borderRadius:
              //                                 BorderRadius.circular(10),
              //                             border: Border.all(
              //                                 color: Colors.black26)),
              //                         width: MediaQuery.of(context).size.width *
              //                             .35,
              //                         child: TextFormField(
              //                           textAlign: TextAlign.center,
              //                           decoration: InputDecoration(
              //                               contentPadding: EdgeInsets.zero,
              //                               hintText: 'عدد الاشخاص',
              //                               hintStyle: TextStyle(
              //                                 color: Color(0xffAAAAAA),
              //                                 fontSize: 16,
              //                               )),
              //                         ),
              //                       ),
              //                       SizedBox(height: 5),
              //                       Container(
              //                         decoration: BoxDecoration(
              //                             color: Colors.white,
              //                             borderRadius:
              //                                 BorderRadius.circular(10),
              //                             border: Border.all(
              //                                 color: Colors.black26)),
              //                         width: MediaQuery.of(context).size.width *
              //                             .35,
              //                         child: TextFormField(
              //                           textAlign: TextAlign.center,
              //                           decoration: InputDecoration(
              //                               contentPadding: EdgeInsets.zero,
              //                               hintText: 'الطول',
              //                               hintStyle: TextStyle(
              //                                 color: Color(0xffAAAAAA),
              //                                 fontSize: 16,
              //                               )),
              //                         ),
              //                       ),
              //                       SizedBox(height: 5),
              //                       DropMenuWithSearch(
              //                         width: MediaQuery.of(context).size.width *
              //                             .4,
              //                         hintText: 'نوع التكييف',
              //                         iconSet: Icons.arrow_back_ios,
              //                         listData: ['Test'],
              //                         onValueChanged: (v) {
              //                           data = v;
              //                         },
              //                         dropdownValueData: data,
              //                       ),
              //                       Row(
              //                         children: [
              //                           Text(
              //                             'تدفئة',
              //                             style: TextStyle(fontSize: 18),
              //                           ),
              //                           CheckboxListTile(
              //                               value: rememberMe3,
              //                               onChanged: (val) {
              //                                 setState(() {
              //                                   rememberMe3 = !rememberMe3;
              //                                 });
              //                               }),
              //                         ],
              //                       )
              //                     ],
              //                   ),
              //                 ],
              //               )
              //             : Container(),
              //         SizedBox(
              //           height: 20,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              SizedBox(
                height: 20,
              ),
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
                  // Container(
                  //   width: MediaQuery.of(context).size.width * .55,
                  //   height: 60.0,
                  //   child: MaterialButton(
                  //     onPressed: ,
                  //     child: Text(
                  //       'اظهر النتائج',
                  //       style: TextStyle(color: Colors.white, fontSize: 20),
                  //     ),
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20.0),
                  //     color: Color(0xff30C6E0),
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
} //كود الاستراحة/
