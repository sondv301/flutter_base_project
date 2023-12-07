import 'package:flutter_base_project/src/configs/enums.dart';
import 'package:flutter_base_project/src/core/network/app_exception.dart';
import 'package:flutter_base_project/src/core/storages/local.dart';
import 'package:flutter_base_project/src/features/pages/login/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Author: sondv
/// Created 07/12/2023 at 14:57
final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier();
});

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier() : super(const LoginState());

  Future<void> onLogin() async {
    try {
      state = state.copyWith(event: PageEventCommon.processing);
      await Future.delayed(const Duration(seconds: 1));
      //throw AppException.fromMessage("Error ${DateTime.now()}");
      await LocalStorage.setToken("token");
      state = state.copyWith(event: PageEventCommon.success);
    } catch (ex) {
      state = state.copyWith(
        event: PageEventCommon.error,
        errorMessage: ex.toString(),
      );
    }
  }
}
