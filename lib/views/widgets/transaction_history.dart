import 'package:dashboard/utils/styles_app.dart';
import 'package:dashboard/views/widgets/header_text.dart';
import 'package:dashboard/views/widgets/transaction_history_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HeaderText('Transaction History'),
            Text('See all',
              style: StylesApp.styleMedium16(context).copyWith(
                color: const Color(0xff4EB7F2)
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        const TransactionHistoryBody()

      ],
    );
  }
}
