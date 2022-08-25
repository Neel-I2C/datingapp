import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxService {
  var currentSliderValue = 20.0.obs;
  Rx<RangeValues> currentRangeValues = RangeValues(0, 20).obs;
}
