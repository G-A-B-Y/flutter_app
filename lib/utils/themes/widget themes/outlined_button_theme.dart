import 'package:flutter/material.dart';
import 'package:login_screen/constants/colors.dart';
import 'package:login_screen/constants/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); //to avoid creating instances


  /*----LIGHT THEME----*/
static final lightOutlinedButtonTheme = OutlinedButtonThemeData(

  style: OutlinedButton.styleFrom(
             shape: RoundedRectangleBorder(),
             foregroundColor: tSecondaryColor,
             side: BorderSide(color: tSecondaryColor),
             padding:  EdgeInsets.symmetric(vertical: tButtonHeight),
   ),
);

  /*----DARK THEME----*/
static final darkOutlinedButtonTheme = OutlinedButtonThemeData(

  style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(),
             foregroundColor: tWhiteColor,
             side: BorderSide(color: tWhiteColor),
             padding:  EdgeInsets.symmetric(vertical: tButtonHeight),
   ),
);

  
}
/* elevation: 0 ,
              shape: RoundedRectangleBorder(),
              foregroundColor: tSecondaryColor,
              side: BorderSide(color: tSecondaryColor),
              padding:  EdgeInsets.symmetric(vertical: tButtonHeight),*/