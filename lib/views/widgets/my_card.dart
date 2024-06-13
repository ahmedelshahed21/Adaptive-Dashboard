import 'package:dashboard/utils/assets_app.dart';
import 'package:dashboard/utils/styles_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420/215,
      child: Container(
        decoration: ShapeDecoration(
            color: const Color(0xff4EB7F2),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsApp.imagesCardBackground)
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 32,right: 42),
              title: Text('Name card',
                style: StylesApp.styleRegular16(context).copyWith(
                    color: Colors.white
                ),
              ),
              subtitle: Text('Syah Bandi',
                style: StylesApp.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(AssetsApp.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('0918 8124 0042 8129',
                    style: StylesApp.styleSemiBold24(context).copyWith(
                        color: Colors.white
                    ),
                  ),
                  Text('12/20 - 124',
                    style: StylesApp.styleRegular16(context).copyWith(
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            const Flexible(child: SizedBox(height: 26))
          ],
        ),
      ),
    );
  }
}