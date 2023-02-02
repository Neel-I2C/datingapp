import 'dart:developer';
import 'package:datingapp/screens/auth/trouble_login/check_your_email_screen.dart';
import 'package:datingapp/utiles/networkservice/login_by_email_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInByEmailController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController email = TextEditingController();
  RxString controllerText = ''.obs;
  FirebaseAuth auth = FirebaseAuth.instance;
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  signIn() async {
    try {
      var userRegister = await LoginByEmailService.loginByEmail(
        username: usernameController.text,
        email: emailController.text,
        password: passwordController.text,
      );
      userRegister.status![0] == 201
          ? Get.to(() => CheckYourEmailScreen())
          : null;
    } catch (e) {
      log("SIGN IN FUNCTION ERROR :: $e");
    }
  }

  // emailAuth() async {
  //   log("1");
  //   isLoading.value = true;
  //   log("2");
  //   try {
  //     log("3");
  //     UserCredential userCredential = await auth.signInWithEmailAndPassword(
  //       email: emailController.text,
  //       password: passwordController.text,
  //     );
  //     log("4");
  //     Get.to(() => WhatsYourEmailScreen());
  //     isLoading.value = false;
  //     log("5");
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == "user-not-found" || e.code == "wrong-password") {
  //       signUp();
  //     }
  //     log("EMAIL AUTH FIREBASE ERROR :: $e");
  //   } catch (e) {
  //     isLoading.value = false;
  //     log("EMAIL AUTH ERROR :: $e");
  //   }
  // }
  //
  // signUp() async {
  //   log("neel 1");
  //   isLoading.value = true;
  //   log("neel 2");
  //   try {
  //     log("neel 3");
  //     UserCredential userCredential = await auth.createUserWithEmailAndPassword(
  //       email: emailController.text,
  //       password: passwordController.text,
  //     );
  //     log("neel 4");
  //     Get.to(() => WhatsYourEmailScreen());
  //     isLoading.value = false;
  //     log("neel 5");
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == "email-already-in-use") {
  //       appToast(
  //           msg: "The email has been used by another platform (Ex: Google)");
  //     }
  //     isLoading.value = false;
  //     log("EMAIL AUTH {SIGN UP} FIREBASE ERROR :: $e");
  //   } catch (e) {
  //     isLoading.value = false;
  //     log("EMAIL AUTH {SIGN UP} ERROR :: $e");
  //   }
  // }

  @override
  void onInit() {
    email.addListener(() {
      controllerText.value = email.text;
    });

    debounce(controllerText, (_) {
      print("debouce$_");
    }, time: Duration(seconds: 1));
    super.onInit();
  }
}
