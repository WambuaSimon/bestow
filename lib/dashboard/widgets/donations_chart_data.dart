import 'dart:async';
import 'dart:math';
import 'package:bestow/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationsBarChart extends StatefulWidget {

  const DonationsBarChart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DonationsBarChartState();
}

class DonationsBarChartState extends State<DonationsBarChart> {
  final Color barBackgroundColor = kColorSecodaryDark;
  final Duration animDuration = const Duration(milliseconds: 250);

  int touchedIndex = -1;


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        color: kColorSecondary,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[

                     Padding(
                      padding:  EdgeInsets.all(8.0),
                      child:  Text(
                        "Donation Requests",
                        style: GoogleFonts.raleway(
                          textStyle:
                          TextStyle(color: kColorPrimary,fontSize: 18,fontWeight: FontWeight.w600 ),
                        ),

                      )
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: BarChart(mainBarData(),
                          swapAnimationDuration: animDuration,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
      int x,
      double y, {
        bool isTouched = false,
        Color barColor = Colors.white,
        double width = 22,
        List<int> showTooltips = const [],
      }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          colors: isTouched ? [ColorPrimary] : [barColor],
          width: width,
          borderSide: isTouched
              ? BorderSide(color: ColorPrimary, width: 1)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 20,
            colors: [barBackgroundColor],
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(6, (i) {
    switch (i) {
      case 0:
        return makeGroupData(0, 5, isTouched: i == touchedIndex);
      case 1:
        return makeGroupData(1, 6.5, isTouched: i == touchedIndex);
      case 2:
        return makeGroupData(2, 5, isTouched: i == touchedIndex);
      case 3:
        return makeGroupData(3, 7.5, isTouched: i == touchedIndex);
      case 4:
        return makeGroupData(4, 9, isTouched: i == touchedIndex);
      case 5:
        return makeGroupData(5, 11.5, isTouched: i == touchedIndex);
      default:
        return throw Error();
    }
  });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = 'Clothing';
                  break;
                case 1:
                  weekDay = 'Foodstuff';
                  break;
                case 2:
                  weekDay = 'Furniture';
                  break;
                case 3:
                  weekDay = 'Books';
                  break;
                case 4:
                  weekDay = 'Electronics';
                  break;
                case 5:
                  weekDay = 'Kitchenware';
                  break;
                default:
                  throw Error();
              }
              return BarTooltipItem(
                weekDay + '\n',
                const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: (rod.toY - 1).toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          rotateAngle: 295,
          getTextStyles: (context, value) => const TextStyle(
              color: kColorPrimary, fontWeight:  FontWeight.w600 , fontSize: 14,),
          margin: 5,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'Clothing';
              case 1:
                return 'Foodstuff';
              case 2:
                return 'Furniture';
              case 3:
                return 'Books';
              case 4:
                return 'Electronics';
              case 5:
                return 'Kitchenware';
              default:
                return "";
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: FlGridData(show: true),
    );
  }


  Future<dynamic> refreshState() async {
    setState(() {});
    await Future<dynamic>.delayed(
        animDuration + const Duration(milliseconds: 50));

  }
}