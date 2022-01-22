part of "authorization_bloc.dart";


class AuthorizationProvider {
  static Future<GoogleSignInAccount?> signInViaGoogle(bool isSliently) async =>
      isSliently
          ? await GoogleSignIn.standard().signInSilently()
          : await GoogleSignIn().signIn();

  static Future<UserCredential?> signInViaFireBase(
          String email, String password) async =>
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

  static Future<UserCredential?> signUpViaFireBase(
          String email, String password) async =>
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
}
