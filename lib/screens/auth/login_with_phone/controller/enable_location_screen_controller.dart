import 'package:datingapp/screens/auth/login_with_phone/controller/whatsa_your%20email_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/profile_detail_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_birthday_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_school_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_orientation_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/your_interests_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/i_am_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/add_photos_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/show_me_controller.dart';
import 'package:get/get.dart';
import 'dart:developer';

class EnableLocationScreenController extends GetxController {
  WhatsYourEmailScreenController whatsYourEmailScreenController = Get.find();
  ProfileDetailScreenController profileDetailScreenController = Get.find();
  MyBirthDAyScreenController myBirthDAyScreenController = Get.find();
  IAmController iAmController = Get.find();
  MyOrientationController myOrientationController = Get.find();
  ShowMeController showMeController = Get.find();
  MySchoolScreenController mySchoolScreenController = Get.find();
  YourInterestsController yourInterestsController = Get.find();
  AddPhotosController addPhotosController = Get.find();
  createProfile() async {
    try {
      // var profile = await ProfileCreateService.profileCreateService();
    } catch (e) {
      log("CREATE PROFILE ERROR :: $e");
    }
  }
}
