import 'package:datingapp/Constant/app_image.dart';
import 'package:datingapp/screens/auth/login_option_screen.dart';
import 'package:datingapp/screens/onboadingScreen/model/onboarding_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  var selectedPageIndex = 0.obs;

  bool get isLastPage => selectedPageIndex.value == onBoardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      Get.offAll(() => LogInOptionScreen());
      //go to home page
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnBoardingInfo> onBoardingPages = [
    OnBoardingInfo(
        AppImage.onBoarding1, 'Find people who ', 'match', "\nwith you"),
    OnBoardingInfo(AppImage.onBoarding2, 'Easily ', 'message & call the',
        "\npeople you like"),
    OnBoardingInfo(AppImage.onBoarding3, 'Don’t wait anymore, find\nout your ',
        'soul mate ', "now")
  ];

  List onBoardingPages1 = [
    "Be a top profile in your area for\n30 minutes to get more matches",
    "Be a top profile in your area for\n30 minutes to get more matches",
    "Be a top profile in your area for\n30 minutes to get more matches",
    "Be a top profile in your area for\n30 minutes to get more matches",
    "Be a top profile in your area for\n30 minutes to get more matches",
  ];
}
