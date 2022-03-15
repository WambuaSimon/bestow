import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'bar_chart_data.dart';
import 'beneficiaries_widget.dart';
import 'items.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Items> _items = [
    Items("Clothing", 23),
    Items("Foodstuff", 16),
    Items("Furniture", 5),
    Items("Books", 11),
    Items("Electronics", 3),
    Items("Kitchenware", 18),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
        "Bestow️",
        style: TextStyle(color: Color(0xff209fa5)),
          ),
          elevation: 0.3,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    // child: const Text(
                    //   "Donation requests",
                    //   style: TextStyle(fontSize: 18, color: Color(0xff209fa5)),
                    // ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: SizedBox(
                      height: 450,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BarChartSample1(),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5, bottom: 8),
                    child: const Text(
                      "Beneficiaries",
                      style: TextStyle(fontSize: 18, color: Color(0xff209fa5)),
                    ),
                  ),
                  const BeneficiariesWidget(),
                  const SizedBox(height: 5,),
                  const BeneficiariesWidget(),
                  const SizedBox(height: 5,),
                  const BeneficiariesWidget(),
                ],
              ),
            ),
          ),
        ));
  }
}
