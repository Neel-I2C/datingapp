import 'package:datingapp/screens/splashScreen/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constant/app_image.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashMainController>(
        init: SplashMainController(),
        builder: (controller) => SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image(
            image: AssetImage(AppImage.splashBg),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
