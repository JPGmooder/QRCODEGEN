import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trionproj/consts/errors/Firebase_errors.dart';
import 'package:trionproj/logic/authorization_bloc/authorization_provider.dart';
import 'package:trionproj/logic/shared_preferences.dart';

class AuthorizationRepository {
  static Future<void> signInViaGoogle(bool isSliently) async {
    var authAccount = await AuthorizationProvider.signInViaGoogle(isSliently);
    if (authAccount == null) {
      throw AuthentificationError(
          "Не удается войти в аккаунт, повторите попытку позже");
    } else {
      print(FirebaseAuth.instance.currentUser.toString());
    }
  }

  static Future<void> signInViaFirebase(String email, String password) async {
    var authAccount =
        await AuthorizationProvider.signInViaFireBase(email, password);
    if (authAccount == null) {
      throw AuthentificationError(
          "Не удается войти в аккаунт, повторите попытку позже");
    } else {
      print(FirebaseAuth.instance.currentUser.toString());
    }
  }

  static Future<void> signUpViaFirebase(String email, String password) async {
    var authAccount =
        await AuthorizationProvider.signUpViaFireBase(email, password);

    if (authAccount == null) {
      throw AuthentificationError(
          "Не удается войти в аккаунт, повторите попытку позже");
    } else {
     await authAccount.user!.sendEmailVerification();
      print(FirebaseAuth.instance.currentUser.toString());
    }
  }
}
