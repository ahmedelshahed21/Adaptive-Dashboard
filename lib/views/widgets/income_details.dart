import 'package:dashboard/models/income_details_model.dart';
import 'package:dashboard/views/widgets/income_details_list_tile.dart';
import 'package:flutter/cupertino.dart';

class IncomeDetails extends StatelessWidget{
  const IncomeDetails({super.key});

  static List<IncomeDetailsModel> items=[
    IncomeDetailsModel(color: const Color(0xff208CC8), title: 'Design service', value: '40%'),
    IncomeDetailsModel(color: const Color(0xff4EB7F2), title: 'Design product', value: '25%'),
    IncomeDetailsModel(color: const Color(0xff064061), title: 'Product royalty', value: '20%'),
    IncomeDetailsModel(color: const Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.map((e) => IncomeDetailsListTile(incomeDetailsModel: e)).toList(),
    );
  }
}