import 'package:dashboard/views/widgets/header_text.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget{
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HeaderText('Quick Invoice'),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xffFAFAFA),
          ),
          child: const Icon(Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}