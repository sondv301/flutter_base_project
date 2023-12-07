/// Author: sondv
/// Created 07/12/2023 at 14:02

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class AppUser with _$AppUser {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AppUser({
    @Default(-1) int id,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);
}
