import 'package:flutter/material.dart';

class DashboardCardWidget extends StatelessWidget {
  const DashboardCardWidget(
      {Key? key, required this.image, required this.item, required this.count,required this.color})
      : super(key: key);
  final String image;
  final String item;
  final int count;
  final int color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 100,
      child: Card(
        color: Color(color),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 5),
                height: 50,
                width: 50,
                child: CircleAvatar(
                  backgroundImage: AssetImage(image),
                )),
            const SizedBox(
              height: 15,
            ),
            Text(
              item,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              count.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
