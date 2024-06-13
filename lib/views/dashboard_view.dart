import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/views/widgets/adaptive_layout_widget.dart';
import 'package:dashboard/views/widgets/custom_drawer.dart';
import 'package:dashboard/views/widgets/desktop_layout.dart';
import 'package:dashboard/views/widgets/mobile_layout.dart';
import 'package:dashboard/views/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF7F9FA),
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet ? AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu,
            color: Color(0xff064061),
          ),
        ),
      ) : null,
      drawer: const CustomDrawer(),
      body: AdaptiveLayoutWidget(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout()),
    );
  }
}
