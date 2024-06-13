import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/assets_app.dart';
import 'package:dashboard/utils/styles_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget{
  const UserInfoListTile({super.key, required this.userInfo});

  final UserInfoModel userInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        color: const Color(0xffFAFAFA),
        elevation: 0,
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset(userInfo.image),
            title: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(userInfo.title,
                style: StylesApp.styleSemiBold16(context),
              ),
            ),
            subtitle: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(userInfo.subtitle,
                style: StylesApp.styleRegular12(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}