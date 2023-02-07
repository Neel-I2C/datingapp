import 'package:datingapp/screens/auth/login_with_phone/model/create_profile_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:datingapp/Constant/app_api.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

class ProfileCreateService {
  static Future<ProfileCreateModel> profileCreateService({
    required var token,
    required var firstName,
    required var lastName,
    required var dob,
    required var school,
    required var interest,
    required var sexualOrientation,
    required var iAm,
    required var latitude,
    required var longitude,
    required var showMe,
    required var images,
  }) async {
    try {
      log("API 1");
      Dio dio = Dio();
      log("API 2");
      log(token);
      log("API 3");
      dio.interceptors.add(
        PrettyDioLogger(
          compact: false,
          responseHeader: true,
          responseBody: true,
          requestHeader: true,
          requestBody: true,
        ),
      );
      log("API 4");
      var response = await dio.post(
        AppApi.userProfile,
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
        data: {
          "first_name": "$firstName",
          "last_name": "$lastName",
          "dob": "$dob",
          "school": "$school",
          "interests": interest,
          "sexual_orient": sexualOrientation,
          "i_am": "$iAm",
          "latitude": latitude,
          "longitude": longitude,
          "show_me": "$showMe",
          "image": images
        },
      );
      log("API 5");
      return ProfileCreateModel.fromJson(response.data);
    } catch (e) {
      log("PROFILE CREATE SERVICE ERROR :: $e");
      throw Exception(e);
    }
  }
}
