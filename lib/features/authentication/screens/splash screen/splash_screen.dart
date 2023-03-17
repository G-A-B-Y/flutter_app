import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_screen/constants/colors.dart';
import 'package:login_screen/constants/sizes.dart';
import 'package:login_screen/constants/text_strings.dart';
import 'package:login_screen/features/authentication/controllers/splash_scrren_controller.dart';
import '../../../../constants/image_strings.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}):super(key:key);

final SplashController = Get.put(SplashScreenController()); 
   


  @override
  Widget build(BuildContext context) {
    SplashController.StartAnimation();
    return Scaffold(
      body: Stack (
          children:    [
            
        //      Obx( () => AnimatedPositioned(
       //      duration: const Duration(milliseconds: 1600),
         //    top: SplashController.animate.value ? 0 : -30, 
           //  left:  SplashController.animate.value ? 0 : -30,
           //  child:  const Image(
             // image:AssetImage(tSplashTopIcon)),
         //),
             // ),



       Obx( () => AnimatedPositioned(
          duration: const Duration(milliseconds: 1600),
          top:80,
           left: SplashController.animate.value ? tDefaultSize :-0 ,
           child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 1600),

             opacity:SplashController.animate.value? 1:0,
             child:Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children:  [
              Text(tAppName, 
              style: Theme.of(context).textTheme.headline3,),
              Text(tAppTagLine, 
              style: Theme.of(context).textTheme.headline2,)   
            ],
           ),
      ),
       ),
       ),
           Obx( () => AnimatedPositioned(
           duration: const Duration(milliseconds: 2400),
            bottom: SplashController.animate.value? 100:0, 
            child:AnimatedOpacity(
            duration: const Duration(milliseconds: 2000),
            opacity: SplashController.animate.value? 1:0,
            child:  Image(image:AssetImage(tSplashImage)),
           ),
         ),
       ),

        Obx( () => AnimatedPositioned(
         duration: const Duration(milliseconds: 2400),

            bottom: SplashController.animate.value? 60:0, 
            right: tDefaultSize,  
            child:AnimatedOpacity(
            duration: const Duration(milliseconds: 2000), 
            opacity: SplashController.animate.value? 1:0,
            
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),             
              color: tPrimaryColor,
              ),
            ),
             ),
        ),
        ),
        ],
      ) 
    );
}
}
  