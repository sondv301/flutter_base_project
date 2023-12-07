import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'local.dart';

/// Author: sondv
/// Created 07/12/2023 at 13:40

final checkLoginProvider = Provider<bool>((ref) {
  var token = LocalStorage.getToken();
  return token.isNotEmpty;
});
