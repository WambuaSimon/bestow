import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'choice_chip.dart';

class DonationSetUp extends StatefulWidget {
  const DonationSetUp({Key? key}) : super(key: key);

  @override
  State<DonationSetUp> createState() => _DonationSetUpState();
}

class _DonationSetUpState extends State<DonationSetUp> {
  final groups = [
    'Cottolengo Center',
    'Imani Children\'s Home',
    'Mully Children\'s Home',
    'Rehema Children\'s Home',
    'Maji Mazuri Children\'s Center'
  ];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  Transform(
                    transform: Matrix4.identity()..scale(0.9),
                    child: ChoiceChipWidget(
                      itemName: 'Clothing',
                      isSelected: false,
                      onSelected: (bool) {},
                    ),
                  ),
                  Transform(
                    transform:  Matrix4.identity()..scale(0.9),
                    child: ChoiceChipWidget(
                      itemName: 'Foodstuff',
                      isSelected: true,
                      onSelected: (bool) {},
                    ),
                  ),
                  Transform(
                    transform:  Matrix4.identity()..scale(0.9),
                    child: ChoiceChipWidget(
                      itemName: 'Furniture',
                      isSelected: false,
                      onSelected: (bool) {},
                    ),
                  ),
                  Transform(
                    transform:  Matrix4.identity()..scale(0.9),
                    child: ChoiceChipWidget(
                      itemName: 'Books',
                      isSelected: true,
                      onSelected: (bool) {},
                    ),
                  ),
                  Transform(
                    transform:  Matrix4.identity()..scale(0.9),
                    child: ChoiceChipWidget(
                      itemName: 'Electronics',
                      isSelected: true,
                      onSelected: (bool) {},
                    ),
                  ),
                  Transform(
                    transform:  Matrix4.identity()..scale(0.9),
                    child: ChoiceChipWidget(
                      itemName: 'Kitchenware',
                      isSelected: false,
                      onSelected: (bool) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              selectBeneficiary(),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 40,
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(5),

                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add_a_photo,
                            color: Color(0xff209fa5),
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Add photos",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: const Color(0xffECEFF1),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/images/clothes.jpeg"),
                    ),
                    const Text("sample_image.png",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 12),),
                    const Spacer(),
                    const Icon(Icons.delete_forever_rounded,color:Colors.redAccent,size: 18,)

                  ],
                ),
              ),
              Card(
                color: const Color(0xffECEFF1),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/images/clothes.jpeg"),
                    ),
                    const Text("lorem_image.png",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 12),),
                    const Spacer(),
                    const Icon(Icons.delete_forever_rounded,color:Colors.red,size: 18,)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget selectBeneficiary() {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(0xff209fa5), width: 2)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            hint: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Select beneficiary",style: TextStyle(fontSize: 12),),
            ),
            value: value,
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Color(0xff209fa5),
              size: 25,
            ),
            items: groups.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(value,style: TextStyle(fontSize: 15),),
                ),
              );
            }).toList(),
            onChanged: (value) => setState(() {
                  this.value = value;
                })),
      ),
    );
  }
}
