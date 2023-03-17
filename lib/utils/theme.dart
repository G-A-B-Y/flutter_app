import 'package:flutter/material.dart';
import 'package:login_screen/utils/themes/elevated_button_theme.dart';
import 'package:login_screen/utils/themes/widget%20themes/outlined_button_theme.dart';
import 'package:login_screen/utils/themes/widget%20themes/text_field_theme.dart';
import 'package:login_screen/utils/themes/widget%20themes/text_theme.dart';

class TAppTheme {

  static  ThemeData lightTheme =ThemeData(
  primarySwatch: Colors.yellow,
  brightness: Brightness.light,
  textTheme: TTextTheme.lightTextTheme,
  appBarTheme: AppBarTheme(),
  floatingActionButtonTheme: FloatingActionButtonThemeData(),
  elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
  inputDecorationTheme: TTextFormFeildTheme.lightInputDecorationTheme,
  );

   static  ThemeData darkTheme =ThemeData(
  primarySwatch: Colors.yellow,
  brightness: Brightness.dark, 
  textTheme: TTextTheme.darkTextTheme,
  appBarTheme: AppBarTheme(),
  floatingActionButtonTheme: FloatingActionButtonThemeData(),
  elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
  inputDecorationTheme:TTextFormFeildTheme.darkInputDecorationTheme,

  );
}