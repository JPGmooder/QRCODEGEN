import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trionproj/consts/errors/Firebase_errors.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:trionproj/logic/shared_preferences.dart';

part "authorization_events.dart";
part 'authorization_provider.dart';
part 'authorization_repository.dart';
part 'authorization_states.dart';

part 'authorization_bloc.freezed.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc() : super(AuthorizationInitial()) {
    on<AuthSignInViaFirebase>((event, emit) async {
      emit(AuthorizationState.loading());
      try {
        await AuthorizationRepository.signInViaFirebase(
            event.login, event.password);
        await SharedPreferencesLib.loginUser(false,
            login: event.login, passwrod: event.password);

        emit(AuthorizationState.logedIn(isSilently: event.isSliently));
      } catch (e) {
        emit.call(AuthorizationState.errored(
            error: AuthentificationError(
                (e as FirebaseAuthException).message.toString())));
      }
    });

    on<AuthSignUpViaGoogle>((event, emit) async {
      emit(AuthorizationState.loading());
      try {
        await AuthorizationRepository.signInViaGoogle(event.isSliently);
        await SharedPreferencesLib.loginUser(true);

        emit(AuthorizationState.logedIn(isSilently: event.isSliently));
      } catch (e) {
        emit.call(AuthorizationState.errored(
            error: AuthentificationError(
                (e as FirebaseAuthException).message.toString())));
      }
    });

    on<AuthSignUpViaFirebase>((event, emit) async {
      try {
        emit(AuthorizationState.loading());

        await AuthorizationRepository.signUpViaFirebase(
            event.login, event.password);

        await SharedPreferencesLib.loginUser(false,
            login: event.login, passwrod: event.password);

        emit(AuthorizationState.logedIn(isSilently: false));
      } catch (e) {
        emit(AuthorizationState.errored(
            error:
                AuthentificationError((e as FirebaseAuthException).message!)));
      }
    });
  }

  void signInViaGoogle(bool isSilent) {
    add(AuthorizationEvent.signUpViaGoogle(isSliently: isSilent));
  }

  void signInViaFirebase(String login, String password) {
    add(AuthorizationEvent.signInViaFirebase(
        isSliently: false, login: login, password: password));
  }

  void signUpViaFirebase(String login, String password) {
    add(AuthorizationEvent.signUpViaFirebase(login: login, password: password));
  }
}
