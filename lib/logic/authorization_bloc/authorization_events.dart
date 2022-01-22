part of "authorization_bloc.dart";

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.signUpViaGoogle({required bool isSliently}) =
      AuthSignUpViaGoogle;
  const factory AuthorizationEvent.signUpViaFirebase({required String password, required String login}) =
      AuthSignUpViaFirebase;
  const factory AuthorizationEvent.signInViaFirebase({required bool isSliently, required String password, required String login}) =
      AuthSignInViaFirebase;
}

// class Auth_SignIn extends AuthorizationEvent {
//   final bool isSliently;
//   Auth_SignIn(this.isSliently);
// }

// class Auth_SignUpViaGoogle implements Auth_SignIn {
//   @override
//   bool isSliently;
//   Auth_SignUpViaGoogle(this.isSliently);
// }

// class Auth_SignUpViaFirebase implements AuthorizationEvent {
//   final String password;
//   final String login;
//   Auth_SignUpViaFirebase({required this.login, required this.password});
// }

// class Auth_SignInViaFirebase implements Auth_SignIn {
//   @override
//   bool isSliently;

//   final String password;
//   final String login;
//   Auth_SignInViaFirebase(this.isSliently,
//       {required this.login, required this.password});
// }
