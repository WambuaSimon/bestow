import 'package:bestow/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../utils/custom_app_bar.dart';
import '../utils/rounded_diagonal_path_clipper.dart';
import '../utils/round_button.dart';
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
              padding:  EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),

                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Donation Requests",
                      style: GoogleFonts.raleway(
                        textStyle:
                        TextStyle(color: kColorPrimary,fontSize: 18),
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                   Center(
                    child: SizedBox(
                      height: Get.height * 0.2,
                      child: Padding(
                        padding:  EdgeInsets.all(0.0),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                            itemBuilder: (BuildContext context, int index){
                            return  Card(
                              elevation: 2,
                              child: Container(
                                height: Get.height * 0.3,
                                width: Get.width * 0.35,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: kColorPrimary,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                    ClipPath(
                                      clipper: DiagonalPathClipperOne(),
                                      child: Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          color: kColorSecodaryDark.withOpacity(0.4),
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children:  [
                                            const Padding(
                                              padding:  EdgeInsets.all(8.0),
                                              child: CircleAvatar(
                                                radius: 20.0,
                                                backgroundImage: AssetImage("assets/images/clothing.jpeg"),
                                              ),
                                            ),
                                            Column(
                                              children: [

                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "17",
                                                    style: GoogleFonts.raleway(
                                                      textStyle:
                                                      TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
                                                    ),

                                                  ),
                                                ),

                                                
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),

                                    Text(
                                      "Clothing",
                                      style: GoogleFonts.raleway(
                                        textStyle:
                                        TextStyle(color: Colors.white,),
                                      ),

                                    )

                                  ],
                                ),
                              ),
                            );
                            },
                        ) ,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Beneficiaries",
                      style: GoogleFonts.raleway(
                        textStyle:
                        TextStyle(color: kColorPrimary,fontSize: 18),
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 5,
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
