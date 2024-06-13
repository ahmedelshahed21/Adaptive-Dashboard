import 'package:dashboard/models/transaction_history_model.dart';
import 'package:dashboard/utils/styles_app.dart';
import 'package:dashboard/views/widgets/transaction_history_list_view.dart';
import 'package:flutter/cupertino.dart';

class TransactionHistoryBody extends StatelessWidget{
  const TransactionHistoryBody({super.key});

  static List<TransactionHistoryModel> transactionHistory=[
    const TransactionHistoryModel(title: 'Cash Withdrawal', date: '13 Apr, 2022 ', amount: r'$20,129', isWithdrawal: true),
    const TransactionHistoryModel(title: 'Landing Page project', date: '13 Apr, 2022 at 3:30 PM', amount: r'$2,000',isWithdrawal: false),
    const TransactionHistoryModel(title: 'Juni Mobile App project', date: '13 Apr, 2022 at 3:30 PM', amount: r'$2,000',isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('13 April 2022',
          style: StylesApp.styleMedium16(context).copyWith(
              color: const Color(0xffAAAAAA)
          ),
        ),
        const SizedBox(height: 16),
        TransactionHistoryListView(transactionHistory: transactionHistory)
      ],
    );
  }
}

