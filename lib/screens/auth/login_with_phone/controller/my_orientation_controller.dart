import 'package:datingapp/screens/auth/login_with_phone/model/orintation_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:datingapp/Constant/app_api.dart';
import 'package:get_storage/get_storage.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'dart:developer';

class MyOrientationController extends GetxController {
  var monVal = false.obs;
  GetStorage storage = GetStorage();
  List<String> selectedChoices = [];

  Future<OrientationModel> fetchOrientation() async {
    try {
      Dio dio = Dio();
      dio.interceptors.add(
        PrettyDioLogger(
          compact: false,
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
        ),
      );
      var response = await dio.get(
        AppApi.orient,
        options: Options(
          headers: {
            "Authorization": "Bearer ${storage.read("accessToken")}",
          },
        ),
      );
      return OrientationModel.fromJson(response.data);
    } catch (e) {
      log("FETCH ORIENTATION ERROR :: $e");
      throw Exception(e);
    }
  }

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
