import 'package:bestow/upload_item/widgets/choice_chip.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
class DonationsItem extends StatelessWidget {
  const DonationsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hrsAgo = DateTime.now().subtract(const Duration(hours: 5));
    return  Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              maxRadius: 20,
              child: Image.asset("assets/images/user.png"),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "John Doe",
                        style: TextStyle(fontSize: 12,color: Color(0xff002642),),
                      ),
                      const Spacer(),
                      Text(
                        timeago.format(hrsAgo),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff209fa5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),


                  Wrap(

                    children: [
                      Transform(
                        transform: Matrix4.identity()..scale(0.7),
                        child: ChoiceChipWidget(
                          itemName: 'Clothing',
                          isSelected: true,
                          onSelected: (bool) {}, color:  const Color(0xff00E676),
                        ),
                      ),
                      Transform(
                        transform:  Matrix4.identity()..scale(0.7),
                        child: ChoiceChipWidget(
                          itemName: 'Foodstuff',
                          isSelected: true,
                          onSelected: (bool) {}, color:  const Color(0xff00E676),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Donated to: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff002642),
                        ),
                      ),
                      Text(
                        "Imani Children\'s Home",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff002642),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
