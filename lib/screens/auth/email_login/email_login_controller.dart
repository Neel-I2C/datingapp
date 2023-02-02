import 'package:datingapp/utiles/networkservice/email_login_service.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';
import 'package:get_storage/get_storage.dart';

class EmailLoginController extends GetxController {
  RxBool isLoading = false.obs;
  GetStorage storage = GetStorage();
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginWithEmail() async {
    try {
      log("1");
      var emailLogin = await EmailLoginService.emailLoginService(
        email: emailController.text,
        password: passwordController.text,
      );
      log("2");
      if (emailLogin.access != null || emailLogin.refresh != null) {
        log("SUCCESSA");
        storage.write("accessToken", emailLogin.access);
        storage.write("refreshToken", emailLogin.refresh);
        appToast(msg: "Signin Success");
      }
      log("3");
    } catch (e) {
      log("LOGIN WITH EMAIL FUNCTION ERROR :: $e");
    }
  }
}
