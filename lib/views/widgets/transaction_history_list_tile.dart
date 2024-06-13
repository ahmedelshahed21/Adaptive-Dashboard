import 'package:dashboard/models/transaction_history_model.dart';
import 'package:dashboard/utils/styles_app.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListTile extends StatelessWidget{
  const TransactionHistoryListTile({super.key, required this.transactionHistoryModel});

  final TransactionHistoryModel transactionHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Card(
          color: const Color(0xffFAFAFA),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          child: ListTile(
            title: Text(transactionHistoryModel.title,
              style: StylesApp.styleSemiBold16(context),
            ),
            subtitle: Text(transactionHistoryModel.date,
              style: StylesApp.styleRegular16(context).copyWith(
                  color: const Color(0xffAAAAAA)
              ),
            ),
            trailing: Text(transactionHistoryModel.amount,
              style: StylesApp.styleSemiBold20(context).copyWith(
                  color: transactionHistoryModel.isWithdrawal == true ? const Color(0xffF3735E) : const Color(0xff7DD97B)
              ),
            ),
          ),
        );
  }
}