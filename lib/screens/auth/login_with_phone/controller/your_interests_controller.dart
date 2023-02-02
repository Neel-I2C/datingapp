import 'package:datingapp/Constant/app_image.dart';
import 'package:get/get.dart';

class YourInterestsController extends GetxController {
  RxList selectedList = [].obs;
  List<InterestsInfo> itemList = [
    InterestsInfo(title: "Photography", image: AppImage.camera),
    InterestsInfo(title: "Shopping", image: AppImage.bag),
    InterestsInfo(title: "Karaoke", image: AppImage.microPhone),
    InterestsInfo(title: "Yoga", image: AppImage.yoga),
    InterestsInfo(title: "Cooking", image: AppImage.cooking),
    InterestsInfo(title: "Tennis", image: AppImage.tennis),
    InterestsInfo(title: "Run", image: AppImage.run),
    InterestsInfo(title: "Swimming", image: AppImage.swimming),
    InterestsInfo(title: "Art", image: AppImage.art),
    InterestsInfo(title: "Traveling", image: AppImage.traveling),
    InterestsInfo(title: "Extreme", image: AppImage.extreme),
    InterestsInfo(title: "Music", image: AppImage.music),
    InterestsInfo(title: "Drink", image: AppImage.drink),
    InterestsInfo(title: "Video games", image: AppImage.videoGame),
  ];
  List<InterestsInfo> itemListInterest = [
    InterestsInfo(title: "Photography", image: AppImage.camera),
    InterestsInfo(title: "Shopping", image: AppImage.bag),
    InterestsInfo(title: "Karaoke", image: AppImage.microPhone),
    InterestsInfo(title: "Yoga", image: AppImage.yoga),
    InterestsInfo(title: "Cooking", image: AppImage.cooking),
    InterestsInfo(title: "Tennis", image: AppImage.tennis),
    InterestsInfo(title: "Run", image: AppImage.run),
    InterestsInfo(title: "Swimming", image: AppImage.swimming),
    InterestsInfo(title: "Art", image: AppImage.art),
    InterestsInfo(title: "Traveling", image: AppImage.traveling),
    InterestsInfo(title: "Extreme", image: AppImage.extreme),
    InterestsInfo(title: "Music", image: AppImage.music),
    InterestsInfo(title: "Drink", image: AppImage.drink),
    InterestsInfo(title: "Video games", image: AppImage.videoGame),
    InterestsInfo(title: "Photography", image: AppImage.camera),
    InterestsInfo(title: "Shopping", image: AppImage.bag),
    InterestsInfo(title: "Karaoke", image: AppImage.microPhone),
    InterestsInfo(title: "Yoga", image: AppImage.yoga),
    InterestsInfo(title: "Cooking", image: AppImage.cooking),
    InterestsInfo(title: "Tennis", image: AppImage.tennis),
    InterestsInfo(title: "Run", image: AppImage.run),
    InterestsInfo(title: "Swimming", image: AppImage.swimming),
    InterestsInfo(title: "Art", image: AppImage.art),
    InterestsInfo(title: "Traveling", image: AppImage.traveling),
  ];
}

class InterestsInfo {
  String? title;
  String? image;

  InterestsInfo({this.title, this.image});
}
