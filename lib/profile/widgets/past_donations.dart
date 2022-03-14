import 'package:flutter/material.dart';

class PastDonations extends StatelessWidget {
  const PastDonations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Your past donations",style: TextStyle(fontSize: 20),),
      SizedBox(height: 10,),
      Column(
        children: [
          Card(

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
                  SizedBox(height: 15,),
                  Row(
                    children: const [
                      Icon(
                        Icons.calendar_today_sharp,
                        color: Color(0xff209fa5),
                        size: 15,
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '12/04/2022',
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      Icon(
                        Icons.pending_actions,
                        color: Color(0xffF57F17),
                        size: 15,
                      ),
                      SizedBox(width: 5,),
                      Text(
                        'Pending',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(

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
                  SizedBox(height: 15,),
                  Row(
                    children: const [
                      Icon(
                        Icons.calendar_today_sharp,
                        color: Color(0xff209fa5),
                        size: 15,
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '12/04/2022',
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      Icon(
                        Icons.check,
                        color: Color(0xff33691E),
                        size: 15,
                      ),
                      SizedBox(width: 5,),
                      Text(
                        'Delivered',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

        ],
      )
        ],
      ),
    );
  }
}
