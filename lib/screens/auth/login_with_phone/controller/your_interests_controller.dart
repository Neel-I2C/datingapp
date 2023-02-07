import 'package:datingapp/screens/auth/login_with_phone/model/interest_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:datingapp/Constant/app_image.dart';
import 'package:datingapp/Constant/app_api.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

class YourInterestsController extends GetxController {
  GetStorage storage = GetStorage();
  InterestModel? interestModel;

  fetchInterest() async {
    try {
      var interest = await fetchInterestService().then((value) {
        interestModel = value;
      });
    } catch (e) {
      log("FETCH INTEREST FUNCTION ERROR :: $e");
    }
  }

  Future<InterestModel> fetchInterestService() async {
    try {
      Dio dio = Dio();
      dio.interceptors.add(
        PrettyDioLogger(
          compact: false,
          responseHeader: true,
          responseBody: true,
          requestHeader: true,
          requestBody: true,
        ),
      );
      var response = await dio.get(
        AppApi.interest,
        options: Options(
          headers: {
            "Authorization": "Bearer ${storage.read("accessToken")}",
          },
        ),
      );
      InterestModel interestModel = InterestModel.fromJson(response.data);
      return interestModel;
      // return InterestModel.fromJson(response.data);
    } catch (e) {
      log("FETCH INTEREST ERROR :: $e");
      throw Exception(e);
    }
  }

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

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchInterest();
  }
}

class InterestsInfo {
  String? title;
  String? image;

  InterestsInfo({this.title, this.image});
}
