import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:trionproj/consts/strings.dart';

class SharedPreferencesLib {
  static Future<void> loginUser(bool isGoogleAuth,
      {String? login, String? passwrod}) async {
    var instance = await SharedPreferences.getInstance();
    await instance.setString(
        spKeyTypeOfAuth, isGoogleAuth ? spAuthTypeGoogle : spAuthTypeFirebase);
    if (!isGoogleAuth && login != null && passwrod != null) {
      instance.setString(spKeyOfUsersLogin, login);
      instance.setString(spKeyOfUsersPassword, passwrod);
    } else {
      instance.remove(spKeyOfUsersLogin);
      instance.remove(spKeyOfUsersPassword);
    }
  }

  static Future<bool> checkTermsOfUse() async {
    var instance = await SharedPreferences.getInstance();
    var isAgree = instance.getBool(spkeyTermsOfUse) ?? false;
    return isAgree;
  }

  static Future<void> regTermsOfUse(bool isAgree) async {
    var instance = await SharedPreferences.getInstance();
    await instance.setBool(spkeyTermsOfUse, isAgree);
    if (!isAgree) exit(0);
  }
}
