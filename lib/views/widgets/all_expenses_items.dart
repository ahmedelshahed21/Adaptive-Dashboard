import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/utils/assets_app.dart';
import 'package:dashboard/views/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({super.key});

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {

  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        image: AssetsApp.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: AssetsApp.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: AssetsApp.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          child: AllExpensesItem(
              itemModel: items[0], isActive: selectedIndex == 0),
        )),
        const SizedBox(width: 12),
        Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: AllExpensesItem(
                  itemModel: items[1], isActive: selectedIndex == 1),
            )),
        const SizedBox(width: 12),
        Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: AllExpensesItem(
                  itemModel: items[2], isActive: selectedIndex == 2),
            )),
      ],
    );
  }
}
