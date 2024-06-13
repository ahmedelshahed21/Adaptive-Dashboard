import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/views/widgets/detailed_income_chart.dart';
import 'package:dashboard/views/widgets/income_chart.dart';
import 'package:dashboard/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width <= SizeConfig.desktop &&
        MediaQuery.sizeOf(context).width <= 1000
        ? const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: DetailedIncomeChart(),
        )
        : const AspectRatio(
      aspectRatio: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: IncomeChart()),
          Expanded(child: IncomeDetails()),
        ],
      ),
    );
  }
}