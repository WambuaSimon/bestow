import 'package:bestow/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../utils/custom_app_bar.dart';
import 'widgets/donations_chart_data.dart';
import 'widgets/beneficiaries_widget.dart';
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
        backgroundColor: kColorBodyColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(55),
            child: CustomAppBar(appBarText: "",)),
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
                    height: 0,
                  ),
                  const Center(
                    child: SizedBox(
                      height: 450,
                      child: Padding(
                        padding:  EdgeInsets.all(0.0),
                        child: DonationsBarChart(),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5, bottom: 8,top: 5),
                    child:
                      Text(
                        "Beneficiaries",
                        style: GoogleFonts.raleway(
                          textStyle:
                          TextStyle(color: kColorPrimary,fontSize: 18),
                        ),

                      )
                  ),
                  const BeneficiariesWidget(),
                  const SizedBox(height: 0,),
                  const BeneficiariesWidget(),
                  const SizedBox(height: 0,),
                  const BeneficiariesWidget(),
                ],
              ),
            ),
          ),
        ));
  }
}
