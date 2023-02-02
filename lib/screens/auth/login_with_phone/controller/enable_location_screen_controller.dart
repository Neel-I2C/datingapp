import 'dart:developer';

import 'package:datingapp/utiles/networkservice/profile_create_service.dart';
import 'package:get/get.dart';

class EnableLocationScreenController extends GetxController {
  createProfile() async {
    try {
      var profile = await ProfileCreateService.profileCreateService();
    } catch (e) {
      log("CREATE PROFILE ERROR :: $e");
    }
  }
}
