import 'dart:math';

import 'package:bestow/utils/colors.dart';
import 'package:bestow/utils/round_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/custom_outline_button.dart';

class BeneficiariesWidget extends StatelessWidget {
  const BeneficiariesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            child: ClipPath(
              child: Container(
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //     border: Border(left: BorderSide(color: Colors.primaries[Random().nextInt(Colors.primaries.length)], width: 4)),
                //   // borderRadius: BorderRadius.circular(10.0),
                // ),
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.all(const Radius.circular(6.0))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/logo1.jpeg")),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Imani Children\'s Home",
                            style: GoogleFonts.raleway(
                              textStyle:
                              TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                            ),

                          ),
                          const Spacer(),
                          const Icon(Icons.favorite_border_outlined,
                              color: kColorPrimary)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Wrap(
                              spacing: 8.0, // gap between adjacent chips
                              runSpacing: 4.0, // gap between lines
                              children: [
                                Container(
                                  decoration:  BoxDecoration(
                                      border: Border.all(color: kColorPrimary),
                                      borderRadius: BorderRadius.all(Radius.circular(5))),
                                  child:  Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child:  Text(
                                        "Clothing",
                                        style: GoogleFonts.raleway(
                                          textStyle:
                                          TextStyle(color: kColorPrimary,fontSize: 10),
                                        ),

                                      )
                                  ),
                                ),
                                Container(
                                  decoration:  BoxDecoration(
                                      border: Border.all(color: kColorPrimary),
                                      borderRadius: BorderRadius.all(Radius.circular(5))),
                                  child:  Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        "Foodstuff",
                                        style: GoogleFonts.raleway(
                                          textStyle:
                                          TextStyle(color: kColorPrimary,fontSize: 10),
                                        ),

                                      )
                                  ),
                                ),
                                Container(
                                  decoration:  BoxDecoration(
                                      border: Border.all(color: kColorPrimary),
                                      borderRadius: BorderRadius.all(Radius.circular(5))),
                                  child:  Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        "Furniture",
                                        style: GoogleFonts.raleway(
                                          textStyle:
                                          TextStyle(color: kColorPrimary,fontSize: 10),
                                        ),

                                      )
                                  ),
                                ),
                              ]
                                  .toList())
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: kColorPrimary,
                            size: 18,
                          ),
                          Text(
                            "Rongai",
                            style: GoogleFonts.raleway(
                              textStyle:
                              TextStyle(color: kColorPrimary,fontSize: 10),
                            ),

                          ),
                          Spacer(),
                          RoundButton(myColor: kColorPrimary, myText: "Donate", textColor: Colors.white,radiusSize: 5,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ),
            ),

      ],
    );
  }
}
