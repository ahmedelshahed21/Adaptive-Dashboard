import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/assets_app.dart';
import 'package:dashboard/views/widgets/drawer_item.dart';
import 'package:flutter/cupertino.dart';

class DrawerItemsSliverList extends StatefulWidget{
  const DrawerItemsSliverList({super.key});

  @override
  State<DrawerItemsSliverList> createState() => _DrawerItemsSliverListState();
}

class _DrawerItemsSliverListState extends State<DrawerItemsSliverList> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(image: AssetsApp.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(
        image: AssetsApp.imagesMyTransactions, title: 'MyTransactions'),
    DrawerItemModel(image: AssetsApp.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(
        image: AssetsApp.imagesWalletAccount, title: 'WalletAccount'),
    DrawerItemModel(
        image: AssetsApp.imagesMyInvestments, title: 'MyInvestments'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DrawerItem(
                drawerItemModel: drawerItems[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}