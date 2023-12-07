import 'dart:convert';

import 'package:flutter_base_project/src/configs/api.dart';
import 'package:flutter_base_project/src/core/network/app_exception.dart';
import 'package:flutter_base_project/src/core/network/response/login/login.dart';
import 'package:flutter_base_project/src/core/network/rest_client.dart';
import 'package:flutter_base_project/src/core/network/user/user_repository.dart';

/// Author: sondv
/// Created 07/12/2023 at 13:46

class UserRepositoryImpl extends UserRepository {
  @override
  Future<LoginResponse> login({required String username, required String password}) async {
    try {
      var body = {
        "username": username,
        "password": password,
      };
      var response = await restClient.post(
        Uri.parse("${ApiConfig.apiUrl}/login"),
        body: body,
      );
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        var result = LoginResponse.fromJson(json);
        return result;
      } else {
        throw AppException.fromStatusCode(response.statusCode);
      }
    } catch (ex) {
      if (ex is AppException) rethrow;
      throw AppException(message: ex.toString());
    }
  }
}
