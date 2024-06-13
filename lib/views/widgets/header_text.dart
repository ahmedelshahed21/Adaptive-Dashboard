import 'package:dashboard/utils/styles_app.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(this.text,{
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: StylesApp.styleSemiBold20(context),
    );
  }
}