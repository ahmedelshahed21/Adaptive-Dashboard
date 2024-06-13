import 'package:dashboard/views/widgets/custom_background_widget.dart';
import 'package:dashboard/views/widgets/dots_indicator.dart';
import 'package:dashboard/views/widgets/header_text.dart';
import 'package:dashboard/views/widgets/my_cards_page_view.dart';
import 'package:dashboard/views/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget{
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {


  late PageController pageController;
  int currentPageViewIndex=0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageViewIndex = pageController.page!.round();
      setState(() {

      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      paddingValue: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const HeaderText('My card'),
          const SizedBox(height: 20,),
          MyCardsPageView(
            pageController: pageController,
          ),
          const SizedBox(height: 19),
          DotsIndicator(
            currentPageViewIndex: currentPageViewIndex,
          ),
          const Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          const TransactionHistory()
        ],
      ),
    );
  }
}

