import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

/// Author: sondv
/// Created 07/12/2023 at 13:59

/// Dùng để xem log khi dev thui =)) Cái này chỉ thêm ngăn cách màu mè 1 tí thui chứ nó giống cái [showLog] nhé
void showLogs(dynamic object, {String flags = "App Logs"}) {
  if (kDebugMode) {
    print("===[${DateFormat("HH:mm:ss").format(DateTime.now())}]$flags===");
    print(object);
    print("===END===");
  }
}

/// Dùng để xem log khi dev thui =))
void showLog(dynamic object, {String flags = "App Logs"}) {
  if (kDebugMode) {
    print("===[${DateFormat("HH:mm:ss").format(DateTime.now())}]$flags: $object");
  }
}
