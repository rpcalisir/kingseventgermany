import 'package:flutter/material.dart';
import 'package:kingseventgermany/src/utils/widget_themes/elevated_button_theme.dart';
import 'package:kingseventgermany/src/utils/widget_themes/outlined_button_theme.dart';
import 'package:kingseventgermany/src/utils/widget_themes/text_theme.dart';

import '../widget_themes/input_decoration_theme.dart';

class AppThemeUtility {
  // Private Constructor
  AppThemeUtility._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextThemeUtility.lightTextTheme,
    primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
      50: Color(0x1AFFE200),
      100: Color(0x33FFE200),
      200: Color(0x4DFFE200),
      300: Color(0x66FFE200),
      400: Color(0x80FFE200),
      500: Color(0xFFFFE200),
      600: Color(0x99FFE200),
      700: Color(0xB3FFE200),
      800: Color(0xCCFFE200),
      900: Color(0xE6FFE200),
    }),
    outlinedButtonTheme: OutlinedButtonThemeUtility.lightOutlinedButtonTheme,
    elevatedButtonTheme: ElevatedButtonThemeUtility.lightElevatedButtonTheme,
    inputDecorationTheme: InputDecorationThemeUtility.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextThemeUtility.darkTextTheme,
    primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
      50: Color(0x1AFFE200),
      100: Color(0x33FFE200),
      200: Color(0x4DFFE200),
      300: Color(0x66FFE200),
      400: Color(0x80FFE200),
      500: Color(0xFFFFE200),
      600: Color(0x99FFE200),
      700: Color(0xB3FFE200),
      800: Color(0xCCFFE200),
      900: Color(0xE6FFE200),
    }),
    outlinedButtonTheme: OutlinedButtonThemeUtility.darkOutlinedButtonTheme,
    elevatedButtonTheme: ElevatedButtonThemeUtility.darkElevatedButtonTheme,
    inputDecorationTheme: InputDecorationThemeUtility.darkInputDecorationTheme,
  );
}
