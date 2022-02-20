import 'package:flutter/material.dart';

class BeneficiariesWidget extends StatelessWidget {
  const BeneficiariesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 10,
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
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Spacer(),
                    Icon(Icons.favorite_border_outlined, color: Colors.blueAccent)
                  ],
                ),
                const   SizedBox(
                  height: 10,
                ),
                Wrap(
                  spacing: 8.0, // gap between adjacent chips
                  runSpacing: 4.0, // gap between lines
                  children: const [
                    Chip(
                      label: Text(
                        'Foodstuff',
                        style: TextStyle(color: Color(0xffAB47BC)),
                      ),
                    ),
                    Chip(
                      label: Text('Clothing',
                          style: TextStyle(color: Color(0xffEF5350))),
                    ),
                    Chip(
                      label: Text('Bedding',
                          style: TextStyle(color: Color(0xff26C6DA))),
                    ),
                  ],
                ),
                const   SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.green,
                    ),
                    Text('Rongai'),
                    Spacer(),

                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blueAccent,
                            ),
                            borderRadius:const BorderRadius.all(Radius.circular(20))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text("Bestow",style: TextStyle(color: Colors.black),),
                              Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 16,),

      ],
    );
  }
}
