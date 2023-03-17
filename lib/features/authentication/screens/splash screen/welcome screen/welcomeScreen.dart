import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_screen/constants/colors.dart';
import 'package:login_screen/constants/sizes.dart';
import 'package:login_screen/constants/text_strings.dart';

import '../../../../../constants/image_strings.dart';
import '../../Signup/signup_screen.dart';
import '../../login/login_screen.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var mediaQuery= MediaQuery.of(context);
    var height = MediaQuery.of(context).size.height;
     var brightness = MediaQuery.of(context).platformBrightness;
     final isDarkMode = brightness ==Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Container(
        padding:EdgeInsets.all(tDefaultSize) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            Image(image: AssetImage(tWelcomeScreenImage),height:height*0.5,),
             Column(
               children: [
                 Text(tWelcomeTitle, style: Theme.of(context).textTheme.headline3,),
            Text(tWelcomeSubTitile,style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,),
               ],
             ),
            Row(
              children: [
                Expanded(
                  child: 
                    OutlinedButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                       child: Text(tLogin.toUpperCase()))),
                    const SizedBox(width: 10.0,),


                    Expanded(
                      child: ElevatedButton(
                        onPressed: ()=> Get.to(() => const SignUpScreen()),
                         child: Text(tSignup.toUpperCase()))),
              
                  ],
                ),
              ],
            )
        ),
      );
  }
}