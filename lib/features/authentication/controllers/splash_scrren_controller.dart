import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

import '../screens/on_boarding_screen.dart';
import '../screens/splash screen/welcome screen/welcomeScreen.dart';


class SplashScreenController extends GetxController {
  static SplashScreenController get find=> Get.find();
  RxBool animate= false.obs;


  Future StartAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
     animate.value= true;
          await Future.delayed(Duration(milliseconds: 5000));
          Get.to(WelcomeScreen());
   
    
  }
}

