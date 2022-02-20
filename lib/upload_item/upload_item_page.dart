import 'package:flutter/material.dart';

class UploadItemPage extends StatefulWidget {
  const UploadItemPage({Key? key}) : super(key: key);

  @override
  _UploadItemPageState createState() => _UploadItemPageState();
}

class _UploadItemPageState extends State<UploadItemPage> {
  final groups = [
    'Cottolengo Center',
    'Imani Children\'s Home',
    'Mully Children\'s Home',
    'Rehema Children\'s Home',
    'Maji Mazuri Children\'s Center'
  ];
  final donationCategories = [
    'Clothing',
    'Bedding',
    'Food stuff',
    'Furniture',
    'Kitchenware',
    'Books'
  ];
  String? value;
  String? categoryValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          hint: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Select group"),
                          ),
                          value: value,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.blueAccent,
                            size: 36,
                          ),
                          items: groups.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(value),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) => setState(() {
                                this.value = value;
                              })),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          hint: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Select donation category"),
                          ),
                          value: categoryValue,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.blueAccent,
                            size: 36,
                          ),
                          items: donationCategories.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(value),
                              ),
                            );
                          }).toList(),
                          onChanged: (categoryValue) => setState(() {
                                this.categoryValue = categoryValue;
                              })),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.add_a_photo_rounded,
                              color: Colors.blueAccent,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Add photos of your donation")
                          ],
                        ),
                      ),
                    ),
                  ),
                  photoCard(),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    autofocus: true,
                    minLines: 4,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16),
                        labelStyle: const TextStyle(color: Colors.black),
                        label: const Text("Description"),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 2.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 2.0))),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: null
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  const [
                        Text("Submit your donation",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget photoCard() {
    return Stack(
      children: [
        Card(
          elevation: 10,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8),
                height: 80,
                width: 80,
                child: Image.asset("assets/images/clothes.jpeg"),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("clothes.jpeg",
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                  Text(
                    "2.4 mb",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.check,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          child: Icon(
            Icons.highlight_remove_outlined,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
