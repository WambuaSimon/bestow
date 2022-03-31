import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../base_colors.dart';
import 'base_fonts.dart';

class AppFonts implements BaseFonts {
  AppFonts instance = AppFonts();
  @override
  TextStyle get header1 => GoogleFonts.raleway(
      textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 28.0, color: colors.black30));

  @override
  TextStyle get header2 => GoogleFonts.raleway(
      textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.0, color: colors.black30));

  @override
  TextStyle get header3 => GoogleFonts.raleway(
      textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.0, color: colors.black30));

  @override
  TextStyle get lead => const TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0);

  @override
  TextStyle get paragraph =>
      TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0, color: colors.black30);

  @override
  TextStyle get paragraphBold =>
      TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0, color: colors.black30);

  @override
  TextStyle get paragraphItalic => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18.0,
        fontStyle: FontStyle.italic,
        color: colors.black30,
      );

  @override
  TextStyle get detail =>
      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0, color: colors.black30);

  @override
  TextStyle get detailBold =>
      TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0, color: colors.black30);

  @override
  GoogleFonts get fontFamily => GoogleFonts();

  BaseColors get colors => BaseColors();
}
