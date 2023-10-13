import 'dart:math';

import 'package:bloc_app_2/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_constants.dart';

import 'api_exception.dart';

class Apiclient {
  late Dio dio;
  late BaseOptions baseOptions;

  Apiclient() {
    baseOptions = BaseOptions(
      baseUrl: Apiconstant.mainurl,
    );

    dio = Dio(baseOptions);
  }

  Future<Response> getRequest({required String path}) async {
    // dio.interceptors.add(PrettyDioLogger());

    try {
      // 404
      debugPrint("hello world : ${baseOptions.baseUrl}");
      debugPrint("######### Api Request ########");
      var response = await dio.get(path);
      debugPrint(response.statusCode.toString());

      debugPrint("######### Api Response ########");
      log(response.data);
      // debugPrint("Data : ${response.data}");
      return response;
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusCode);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }

  Future<Response> postRequest({required String path, dynamic body}) async {
    // Map body = {"title": "New hero", "slug ": "Newhero"};
    var token = Utils.getToken();
    final options = Options(headers: {"Authorization": "Bearer $token"});

    try {
      debugPrint("Request Url: ${baseOptions.baseUrl}");
      debugPrint("Body: $body");
      // 404
      var response = await dio.post(path, data: body, options: options);
      debugPrint(response.statusCode.toString());
      log(response.data);
      return response;
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusCode);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }
}
