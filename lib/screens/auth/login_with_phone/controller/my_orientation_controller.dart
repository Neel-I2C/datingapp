import 'package:get/get.dart';

class MyOrientationController extends GetxController {
  var monVal = false.obs;
  List<String> selectedChoices = [];

  List<String> reportList = [
    "Straight",
    "Gay",
    "Lesbian",
    "Bisexual",
    "Asexual",
    "Demisexual",
    "Pansexual",
  ];
}
