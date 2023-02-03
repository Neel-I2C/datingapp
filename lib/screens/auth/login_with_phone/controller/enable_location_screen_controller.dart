import 'dart:developer';
import 'package:get/get.dart';

class EnableLocationScreenController extends GetxController {
  createProfile() async {
    try {
      // var profile = await ProfileCreateService.profileCreateService();
    } catch (e) {
      log("CREATE PROFILE ERROR :: $e");
    }
  }
}
