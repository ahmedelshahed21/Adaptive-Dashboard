import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/assets_app.dart';
import 'package:dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionListView extends StatelessWidget{
  const LatestTransactionListView({super.key});

   static List<UserInfoModel> users=[
     UserInfoModel(image: AssetsApp.imagesAvatar1, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
     UserInfoModel(image: AssetsApp.imagesAvatar2, title: 'Josua Nunito', subtitle: 'Josh Nunito@gmail.com'),
     UserInfoModel(image: AssetsApp.imagesAvatar1, title: 'Josua Nunito', subtitle: 'Josh Nunito@gmail.com'),
   ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfo: e))).toList(),
      ),
    );
    //   SizedBox(
    //   height: 70,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: users.length,
    //       itemBuilder: (context,index){
    //         return IntrinsicWidth(child: UserInfoListTile(userInfo: users[index]));
    //       }
    //   ),
    // );
  }
}