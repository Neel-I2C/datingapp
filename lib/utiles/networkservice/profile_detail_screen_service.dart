import 'dart:developer';
import 'package:datingapp/Constant/app_api.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../screens/bottomScreen/home/profileDetail/model/model.dart';

class ProfileDetailScreenService {
  static Future<ProfileModel> profileDetailScreenService() async {
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
      var response = await dio.get(AppApi.userProfile);
      return ProfileModel.fromJson(response.data);
    } catch (e) {
      log("PROFILE DETAIL SCREEN SERVICE ERROR :: $e");
      throw Exception(e);
    }
  }
}
