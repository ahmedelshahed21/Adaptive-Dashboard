import 'package:dashboard/models/transaction_history_model.dart';
import 'package:dashboard/views/widgets/transaction_history_list_tile.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({
    super.key,
    required this.transactionHistory,
  });

  final List<TransactionHistoryModel> transactionHistory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionHistory.map((e) => TransactionHistoryListTile(transactionHistoryModel: e)).toList(),
    );

      // ListView.builder(
      //   itemCount: transactionHistory.length,
      //   shrinkWrap: true,
      //   itemBuilder: (context,index){
      //     return TransactionHistoryListTile(transactionHistoryModel: transactionHistory[index]);
      //   });
  }
}