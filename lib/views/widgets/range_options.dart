import 'package:dashboard/utils/styles_app.dart';
import 'package:flutter/material.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Monthly',
          style: StylesApp.styleMedium16(context),
        ),
        const SizedBox(width: 18,),
        Transform.rotate(
            angle: -1.57,
            child: const Icon(Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF064061),
            ))
      ],
    );
  }
}