import 'package:dashboard/views/widgets/custom_drawer.dart';
import 'package:dashboard/views/widgets/mobile_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(flex: 3,
            child: MobileLayout()),
        SizedBox(width: 24),
      ],
    );
  }
}

