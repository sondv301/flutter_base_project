import 'package:flutter_base_project/src/core/network/response/login/login.dart';

/// Author: sondv
/// Created 07/12/2023 at 13:46

abstract class UserRepository {
  Future<LoginResponse> login({
    required String username,
    required String password,
  });
}
