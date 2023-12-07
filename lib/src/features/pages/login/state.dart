/// Author: sondv
/// Created 07/12/2023 at 14:54

import 'package:flutter/foundation.dart';
import 'package:flutter_base_project/src/configs/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(PageEventCommon.normal) PageEventCommon event,
    @Default('') String errorMessage,
  }) = _LoginState;
}
