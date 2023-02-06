import 'package:datingapp/screens/auth/login_with_phone/model/create_profile_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:datingapp/Constant/app_api.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

class ProfileCreateService {
  static Future<ProfileCreateModel> profileCreateService({
    required var token,
    required var pets,
    required var zodiac,
    required var aboutMe,
    required var jobTitle,
    required var company,
    required var school,
    required var livingIn,
    required var iAm,
    required var showMe,
    required var latitude,
    required var longitude,
  }) async {
    try {
      Dio dio = Dio();
      log(token);
      dio.interceptors.add(
        PrettyDioLogger(
          compact: false,
          responseHeader: true,
          responseBody: true,
          requestHeader: true,
          requestBody: true,
        ),
      );
      var response = await dio.post(AppApi.userProfile,
          options: Options(
            headers: {
              // "Authorization":
              //     "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzYxNzMyMzk3LCJqdGkiOiIxMzc4ZDY0Y2ExZDc0MGI3ODhlNTU1MmNlZTRhODlkZSIsInVzZXJfaWQiOjQzfQ.4QuPstPHcwPwpRn03EqJRg6--oLml8xwHt4YPMp6FHw",
              "Authorization": "Bearer $token",
            },
          ),
          data: {
            "pets": "Cats",
            "zodiac": "Leo",
            "about_me": "asdaf",
            "job_title": "sdfas",
            "company": "df",
            "school": "zsaadsf",
            "living_in": "fhdsgss",
            "i_am": "Male",
            "latitude": 12.1648,
            "longitude": 11.3264,
            "show_me": "Women",
            "image": [
              "/home/i2c/Pictures/Screenshots/Screenshot_from_2022-12-16_09-11-20.png",
              "/home/i2c/Pictures/Screenshots/Screenshot_from_2022-12-27_14-25-37.png"
            ]
          });
      return ProfileCreateModel.fromJson(response.data);
    } catch (e) {
      log("PROFILE CREATE SERVICE ERROR :: $e");
      throw Exception(e);
    }
  }
}
