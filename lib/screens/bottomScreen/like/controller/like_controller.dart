import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Constant/app_image.dart';

class LikeController extends GetxController {
  List<LikeInfo> itemList = [
    LikeInfo(image: AppImage.gril1Without),
    LikeInfo(image: AppImage.gril2without),
    LikeInfo(image: AppImage.girl3),
    LikeInfo(image: AppImage.girl4),
    LikeInfo(image: AppImage.girl5),
    LikeInfo(image: AppImage.girl6),
    LikeInfo(image: AppImage.girl7),
  ];

  var isSelected = false.obs;
  var isScreen = false.obs;
}

class LikeInfo {
  String? image;
  String? title;
  String? subTitle;

  LikeInfo({this.image, this.title, this.subTitle});
}

class OnBoardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var selectedIndex;

  void selectedItem(index) {
    selectedIndex = index;
    update();
  }

  bool get isLastPage => selectedPageIndex.value == onBoardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      // Get.offAll(() => LogInOptionScreen());
      //go to home page
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<LikeInfo> onBoardingPages = [
    LikeInfo(
        title: "Unlimited Likes", subTitle: "Send as many likes as you want"),
    LikeInfo(
        title: "Unlimited Likes", subTitle: "Send as many likes as you want"),
    LikeInfo(
        title: "Unlimited Likes", subTitle: "Send as many likes as you want"),
    LikeInfo(
        title: "Unlimited Likes", subTitle: "Send as many likes as you want"),
    LikeInfo(
        title: "Unlimited Likes", subTitle: "Send as many likes as you want"),
  ];
  List<LikeInfo> primeInfo = [
    LikeInfo(title: "months", subTitle: "\$7/mo", image: "12"),
    LikeInfo(title: "months", subTitle: "\$10/mo", image: "6"),
    LikeInfo(title: "months", subTitle: "\$19/mo", image: "1"),
  ];
}
