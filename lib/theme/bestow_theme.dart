import 'package:bestow/theme/base_colors.dart';
import 'package:bestow/theme/typography/app_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'base_theme.dart';

class BestowTheme extends BaseTheme {
  const BestowTheme();
  @override
  ThemeData build() {
    return ThemeData(
        cupertinoOverrideTheme: CupertinoThemeData(

            /// Ref. text_selection_theme.dart
            /// "On iOS [TextField] and [SelectableText] cannot access [selectionHandleColor].
            /// To set the [selectionHandleColor] on iOS, you can change the
            /// [CupertinoThemeData.primaryColor] in [ThemeData.cupertinoOverrideTheme]."
            primaryColor: colours.secondaryColor),
        colorScheme: ColorScheme(
            primary: colours.primaryColor,
            onPrimary: colours.white,
            secondary: colours.secondaryColor,
            onSecondary: colours.white,
            error: colours.red,
            onError: colours.white,
            background: colours.white,
            onBackground: colours.black30,
            surface: colours.white,
            onSurface: colours.black30,
            brightness: Brightness.light),
        cardTheme: CardTheme(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
            side: BorderSide(
              color: colours.black180,
            ),
          ),
        ),
        scaffoldBackgroundColor: colours.white,
        appBarTheme: AppBarTheme(
          backgroundColor: colours.black190,
          foregroundColor: colours.black30,
          elevation: 0.0,
          titleTextStyle: fonts.paragraphBold.copyWith(color: colours.black80, fontSize: 16.0),
          centerTitle: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0.0,
          backgroundColor: colours.white,
          selectedItemColor: colours.primaryColor,
          unselectedItemColor: colours.black,
          selectedIconTheme: IconThemeData(color: colours.primaryColor),
          unselectedIconTheme: IconThemeData(color: colours.black),
          selectedLabelStyle: fonts.detail.copyWith(color: colours.primaryColor),
          unselectedLabelStyle: fonts.detail,
        ),
        textButtonTheme: TextButtonThemeData(style: primaryTextButtonTheme),
        textSelectionTheme: TextSelectionThemeData(
            cursorColor: colours.secondaryColor,
            selectionHandleColor: colours.secondaryColor,
            selectionColor: colours.secondaryColorLight),
        inputDecorationTheme: InputDecorationTheme(
          errorStyle: const TextStyle(height: 0),
          fillColor: colours.black190,
          filled: true,
          errorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(
              color: colours.orange,
              width: 2.0,
            ),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(
              color: colours.orange,
              width: 2.0,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(
              color: colours.secondaryColor,
              width: 2.0,
            ),
          ),
          disabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(
              color: colours.black180,
              width: 2.0,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(
              color: colours.secondaryColor,
              width: 2.0,
            ),
          ),
        ));
  }

  @override
  BaseColors get colours => BaseColors();

  @override
  AppFonts get fonts => AppFonts();

  @override
  ButtonStyle get primaryTextButtonTheme {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return colours.black190;
        }
        if (states.contains(MaterialState.pressed)) {
          return colours.secondaryColor.withOpacity(0.9);
        }
        return colours.secondaryColor;
      }),
      overlayColor: MaterialStateProperty.all(colours.white.withOpacity(0.2)),
      textStyle: MaterialStateProperty.all(fonts.paragraphBold),
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return colours.black;
        }
        return colours.white;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
    );
  }

  @override
  ButtonStyle get secondaryTextButtonTheme {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(colours.white),
      textStyle: MaterialStateProperty.all(fonts.paragraphBold),
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return colours.black;
        }
        return colours.black30;
      }),
      overlayColor: MaterialStateProperty.all(colours.secondaryColorLight),
      shape: MaterialStateProperty.resolveWith((states) {
        Color borderColor = colours.secondaryColor;
        if (states.contains(MaterialState.disabled)) {
          borderColor = colours.black180;
        }
        return RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: 2.0),
          borderRadius: BorderRadius.circular(6.0),
        );
      }),
      padding: primaryTextButtonTheme.padding,
    );
  }

  @override
  ButtonStyle get tertiaryTextButtonTheme {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(colours.white),
      textStyle: MaterialStateProperty.all(fonts.paragraphBold),
      foregroundColor: MaterialStateProperty.all(colours.black30),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      padding: primaryTextButtonTheme.padding,
    );
  }
}
