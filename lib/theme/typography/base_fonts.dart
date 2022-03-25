import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class BaseFonts {
  GoogleFonts get fontFamily => GoogleFonts();
  TextStyle get header1;
  TextStyle get header2;
  TextStyle get header3;
  TextStyle get lead;
  TextStyle get paragraph;
  TextStyle get paragraphBold;
  TextStyle get paragraphItalic;
  TextStyle get detail;
  TextStyle get detailBold;
}