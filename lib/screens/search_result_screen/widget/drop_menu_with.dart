import 'package:flutter/material.dart';
import 'package:search_choices/search_choices.dart';

class DropMenuWithSearch extends StatelessWidget {
  DropMenuWithSearch({
    @required this.listData,
    @required this.iconSet,
    @required this.hintText,
    @required this.onValueChanged,
    @required this.dropdownValueData,
    @required this.width,
  });
  double width;
  List listData;
  var iconSet;
  String hintText;
  String dropdownValueData;
  ValueChanged<String> onValueChanged;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //  alignment: Alignment.center,
        //  padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 10),
        // padding: EdgeInsets.symmetric(horizontal: 8),
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black45)),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: SearchChoices.single(
            items: listData.map<DropdownMenuItem>((value) {
              return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        value,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ));
            }).toList(),
            value: dropdownValueData,
            icon: Icon(
              Icons.arrow_drop_down,
              color: Color.fromRGBO(29, 174, 209, 1),
              size: 35,
            ),
            underline: Container(
              height: 0,
              color: Colors.white,
            ),
            searchHint: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  iconSet,
                  color: Color(0xff2C2B53),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  hintText,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            hint: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  iconSet,
                  color: Color(0xff2C2B53),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  hintText,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            onChanged: (value) {
              //    dropdownValueCity = value;

              dropdownValueData = value;
              print(dropdownValueData);
              // to can sent value to other class
              onValueChanged(dropdownValueData);
            },
            isExpanded: true,
          ),
        ),
      ),
    );
  }
}
