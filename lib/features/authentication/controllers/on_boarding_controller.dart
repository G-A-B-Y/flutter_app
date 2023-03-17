 import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'dart:ui';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/splash screen/welcome screen/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  
  final controller = LiquidController();
  RxInt currentPage=0.obs ; 
  

      final pages =[
        OnBoardingPageWidget(model: OnBoardingModel(
          image:tOnBoardingImage1,
          title: tOnBoardingTitle1,
          subTitle: tOnBoardingSubTitle1,
          counterText: tOnBoardCounter1,
          height: Size,
          bgColor: tOnBoardingPage1Color, 
        ),
        ),

          OnBoardingPageWidget(model: OnBoardingModel(
          image:tOnBoardingImage1,
          title: tOnBoardingTitle1,
          subTitle: tOnBoardingSubTitle1,
          counterText: tOnBoardCounter1,
          height: Size,
          bgColor: tOnBoardingPage1Color, 
        ),
        ),

          OnBoardingPageWidget(model: OnBoardingModel(
          image:tOnBoardingImage1,
          title: tOnBoardingTitle1,
          subTitle: tOnBoardingSubTitle1,
          counterText: tOnBoardCounter1,
          height: Size,
          bgColor: tOnBoardingPage1Color, 
        ),
        ),

      ];

      skip() => controller.jumpToPage(page: 2);
      animateToNextSlide() {} 
      // ignore: non_constant_identifier_names
      OnPageChangeCallback(int activePageIndex) => currentPage.value=activePageIndex;
   
  void onPageChangeCallback(int activePageIndex) {
  }
}
  
  
