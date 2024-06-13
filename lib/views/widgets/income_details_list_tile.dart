import 'package:dashboard/models/income_details_model.dart';
import 'package:dashboard/utils/styles_app.dart';
import 'package:flutter/material.dart';

class IncomeDetailsListTile extends StatelessWidget{
  const IncomeDetailsListTile({super.key, required this.incomeDetailsModel});

  final IncomeDetailsModel incomeDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          color: incomeDetailsModel.color,
          shape: const OvalBorder()
        ),
      ),
      title: Text(incomeDetailsModel.title,
        style: StylesApp.styleRegular16(context).copyWith(
          color: const Color(0xff064061)
        ),
      ),
      trailing: Text(incomeDetailsModel.value,
        style: StylesApp.styleMedium16(context).copyWith(
            color: const Color(0xff208CC8)
        ),
      ),
    );
  }
}