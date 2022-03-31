import 'package:bestow/theme/typography/app_fonts.dart';
import 'package:flutter/material.dart';

import 'base_colors.dart';

abstract class BaseTheme {
const BaseTheme();
  ThemeData build();

  BaseColors get colours;
  AppFonts get fonts;
  ButtonStyle get primaryTextButtonTheme;
  ButtonStyle get secondaryTextButtonTheme;
  ButtonStyle get tertiaryTextButtonTheme;
}