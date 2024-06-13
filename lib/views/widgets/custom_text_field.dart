import 'package:dashboard/utils/styles_app.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  const CustomTextField({super.key, required this.hintText});

  final String hintText;


  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: StylesApp.styleRegular16(context).copyWith(
          color: const Color(0xffAAAAAA)
        ),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xffFAFAFA)
        ),
        borderRadius: BorderRadius.circular(12)
      );
  }

}