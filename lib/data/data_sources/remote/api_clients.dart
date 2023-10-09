import 'package:bloc_app_2/data/data_sources/remote/api_constants.dart';
import 'package:bloc_app_2/data/data_sources/remote/api_end_points_url.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Apiclient {
  getTags() async {
    final dio = Dio();
    try {
      // 404
      var response =
          await dio.get(Apiconstant.mainurl + ApiEndpointsurls.posts);
      print(response.statusCode.toString());
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print(e.response!.data);
        print(e.response!.headers.toString());
        print(e.response!.requestOptions.toString());
      } else {
        print(e.requestOptions.toString());
        print(e.message);
      }
    }
  }
}
