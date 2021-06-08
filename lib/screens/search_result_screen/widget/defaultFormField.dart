import 'package:flutter/material.dart';

Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  Function onSubmit,
  Function onChange,
  Function onTap,
  bool isPassword = false,
  Function validate,
  @required double fontSize,
  String label,
  @required String hint,
  @required Color color,
  IconData prefix,
  IconData suffix,
  Function suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: hint,
        hintStyle: TextStyle(
          color: color,
          fontSize: fontSize,
        ),
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );
//
// TextFormField(
// textAlign: TextAlign.center,
// decoration: InputDecoration(
// contentPadding: EdgeInsets.zero,
// hintText: 'العرض',
// hintStyle: TextStyle(
// color: Color(0xffAAAAAA),
// fontSize: 16,
// )),
// ),
