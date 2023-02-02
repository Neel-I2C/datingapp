import 'dart:convert';
import 'dart:developer';
import 'package:datingapp/Constant/app_api.dart';
import 'package:datingapp/screens/auth/model/sign_in_model.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../Constant/app_color.dart';

class LoginByEmailService {
  static Future<RegisterUser> loginByEmail({
    required var username,
    required var email,
    required var password,
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
      var response = await dio.post(
        AppApi.userRegister,
        data: {
          "username": "$username",
          "email": "$email",
          "password": "$password",
          "password2": "$password",
        },
      );
      return RegisterUser.fromJson(response.data);
    } catch (e) {
      if (e is DioError) {
        final jsonArray = json.decode(e.response.toString());
        if (jsonArray["status"][0] == "400") {
          appToast(msg: "${jsonArray["message"][0]}");
          // Fluttertoast.showToast(
          //   msg: jsonArray["message"][0],
          //   toastLength: Toast.LENGTH_SHORT,
          //   gravity: ToastGravity.BOTTOM,
          //   timeInSecForIosWeb: 1,
          //   backgroundColor: AppColor.black000,
          //   textColor: AppColor.whiteFFF,
          //   fontSize: 16.0,
          // );
        }
      }
      log("ERROR :: $e");
      throw Exception(e);
    }
  }
}
