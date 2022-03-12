import 'dart:math';

import 'package:flutter/material.dart';

class BeneficiariesWidget extends StatelessWidget {
  const BeneficiariesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: Border(left: BorderSide(
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)
              ], width: 2),
          ),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/images/logo1.jpeg")),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Imani Children\'s Home",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Spacer(),
                    const Icon(Icons.favorite_border_outlined,
                        color: Color(0xff209fa5))
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
                        decoration: const BoxDecoration(
                            color: Color(0xffCFD8DC),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            'Foodstuff',
                            style:
                            TextStyle(color: Color(0xff002642), fontSize: 10),
                          ),
                        ),
                      ),

                      Container(
                        decoration: const BoxDecoration(
                            color: Color(0xffCFD8DC),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            'Clothing',
                            style:
                            TextStyle(color: Color(0xff002642), fontSize: 10),
                          ),
                        ),
                      ),

                      Container(
                        decoration: const BoxDecoration(
                            color: Color(0xffCFD8DC),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            'Bedding',
                            style:
                            TextStyle(color: Color(0xff002642), fontSize: 10),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color(0xff209fa5),
                      size: 18,
                    ),
                    const Text(
                      'Rongai',
                      style: TextStyle(fontSize: 12),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff209fa5),
                          ),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: const [
                            Text(
                              "Donate",
                              style: TextStyle(color: Color(0xff209fa5)),
                            ),
                            Icon(
                              Icons.arrow_forward_sharp,
                              color: Color(0xff209fa5),
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}
