
import 'package:bestow/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOutlineButton extends StatelessWidget {
  final Color myColor;
  final String myText;
  final Color textColor;
  const CustomOutlineButton(
      {Key? key,
        required this.myColor,
        required this.myText,
        required this.textColor}
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(width: 1.0, color: myColor,)),
        primary: kColorPrimary, // backgroundound
      ),
      onPressed: (){},
      child: Text(
        myText,
        style: GoogleFonts.raleway(
          textStyle:
          TextStyle(color: myColor,fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
