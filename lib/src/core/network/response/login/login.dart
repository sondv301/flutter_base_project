/// Author: sondv
/// Created 07/12/2023 at 13:47

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory LoginResponse({
    @Default(200) int status,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}
