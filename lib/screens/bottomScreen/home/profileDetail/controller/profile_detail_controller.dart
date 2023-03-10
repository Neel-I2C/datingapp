import 'package:datingapp/screens/bottomScreen/home/profileDetail/model/model.dart';
import 'package:datingapp/utiles/networkservice/profile_detail_screen_service.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'dart:developer';

class ProfileDetailController extends GetxController {
  RxBool isLoading = false.obs;
  ProfileMeModel? profileMeModel;
  RxList selectedList = [].obs;
  GetStorage storage = GetStorage();
  List<ProfileDetailInfo> itemList = [
    ProfileDetailInfo(title: "Travelling"),
    ProfileDetailInfo(title: "Books"),
    ProfileDetailInfo(title: "Music"),
    ProfileDetailInfo(title: "Dancing"),
    ProfileDetailInfo(title: "Modeling"),
  ];

  fetchProfile() async {
    isLoading.value = true;
    try {
      var profile = await ProfileDetailScreenService.profileDetailScreenService(
        token: storage.read("accessToken"),
      ).then((value) {
        profileMeModel = value;
      });
      isLoading.value = false;
      update();
    } catch (e) {
      log("FETCH PROFILE ERROR :: $e");
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProfile();
  }
}

class ProfileDetailInfo {
  String? title;
  String? image;
  bool? isSelected;

  ProfileDetailInfo({
    this.title,
    this.isSelected,
  });
}
