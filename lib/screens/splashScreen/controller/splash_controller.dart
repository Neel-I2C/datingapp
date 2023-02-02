import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:datingapp/screens/onboadingScreen/onboading_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../Constant/app_color.dart';

class SplashMainController extends GetxController {
  @override
  void onInit() {
    // checkUserConnection();
    Timer(
      Duration(seconds: 5),
      () {
        Get.off(() => OnBoardingScreen());
      },
    );
    super.onInit();
  }

  var activeConnection = false.obs;
  var T = "".obs;

  ///check internet
  Future checkUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        activeConnection(true);
        T.value = "Turn off the data and repress again";
        log("  ON INTERNET    ${T.value}");
      }
    } on SocketException catch (_) {
      activeConnection(false);
      T.value = "Turn On the data and repress again";
      appToast(msg: "Please check ");
      log("  ON INTERNET    ${T.value}");
    }
  }
}
