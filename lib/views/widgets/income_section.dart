import 'package:dashboard/views/widgets/all_expenses_header.dart';
import 'package:dashboard/views/widgets/custom_background_widget.dart';
import 'package:dashboard/views/widgets/income_section_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [AllExpensesHeader(title: 'Income'), IncomeSectionBody()],
      ),
    );
  }
}


