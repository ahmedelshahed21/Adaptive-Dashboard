import 'package:dashboard/views/widgets/Latest_transaction.dart';
import 'package:dashboard/views/widgets/custom_background_widget.dart';
import 'package:dashboard/views/widgets/quick_invoice_form.dart';
import 'package:dashboard/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget{
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
        paddingValue: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(height: 24),
            LatestTransaction(),
            Divider(
              height: 48,
              color: Color(0xff4EB7F2),
            ),
            QuickInvoiceForm(),
          ],
        )
    );
  }
}