import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_screen/constants/sizes.dart';
import 'package:login_screen/constants/text_strings.dart';
import 'package:login_screen/features/authentication/controllers/on_boarding_controller.dart';
import 'package:login_screen/features/authentication/models/model_on_boarding.dart';
import 'package:login_screen/features/authentication/screens/splash%20screen/welcome%20screen/on_boarding_page_widget.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {  
 OnBoardingScreen({Key? key}) : super(key: key);

  
      

  @override
  Widget build(BuildContext context) {
    //final obController = OnBoardingController();
    return Scaffold(
      body: Stack(
      //  alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: [
              Container(
                padding: const EdgeInsets.all(tDefaultSize),
                color: tOnBoardingPage1Color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                const  Image(image: AssetImage(tOnBoardingImage1)),
                  Column(
                    children:[
                        Text(tOnBoardingTitle1,style: Theme.of(context).textTheme.headline3),
                        const Text(tOnBoardingSubTitle1, textAlign: TextAlign.center,),

                    ]
                  ),
                 
                  Text(tOnBoardingTitle1, style: Theme.of(context).textTheme.headline6,),
                  SizedBox(height: 50.0,),
                  Text(tOnBoardingSubTitle1),
                  Text(tOnBoardCounter1),

                
              ]
              ),
              ),
              Container(color: tOnBoardingPage2Color),
              Container(color: tOnBoardingPage3Color),
            ],
          ),
        ],
      ),
    );
  }
}
