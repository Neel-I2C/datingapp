import 'dart:developer';
import 'package:datingapp/screens/auth/login_with_phone/verify_otp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MyMobileScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();
  String verificationId = "";
  TextEditingController numberController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;

  verifyPhoneNumber() {
    try {
      isLoading.value = true;
      auth
          .verifyPhoneNumber(
        timeout: Duration(seconds: 60),
        phoneNumber: "+91${numberController.text}",
        verificationCompleted: (PhoneAuthCredential phoneAuthCredential) {
          log("******************************************************************");
        },
        verificationFailed: (FirebaseAuthException error) {
          log("ERROR :: $error");
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          this.verificationId = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          this.verificationId = verificationId;
        },
      )
          .then((value) {
        Get.to(() => VerifyOtpScreen());
      });
      isLoading.value = false;
    } on FirebaseAuthException catch (e) {
      log("FIREBASE ERROR :: $e");
      isLoading.value = false;
    } catch (e) {
      log("ERROR :: $e");
      isLoading.value = false;
    }
  }
}
