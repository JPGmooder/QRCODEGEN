import 'package:firebase_auth/firebase_auth.dart';
import 'package:trionproj/consts/errors/Firebase_errors.dart';

abstract class AuthorizationState {}

class AuthorizationLoadingState extends AuthorizationState {}

class AuthorizationInitial extends AuthorizationState {}

class AuthorizationErrored extends AuthorizationState {
  AuthentificationError error;
  AuthorizationErrored(this.error);
}

class AuthorizationLogedIn extends AuthorizationState {
  bool isSliently;
  AuthorizationLogedIn(this.isSliently);
}
