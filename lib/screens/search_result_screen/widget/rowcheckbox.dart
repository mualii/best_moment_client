import 'package:flutter/material.dart';

Widget RowSelect({
  @required BuildContext context,
  @required String title,
  @required String imageName,
  @required int index,
  @required List list,
  @required Function onChange,
}) {
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
                  value: list[index].isChecked,
                  title: Icon(Icons.arrow_back_ios),
                  checkColor: Colors.green,
                  activeColor: Colors.white,
                  onChanged: onChange,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .35,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .02,
              ),
              Image.asset(imageName),
            ],
          ),
        ],
      ),
    ),
  );
}
