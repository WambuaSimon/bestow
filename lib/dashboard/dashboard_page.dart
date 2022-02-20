import 'package:flutter/material.dart';

import 'beneficiaries_widget.dart';
import 'dashboard_card_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Donation requests",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      DashboardCardWidget(
                          image: 'assets/images/laundry.png',
                          item: 'Clothing',
                          count: 23,
                          color: 0xffFFCDD2),
                      DashboardCardWidget(
                          image: 'assets/images/groceries.png',
                          item: 'Foodstuff',
                          count: 13,
                          color: 0xffE1BEE7),
                      DashboardCardWidget(
                          image: 'assets/images/book.png',
                          item: 'Books',
                          count: 18,
                          color: 0xff9FA8DA),
                    ],
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      DashboardCardWidget(
                          image: 'assets/images/clothes_donation.png',
                          item: 'Bedding',
                          count: 29,
                          color: 0xff80DEEA),
                      DashboardCardWidget(
                          image: 'assets/images/gadgets.png',
                          item: 'Electronics',
                          count: 7,
                          color: 0xffFFF59D),
                      DashboardCardWidget(
                          image: 'assets/images/kitchenware.png',
                          item: 'Kitchenware',
                          count: 4,
                          color: 0xffA5D6A7),
                    ],
                  )
                ],
              ),
             const SizedBox(
                height: 10,
              ),
              const Text(
                "Beneficiaries",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
             const SizedBox(
                height: 10,
              ),
              const BeneficiariesWidget(),
            ],
      ),
    ),
          ),
        ));
  }
}
