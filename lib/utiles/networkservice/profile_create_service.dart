import 'dart:developer';
import 'package:datingapp/Constant/app_api.dart';
import 'package:datingapp/screens/auth/login_with_phone/model/create_profile_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ProfileCreateService {
  static Future<ProfileCreateModel> profileCreateService({
    required var token,
    required var aboutMe,
    required var jobTitle,
    required var company,
    required var school,
    required var livingIn,
    required var petsLoverId,
    required var profileSettingId,
  }) async {
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
      var response = await dio.post(
        AppApi.userProfile,
        options: Options(
          headers: {
            "Authorization": "",
          },
        ),
        data: {
          "about_me": "$aboutMe",
          "job_title": "$jobTitle",
          "company": "$company",
          "school": "$school",
          "living_in": "$livingIn",
          "pets_lover_id": "$petsLoverId",
          "profile_setting_id": "$profileSettingId",
        },
      );
      return ProfileCreateModel.fromJson(response.data);
    } catch (e) {
      log("PROFILE CREATE SERVICE ERROR :: $e");
      throw Exception(e);
    }
  }
}
