import 'package:datingapp/screens/bottomScreen/home/Model/all_profile_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:datingapp/Constant/app_api.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'dart:convert';

class HomeScreenService {
  static Future<AllProfileModel?> fetchAllProfile({required var token}) async {
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
        AppApi.userProfile,
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ),
      );
      return AllProfileModel.fromJson(response.data);
    } catch (e) {
      if (e is DioError) {
        final jsonArray = json.decode(e.response.toString());
        log("ERROR JSON ARRAY :: $jsonArray");
      }
      log("FETCH ALL PROFILE SERVICE ERROR :: $e");
      throw Exception(e);
    }
  }
}
