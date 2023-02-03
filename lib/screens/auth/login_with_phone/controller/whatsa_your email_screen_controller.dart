import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhatsYourEmailScreenController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailController = TextEditingController();
  // LogInOptionScreenController logInOptionScreenController = Get.find();
  FirebaseAuth auth = FirebaseAuth.instance;
}
