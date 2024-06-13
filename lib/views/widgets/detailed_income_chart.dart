import 'package:dashboard/utils/styles_app.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget{
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {

  int activeIndex=-1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0,p1){
              activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {

              });
            }
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            value: 40,
            title: activeIndex == 0 ? 'Design service' : '40 %',
            titleStyle: StylesApp.styleMedium16(context).copyWith(
              color: activeIndex==0?null:Colors.white
            ),
            titlePositionPercentageOffset: activeIndex == 0 ? -2 : null,
            color: const Color(0xff208CC8),
            // showTitle: false,
            radius: activeIndex == 0 ? 50 : 40,
          ),
          PieChartSectionData(
            value: 25,
            title: activeIndex == 1 ? 'Design product' : '25 %',
            titleStyle: StylesApp.styleMedium16(context).copyWith(
                color: activeIndex==1?null:Colors.white
            ),
            titlePositionPercentageOffset: activeIndex == 1 ? -2 : null,
            color: const Color(0xff4EB7F2),
            radius: activeIndex == 1 ? 50 : 40,
          ),
          PieChartSectionData(
            value: 20,
            title: activeIndex == 2 ? 'Product royalty' : '20 %',
            titleStyle: StylesApp.styleMedium16(context).copyWith(
                color: activeIndex==2?null:Colors.white
            ),
            titlePositionPercentageOffset: activeIndex == 2 ? -2: null,
            color: const Color(0xff064061),
            radius: activeIndex == 2 ? 50 : 40,
          ),
          PieChartSectionData(
            value: 22,
            title: activeIndex == 3 ? 'Other' : '22 %',
            titleStyle: StylesApp.styleMedium16(context).copyWith(
                color: activeIndex==3?null:Colors.white
            ),
            titlePositionPercentageOffset: activeIndex == 3 ? -2 : null,
            color: const Color(0xffE2DECD),
            radius: activeIndex == 3 ? 50 : 40,
          ),
        ]
    );
  }
}