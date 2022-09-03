import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  CustomWidget(
      {Key? key,
      this.validator,
      this.hinttext,
      this.controller,
      this.pIcon,
      this.text})
      : super(key: key);
  dynamic validator;
  TextEditingController? controller;
  IconData? pIcon;
  String? hinttext;
  bool? text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: Container(
            margin: EdgeInsets.only(right: 6),
            height: 50,
            color: Color(0XFF00264D),
            child: Icon(
              pIcon,
              color: Colors.white,
            ),
          ),
          contentPadding: EdgeInsets.only(top: 20, right: 20, left: 70),
          hintText: hinttext,
          hintStyle: TextStyle(color: Color(0XFF808EA2)),
          filled: true,
          fillColor: Color(0XFF385273)),
      obscureText: text!,
    );
  }
}
