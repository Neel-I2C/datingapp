import 'package:datingapp/screens/auth/login_with_phone/controller/whatsa_your%20email_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/profile_detail_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_birthday_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_school_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_orientation_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/your_interests_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/i_am_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/add_photos_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/show_me_controller.dart';
import '../../../../utiles/networkservice/profile_create_service.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:get_storage/get_storage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'dart:developer';

class EnableLocationScreenController extends GetxController {
  WhatsYourEmailScreenController whatsYourEmailScreenController = Get.find();
  ProfileDetailScreenController profileDetailScreenController = Get.find();
  MyBirthDAyScreenController myBirthDAyScreenController = Get.find();
  MySchoolScreenController mySchoolScreenController = Get.find();
  MyOrientationController myOrientationController = Get.find();
  YourInterestsController yourInterestsController = Get.find();
  AddPhotosController addPhotosController = Get.find();
  ShowMeController showMeController = Get.find();
  IAmController iAmController = Get.find();
  GetStorage storage = GetStorage();
  RxBool isLoading = false.obs;
  double? longitude;
  double? latitude;

  Future<Position> getUserCurrentLocation() async {
    try {
      await Geolocator.requestPermission()
          .then((value) {})
          .onError((error, stackTrace) async {
        await Geolocator.requestPermission();
      });
      return await Geolocator.getCurrentPosition();
    } catch (e) {
      log("GET USER CURRENT LOCATION ERROR :: $e");
      throw Exception(e);
    }
  }

  createProfile() async {
    try {
      var profile = await ProfileCreateService.profileCreateService(
        token: "${storage.read("accessToken")}",
        aboutMe: whatsYourEmailScreenController.emailController.text,
        jobTitle: profileDetailScreenController.fNameController.text,
        company: profileDetailScreenController.lNameController.text,
        school: myBirthDAyScreenController.birthdayController.text,
        livingIn: iAmController.title[iAmController.selectedIndex],
        petsLoverId: 1,
        showMe: "men",
        latitude: latitude,
        longitude: longitude,
      );
      profile.status![0] == "HTTP_200_OK"
          ? appToast(msg: profile.status![0])
          : null;
    } catch (e) {
      log("CREATE PROFILE ERROR :: $e");
    }
  }
}
