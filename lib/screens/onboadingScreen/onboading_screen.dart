import 'package:datingapp/screens/onboadingScreen/controller/onboarding_controller.dart';
import 'package:datingapp/screens/onboadingScreen/utiles/onboarding_utiles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constant/app_color.dart';

class OnBoardingScreen extends StatelessWidget {
  final OnBoardingController onBoardingController =
      Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Stack(
        alignment: Alignment.center,
        children: [
          FirstPart(onBoardingController: onBoardingController),
          SecondPart(onBoardingController: onBoardingController),
        ],
      ),
    );
  }
}
