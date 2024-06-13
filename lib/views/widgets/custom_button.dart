import 'package:dashboard/utils/styles_app.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor, required this.text});

  final Color? backgroundColor;
  final Color? textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          onPressed: () {},
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(text,
              style: StylesApp.styleSemiBold18(context).copyWith(
                color: textColor
              ),
            ),
          )),
    );
  }
}
