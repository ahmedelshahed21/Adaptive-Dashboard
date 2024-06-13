import 'package:dashboard/views/widgets/custom_dot_indicator.dart';
import 'package:flutter/cupertino.dart';

class DotsIndicator extends StatelessWidget{
  const DotsIndicator({super.key, required this.currentPageViewIndex});

  final int currentPageViewIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(3, (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomDotIndicator(isActive: index == currentPageViewIndex),
        ))
    );
  }
}