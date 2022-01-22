part of "authorization_bloc.dart";

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState.loading() = _AuthorizationLoadingState;
  const factory AuthorizationState.initial() = AuthorizationInitial;
  const factory AuthorizationState.logedIn({required bool isSilently}) = _AuthorizationLogedIn;
  const factory AuthorizationState.errored({required Error error}) = _AuthorizationErrored;
}

// class AuthorizationLoadingState extends AuthorizationState {}

// class AuthorizationInitial extends AuthorizationState {}

// class AuthorizationErrored extends AuthorizationState {
//   AuthentificationError error;
//   AuthorizationErrored(this.error);
// }

// class AuthorizationLogedIn extends AuthorizationState {
//   bool isSliently;
//   AuthorizationLogedIn(this.isSliently);
// }
