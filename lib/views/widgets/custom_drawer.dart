import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/assets_app.dart';
import 'package:dashboard/views/widgets/drawer_items_sliver_list.dart';
import 'package:dashboard/views/widgets/drawer_item.dart';
import 'package:dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      width: MediaQuery.sizeOf(context).width*0.8,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfo: UserInfoModel(image: AssetsApp.imagesAvatar3, title: 'Lekan Okeowo', subtitle: 'demo@gmail.com')),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemsSliverList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox(
                  height: 20,
                )),
                InActiveListTile(drawerItemModel: DrawerItemModel(image: AssetsApp.imagesSettings,title: 'Settings')),
                InActiveListTile(drawerItemModel: DrawerItemModel(image: AssetsApp.imagesLogout,title: 'Logout')),
                const SizedBox(height: 48)
              ],
            ),
          )
        ],
      ),
    );
  }
}
