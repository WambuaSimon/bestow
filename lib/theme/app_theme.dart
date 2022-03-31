import 'package:bestow/theme/bestow_theme.dart';
import 'package:bestow/theme/typography/app_fonts.dart';
import 'package:flutter/material.dart';

import 'base_colors.dart';
import 'base_theme.dart';

class AppTheme {
  static AppTheme instance = AppTheme();
  late BaseTheme baseTheme;

  BaseColors get colors => BaseColors();

  AppFonts get font => AppFonts();


  ThemeData buildTheme() {
    return baseTheme.build();
  }
}

