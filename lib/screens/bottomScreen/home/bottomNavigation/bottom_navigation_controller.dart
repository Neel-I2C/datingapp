import '../../../../utiles/networkservice/home_screen_service.dart';
import 'package:get_storage/get_storage.dart';
import '../Model/all_profile_model.dart';
import 'package:get/get.dart';
import 'dart:developer';

class NavigationController extends GetxController {
  var pageIndex = 0.obs;
  GetStorage storage = GetStorage();
  AllProfileModel? allProfileModel;

  fetchAllProfile() async {
    try {
      var profile = await HomeScreenService.fetchAllProfile(
        token: storage.read("accessToken"),
      ).then((value) {
        allProfileModel = value;
      });
    } catch (e) {
      log("FETCH ALL PROFILE FUNCTION ERROR :: $e");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchAllProfile();
  }
}
