import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLib {
  static Future<void> loginUser(bool isGoogleAuth,
      {String? login, String? passwrod}) async {
    var instance = await SharedPreferences.getInstance();
    await instance.setString("AUTH", isGoogleAuth ? "GOOGLE" : "FIREBASE");
    if (!isGoogleAuth && login != null && passwrod != null) {
      instance.setString("UserLogin", login);
      instance.setString("UserPassword", passwrod);
    } else {
      instance.remove("UserLogin");
      instance.remove("UserPassword");
    }
  }

  static Future<Map<String, String>?> GetUserCredential() async {
    var spData = (await SharedPreferences.getInstance()).getString("User");

    return spData == null ? null : jsonEncode(spData) as Map<String, String>;
  }
}
