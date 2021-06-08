import 'package:flutter/foundation.dart';

class CheckBoxModel {
  String title;
  bool isChecked;
  String photo;
  CheckBoxModel({@required this.title, this.isChecked = false, this.photo});
}
