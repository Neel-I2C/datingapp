import 'dart:developer';
import 'package:datingapp/Constant/app_api.dart';
import 'package:datingapp/screens/auth/email_login/email_login_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class EmailLoginService {
  static Future<UserLoginModel> emailLoginService({
    required var email,
    required var password,
  }) async {
    try {
      log("api 1");
      Dio dio = Dio();
      log("api 2");
      dio.interceptors.add(
        PrettyDioLogger(
          compact: false,
          responseHeader: true,
          responseBody: true,
          requestHeader: true,
          requestBody: true,
        ),
      );
      log("api 3");
      var response = await dio.post(
        AppApi.userLogin,
        data: {
          "email": "$email",
          "password": "$password",
        },
      );
      log("api 4");
      return UserLoginModel.fromJson(response.data);
    } catch (e) {
      // if (e is DioError) {
      //   final jsonArray = json.decode(e.response.toString());
      //   if (jsonArray["detail"] ==
      //       "No active account found with the given credentials") {
      //     appToast(msg: "${jsonArray["detail"]}");
      //     // Fluttertoast.showToast(
      //     //   msg: jsonArray["message"][0],
      //     //   toastLength: Toast.LENGTH_SHORT,
      //     //   gravity: ToastGravity.BOTTOM,
      //     //   timeInSecForIosWeb: 1,
      //     //   backgroundColor: AppColor.black000,
      //     //   textColor: AppColor.whiteFFF,
      //     //   fontSize: 16.0,
      //     // );
      //   }
      // }
      log("ERROR :: $e");
      throw Exception(e);
    }
  }
}
