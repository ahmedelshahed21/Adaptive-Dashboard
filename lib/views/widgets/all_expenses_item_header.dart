import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.arrowIconColor,this.backgroundImageColor, this.imageColor});
  final String image;
  final Color? imageColor;
  final Color? backgroundImageColor;
  final Color? arrowIconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // width: 60,
                // height: 60,
                decoration: ShapeDecoration(
                  color: backgroundImageColor ?? Colors.white ,
                  shape: const OvalBorder(),
                ),
                child: Center(child: SvgPicture.asset(image,
                  colorFilter: ColorFilter.mode(imageColor ?? const Color((0xff4EB7F2)), BlendMode.srcIn),
                )),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.57*2,
            child: Icon(Icons.arrow_back_ios_new_outlined,
              color: arrowIconColor ?? const Color(0xFF064061),
            ))
      ],
    );
  }
}
