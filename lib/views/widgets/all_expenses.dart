import 'package:dashboard/views/widgets/all_expenses_header.dart';
import 'package:dashboard/views/widgets/all_expenses_items.dart';
import 'package:dashboard/views/widgets/custom_background_widget.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget{
  const  AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeader(title: 'All Expenses'),
          SizedBox(height: 16),
          AllExpensesItems()
        ],
      ),
    );
  }
}

