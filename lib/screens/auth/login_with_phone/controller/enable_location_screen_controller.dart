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

  logAllData() {
    log("TOKEN :: ${storage.read("accessToken")}");
    log("FIRST NAME :: ${profileDetailScreenController.fNameController.text}");
    log("LAST NAME :: ${profileDetailScreenController.lNameController.text}");
    log("DOB :: ${myBirthDAyScreenController.birthdayController.text}");
    log("IAM :: ${iAmController.title[iAmController.selectedIndex]}");
    log("S ORIENTATION :: ${myOrientationController.selectedChoices}");
    log("SHOW ME :: ${showMeController.title[showMeController.selectedIndex]}");
    log("SCHOOL :: ${mySchoolScreenController.schoolController.text}");
    log("INTEREST :: ${yourInterestsController.selectedList}");
    log("IMAGE :: ${[
      "/home/i2c/Pictures/Screenshots/Screenshot_from_2022-12-16_09-11-20.png",
      "/home/i2c/Pictures/Screenshots/Screenshot_from_2022-12-27_14-25-37.png"
    ]}");
  }

  createProfile() async {
    log("1");
    try {
      log("2");
      var profile = await ProfileCreateService.profileCreateService(
        token: "${storage.read("accessToken")}",
        firstName: profileDetailScreenController.fNameController.text,
        lastName: profileDetailScreenController.lNameController.text,
        dob: myBirthDAyScreenController.birthdayController.text,
        iAm: iAmController.title[iAmController.selectedIndex],
        sexualOrientation: myOrientationController.selectedChoices,
        showMe: showMeController.title[showMeController.selectedIndex],
        school: mySchoolScreenController.schoolController.text,
        interest: yourInterestsController.selectedList,
        images: [
          "/home/i2c/Pictures/Screenshots/Screenshot_from_2022-12-16_09-11-20.png",
          "/home/i2c/Pictures/Screenshots/Screenshot_from_2022-12-27_14-25-37.png"
        ],
        longitude: longitude,
        latitude: latitude,
      );
      log("3");
      profile.status![0] == "HTTP_200_OK"
          ? appToast(msg: profile.status![0])
          : null;
      log("4");
    } catch (e) {
      log("CREATE PROFILE ERROR :: $e");
    }
  }
}
