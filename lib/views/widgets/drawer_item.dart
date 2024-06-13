import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/styles_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItem extends StatelessWidget{
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: isActive ? ActiveListTile(drawerItemModel: drawerItemModel) : InActiveListTile(drawerItemModel: drawerItemModel),
    );
  }
}

class InActiveListTile extends StatelessWidget {
  const InActiveListTile({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(drawerItemModel.title,
            style: StylesApp.styleRegular16(context),
          ),
        ),
      ),
    );
  }
}

class ActiveListTile extends StatelessWidget {
  const ActiveListTile({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(drawerItemModel.title,
          style: StylesApp.styleBold16(context),
        ),
      ),
      trailing: Container(
        width: 3.27,
        color: const Color(0xFF4EB7F2),
      ),
    );
  }
}