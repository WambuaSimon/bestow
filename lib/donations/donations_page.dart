import 'package:bestow/donations/widgets/card_item.dart';
import 'package:bestow/upload_item/widgets/choice_chip.dart';
import 'package:flutter/material.dart';


class DonationsPage extends StatefulWidget {
  const DonationsPage({Key? key}) : super(key: key);

  @override
  _DonationsPageState createState() => _DonationsPageState();
}

class _DonationsPageState extends State<DonationsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bestow",
          style: TextStyle(
            color: Color(0xff209fa5),
          ),
        ),
        elevation: 0.3,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  DonationsItem(),
                  DonationsItem(),
                  DonationsItem(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
