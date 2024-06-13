import 'package:dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:dashboard/views/widgets/custom_drawer.dart';
import 'package:dashboard/views/widgets/my_card_and_income.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 3, child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 10,
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 6,
                    child: Padding(
                      padding: EdgeInsets.only(right: 24.0,top: 40),
                      child: AllExpensesAndQuickInvoice(),
                    )),
                Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.only(right: 24.0,top: 40),
                      child: MyCardAndIncome(),
                    )
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
