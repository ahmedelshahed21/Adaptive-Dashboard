import 'package:flutter/material.dart';

class CustomBackgroundWidget extends StatelessWidget{
  const CustomBackgroundWidget ({super.key,required this.child, this.paddingValue});
  final Widget child;
  final double? paddingValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
        ),
        padding: EdgeInsets.all(paddingValue??20),
        child: child
    );
  }
}