import 'dart:convert';

import 'package:bloc_app_2/data/models/message_model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/auth/login/login_model.dart';
import '../data_sources/remote/api_clients.dart';
import '../data_sources/remote/api_end_points_url.dart';

class AuthRepo extends Apiclient {
  AuthRepo();

  Future<LoginModel> userLogin(String email, String password, context) async {
    Map body = {
      "email": email,
      "password": password,
    };

    try {
      final response =
          await postRequest(path: ApiEndpointsurls.login, body: body);
      if (response.statusCode == 200) {
        // final responseData = tagsModelFromJson(jsonEncode(response.data));

        // Vx.log(responseData);

        final responseData = LoginModel.fromJson(response.data);
        return responseData;
      } else {
        LoginModel();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      LoginModel();
    }
    return LoginModel();
  }

  Future<LoginModel> userLogout(context) async {
    try {
      final response = await postRequest(
        path: ApiEndpointsurls.logout,
      );
      if (response.statusCode == 200) {
        // final responseData = tagsModelFromJson(jsonEncode(response.data));

        // Vx.log(responseData);

        final responseData = LoginModel.fromJson(response.data);
        return responseData;
      } else {
        LoginModel();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      LoginModel();
    }
    return LoginModel();
  }

  Future<MessageModel> userlogout(context) async {
    try {
      final response = await postRequest(
        path: ApiEndpointsurls.logout,
      );
      if (response.statusCode == 200) {
        // final responseData = tagsModelFromJson(jsonEncode(response.data));

        // Vx.log(responseData);

        final responseData = messageModelFromJson(jsonEncode(response.data));
        return responseData;
      } else {
        MessageModel();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      MessageModel();
    }
    return MessageModel();
  }
}
