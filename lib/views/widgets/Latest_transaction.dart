import 'package:dashboard/utils/styles_app.dart';
import 'package:dashboard/views/widgets/Latest_transaction_list_view.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget{
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction',
          style: StylesApp.styleMedium16(context),
        ),
        const SizedBox(height: 12),
        const LatestTransactionListView()
      ],
    );
  }
}