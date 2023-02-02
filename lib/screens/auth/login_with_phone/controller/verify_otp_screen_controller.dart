import 'dart:developer';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_mobile_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/whats_your_email_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerifyOtpScreenController extends GetxController {
  MyMobileScreenController myMobileScreenController = Get.find();
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController otpController = TextEditingController();
  checkOtp() async {
    try {
      await auth.signInWithCredential(
        PhoneAuthProvider.credential(
          verificationId: myMobileScreenController.verificationId,
          smsCode: otpController.text,
        ),
      );
      appToast(msg: "Success");
      Get.to(() => WhatsYourEmailScreen());
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-verification-code") {
        appToast(msg: "Invalid OTP");
      }
      log("FIREBASE ERROR :: $e");
    } catch (e) {
      log("ERROR :: $e");
    }
  }
}
