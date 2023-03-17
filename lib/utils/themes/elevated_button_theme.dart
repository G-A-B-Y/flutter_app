import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();//to avoid creating instances


  /*----LIGHT THEME----*/
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
     style: OutlinedButton.styleFrom( elevation: 0 ,
              shape: RoundedRectangleBorder(),
              foregroundColor: tWhiteColor,
              backgroundColor: tSecondaryColor,
              side: BorderSide(color: tSecondaryColor),
              padding:  EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
  );


  /*----DARK THEME----*/
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
     style: OutlinedButton.styleFrom( elevation: 0 ,
              shape: RoundedRectangleBorder(),
              foregroundColor: tSecondaryColor,
              backgroundColor: tWhiteColor,
              side: BorderSide(color: tSecondaryColor),
              padding:  EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
  );


  
}