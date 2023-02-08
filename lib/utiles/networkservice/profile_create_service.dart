import 'package:datingapp/screens/auth/login_with_phone/model/create_profile_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:datingapp/Constant/app_api.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'dart:convert';

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
          "image": [
            "/home/i2c/Pictures/Screenshots/Screenshot_from_2022-12-16_09-11-20.png",
            "/home/i2c/Pictures/Screenshots/Screenshot_from_2022-12-27_14-25-37.png"
          ]
        },
      );
      return ProfileCreateModel.fromJson(response.data);
    } catch (e) {
      if (e is DioError) {
        final jsonArray = json.decode(e.response.toString());
        appToast(msg: jsonArray["message"][0]);
      }
      log("PROFILE CREATE SERVICE ERROR :: $e");
      throw Exception(e);
    }
  }
}
