import 'package:bestow/upload_item/widgets/choice_chip.dart';
import 'package:bestow/upload_item/widgets/donation_setup.dart';
import 'package:bestow/upload_item/widgets/pick_up_details.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/dropdown/gf_dropdown.dart';

class AddDonationPage extends StatefulWidget {
  const AddDonationPage({Key? key}) : super(key: key);

  @override
  _AddDonationPageState createState() => _AddDonationPageState();
}

class _AddDonationPageState extends State<AddDonationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bestow ❤️",
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
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "What do you wish to donate?",
                      style: TextStyle(fontSize: 18, color: Color(0xff002642)),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffBDBDBD),
                    border: Border.all(color: Color(0xffBDBDBD)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff8f6f5),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: DonationSetUp(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Schedule pickup",
                      style: TextStyle(fontSize: 18, color: Color(0xff002642)),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffBDBDBD),
                    border: Border.all(color: Color(0xffBDBDBD)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff8f6f5),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Padding(
                      padding: EdgeInsets.all(8.0), child: PickUpDetails()),
                ),
                const SizedBox(height:10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color(0xff209fa5),
                    ),
                    onPressed: () {},
                    child: const Text('Donate'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
