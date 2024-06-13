import 'package:dashboard/views/widgets/income_section.dart';
import 'package:dashboard/views/widgets/my_cards_section.dart';
import 'package:flutter/material.dart';

class MyCardAndIncome extends StatelessWidget {
  const MyCardAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardSection(),
        SizedBox(height: 24),
        IncomeSection(),
      ],
    );
  }
}
