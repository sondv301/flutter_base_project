import 'package:shared_preferences/shared_preferences.dart';

/// Author: sondv
/// Created 07/12/2023 at 13:38
class LocalStorage {
  static late SharedPreferences _prefs;

  static Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // keys
  static const String _keyToken = "token";

  // func
  static String getToken() {
    return _prefs.getString(_keyToken) ?? "";
  }

  static Future<void> setToken(String token) async {
    await _prefs.setString(_keyToken, token);
  }
}
