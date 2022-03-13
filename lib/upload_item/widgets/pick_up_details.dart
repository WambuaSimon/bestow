import 'package:flutter/material.dart';

class PickUpDetails extends StatefulWidget {
  const PickUpDetails({Key? key}) : super(key: key);

  @override
  _PickUpDetailsState createState() => _PickUpDetailsState();
}

class _PickUpDetailsState extends State<PickUpDetails> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return const Color(0xff209fa5);
      }
      return const Color(0xff209fa5);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xffECEFF1),
            border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: Color(0xff209fa5),
              ),
            ),
          ),
          child: SizedBox(
            height: 35,
            child: TextFormField(
              textInputAction: TextInputAction.next,
              autofocus: false,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.location_on,
                  color: Color(0xff209fa5),
                  size: 20,
                ),
                hintText: "Pick up location",
                hintStyle: const TextStyle(fontSize: 15),
                focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    borderSide:
                        const BorderSide(color: Color(0xff209fa5), width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide:
                      const BorderSide(color: Color(0xff209fa5), width: 2.0),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 130,
              decoration: const BoxDecoration(
                color: Color(0xffECEFF1),
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                    color: Color(0xff209fa5),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.calendar_today_sharp,
                      color: Color(0xff209fa5),
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Date",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              width: 130,
              decoration: const BoxDecoration(
                color: Color(0xffECEFF1),
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                    color: Color(0xff209fa5),
                  ),
                ),

                //border: Border.all(color: Color(0xff3f363f)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.access_time,
                      color: Color(0xff209fa5),
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Time",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color(0xffECEFF1),
            border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: Color(0xff209fa5),
              ),
            ),
          ),
          child: SizedBox(
            height: 35,
            child: TextFormField(
              textInputAction: TextInputAction.next,
              autofocus: false,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.phone,
                  color: Color(0xff209fa5),
                  size: 20,
                ),
                hintText: "Phone number",
                hintStyle: const TextStyle(fontSize: 15),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide:
                      const BorderSide(color: Color(0xff209fa5), width: 2.0),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide:
                      const BorderSide(color: Color(0xff209fa5), width: 2.0),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Checkbox(
                shape: const CircleBorder(),
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith(getColor),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "Donate anonymously",
              style: TextStyle(
                fontSize: 15,
                  color: Color(0xff002642),
                  fontWeight: FontWeight.w500,
                  ),
            )
          ],
        ),
      ],
    );
  }
}
