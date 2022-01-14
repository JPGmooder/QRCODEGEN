import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trionproj/consts/errors/Firebase_errors.dart';
import 'package:trionproj/logic/authorization_bloc/authorization_events.dart';
import 'package:trionproj/logic/authorization_bloc/authorization_repository.dart';
import 'package:trionproj/logic/authorization_bloc/authorization_states.dart';
import 'package:trionproj/logic/shared_preferences.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc() : super(AuthorizationInitial()) {
    on<Auth_SignIn>((event, emit) async {
      emit(AuthorizationLoadingState());
      try {
        if (event is Auth_SignUpViaGoogle) {
          await AuthorizationRepository.signInViaGoogle(event.isSliently);
          await SharedPreferencesLib.loginUser(true);
        } else if (event is Auth_SignInViaFirebase) {
          await AuthorizationRepository.signInViaFirebase(
              event.login, event.password);
          await SharedPreferencesLib.loginUser(false,
              login: event.login, passwrod: event.password);
        }

        emit(AuthorizationLogedIn(event.isSliently));
      } catch (e) {
        emit.call(AuthorizationErrored(AuthentificationError(
            (e as FirebaseAuthException).message.toString())));
      }
    });

    on<Auth_SignUpViaFirebase>((event, emit) async {
      emit(AuthorizationLoadingState());

      await AuthorizationRepository.signUpViaFirebase(
          event.login, event.password);

      await SharedPreferencesLib.loginUser(false,
          login: event.login, passwrod: event.password);

      emit(AuthorizationLogedIn(false));
    });
  }

  void signInViaGoogle(bool isSilent) {
    add(Auth_SignUpViaGoogle(isSilent));
  }

  void signInViaFirebase(String login, String password) {
    add(Auth_SignInViaFirebase(false, login: login, password: password));
  }

  void signUpViaFirebase(String login, String password) {
    add(Auth_SignUpViaFirebase(login: login, password: password));
  }
}
