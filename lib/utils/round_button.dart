
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundButton extends StatelessWidget {
  final Color myColor;
  final String myText;
  final Color textColor;
  final double radiusSize;
  const RoundButton(
      {Key? key,
        required this.myColor,
        required this.myText,
        required this.textColor,
        required this.radiusSize
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSize)),
        primary: myColor, // backgroundound
      ),
      onPressed: (){},
      child: Text(
        myText,
        style: GoogleFonts.raleway(
          textStyle:
          TextStyle(color: textColor,fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
