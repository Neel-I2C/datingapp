import '../../screens/bottomScreen/home/profileDetail/model/model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:datingapp/Constant/app_api.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

class ProfileDetailScreenService {
  static Future<ProfileMeModel> profileDetailScreenService({
    required var token,
  }) async {
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
        AppApi.profileMe,
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
      ProfileMeModel profileMeModel = ProfileMeModel.fromJson(response.data);
      return profileMeModel;
    } catch (e) {
      log("PROFILE DETAIL SCREEN SERVICE ERROR :: $e");
      throw Exception(e);
    }
  }
}
