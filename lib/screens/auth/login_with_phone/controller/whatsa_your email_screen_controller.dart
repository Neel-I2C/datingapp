import 'package:datingapp/screens/auth/login_option_screen_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class WhatsYourEmailScreenController extends GetxController {
  RxBool isLoading = false.obs;
  LogInOptionScreenController logInOptionScreenController = Get.find();
  FirebaseAuth auth = FirebaseAuth.instance;
}
