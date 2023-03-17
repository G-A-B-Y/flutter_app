import 'package:flutter/material.dart';
import 'package:login_screen/constants/colors.dart';

class TTextFormFeildTheme {
  TTextFormFeildTheme._();


static InputDecorationTheme lightInputDecorationTheme =
const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: tWhiteColor,
        floatingLabelStyle: TextStyle(color: tWhiteColor),
        focusedBorder : OutlineInputBorder(
          borderSide : BorderSide(width: 2,color:tWhiteColor),
        )

);

static InputDecorationTheme darkInputDecorationTheme =
const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: tPrimaryColor,
        floatingLabelStyle: TextStyle(color: tPrimaryColor),
        focusedBorder : OutlineInputBorder(
          borderSide : BorderSide(width: 2,color:tPrimaryColor),
        ));


}