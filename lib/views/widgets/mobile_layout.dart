import 'package:dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:dashboard/views/widgets/income_section.dart';
import 'package:dashboard/views/widgets/my_cards_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0),
        child: Column(
          children: [
            AllExpensesAndQuickInvoice(),
            SizedBox(height: 24),
            MyCardSection(),
            SizedBox(height: 24),
            IncomeSection()
          ],
        ),
      ),
    );
  }
}