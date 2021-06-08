import 'package:best_moment_client/screens/search_result_screen/widget/drop_menu_with.dart';
import 'package:flutter/material.dart';

Widget ShowDropBox({
  @required BuildContext context,
  @required String data,
  @required bool ischange,
  @required bool ischange2,
  Function onTap,
  Function onChange,
}) {
  return Row(
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
                border: Border.all(color: Colors.black26)),
            width: MediaQuery.of(context).size.width * .35,
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  hintText: 'العرض',
                  hintStyle: TextStyle(
                    color: Color(0xffAAAAAA),
                    fontSize: 16,
                  )),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: DropMenuWithSearch(
              width: MediaQuery.of(context).size.width * .4,
              hintText: 'نوع التكييف',
              iconSet: Icons.arrow_back_ios,
              listData: ['Test'],
              onValueChanged: (v) {
                data = v;
              },
              dropdownValueData: data,
            ),
          ),
          Row(
            children: [
              Text(
                'مشب',
                style: TextStyle(fontSize: 18),
              ),
              Checkbox(
                checkColor: Colors.green,
                activeColor: Colors.white10,
                value: ischange,
                onChanged: onTap,
              ),
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
                border: Border.all(color: Colors.black26)),
            width: MediaQuery.of(context).size.width * .35,
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none,
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
                border: Border.all(color: Colors.black26)),
            width: MediaQuery.of(context).size.width * .35,
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  hintText: 'الطول',
                  hintStyle: TextStyle(
                    color: Color(0xffAAAAAA),
                    fontSize: 16,
                  )),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(right: 5),
            child: DropMenuWithSearch(
              width: MediaQuery.of(context).size.width * .4,
              hintText: 'نوع التكييف',
              iconSet: Icons.arrow_back_ios,
              listData: ['Test'],
              onValueChanged: (v) {
                data = v;
              },
              dropdownValueData: data,
            ),
          ),
          Row(
            children: [
              Text(
                'تدفئة',
                style: TextStyle(fontSize: 18),
              ),
              Checkbox(
                  checkColor: Colors.green,
                  activeColor: Colors.white10,
                  value: ischange2,
                  onChanged: onChange),
            ],
          )
        ],
      ),
    ],
  );
}
