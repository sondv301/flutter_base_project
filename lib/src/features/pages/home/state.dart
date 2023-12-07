/// Author: sondv
/// Created 07/12/2023 at 14:10

import 'package:flutter/foundation.dart';
import 'package:flutter_base_project/src/configs/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(PageEventCommon.normal) PageEventCommon loadDataEvent,
    @Default('') String data,
  }) = _HomeState;
}
