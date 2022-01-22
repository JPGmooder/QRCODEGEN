// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthorizationEventTearOff {
  const _$AuthorizationEventTearOff();

  AuthSignUpViaGoogle signUpViaGoogle({required bool isSliently}) {
    return AuthSignUpViaGoogle(
      isSliently: isSliently,
    );
  }

  AuthSignUpViaFirebase signUpViaFirebase(
      {required String password, required String login}) {
    return AuthSignUpViaFirebase(
      password: password,
      login: login,
    );
  }

  AuthSignInViaFirebase signInViaFirebase(
      {required bool isSliently,
      required String password,
      required String login}) {
    return AuthSignInViaFirebase(
      isSliently: isSliently,
      password: password,
      login: login,
    );
  }
}

/// @nodoc
const $AuthorizationEvent = _$AuthorizationEventTearOff();

/// @nodoc
mixin _$AuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSliently) signUpViaGoogle,
    required TResult Function(String password, String login) signUpViaFirebase,
    required TResult Function(bool isSliently, String password, String login)
        signInViaFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSliently)? signUpViaGoogle,
    TResult Function(String password, String login)? signUpViaFirebase,
    TResult Function(bool isSliently, String password, String login)?
        signInViaFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSliently)? signUpViaGoogle,
    TResult Function(String password, String login)? signUpViaFirebase,
    TResult Function(bool isSliently, String password, String login)?
        signInViaFirebase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignUpViaGoogle value) signUpViaGoogle,
    required TResult Function(AuthSignUpViaFirebase value) signUpViaFirebase,
    required TResult Function(AuthSignInViaFirebase value) signInViaFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthSignUpViaGoogle value)? signUpViaGoogle,
    TResult Function(AuthSignUpViaFirebase value)? signUpViaFirebase,
    TResult Function(AuthSignInViaFirebase value)? signInViaFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignUpViaGoogle value)? signUpViaGoogle,
    TResult Function(AuthSignUpViaFirebase value)? signUpViaFirebase,
    TResult Function(AuthSignInViaFirebase value)? signInViaFirebase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  final AuthorizationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthorizationEvent) _then;
}

/// @nodoc
abstract class $AuthSignUpViaGoogleCopyWith<$Res> {
  factory $AuthSignUpViaGoogleCopyWith(
          AuthSignUpViaGoogle value, $Res Function(AuthSignUpViaGoogle) then) =
      _$AuthSignUpViaGoogleCopyWithImpl<$Res>;
  $Res call({bool isSliently});
}

/// @nodoc
class _$AuthSignUpViaGoogleCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthSignUpViaGoogleCopyWith<$Res> {
  _$AuthSignUpViaGoogleCopyWithImpl(
      AuthSignUpViaGoogle _value, $Res Function(AuthSignUpViaGoogle) _then)
      : super(_value, (v) => _then(v as AuthSignUpViaGoogle));

  @override
  AuthSignUpViaGoogle get _value => super._value as AuthSignUpViaGoogle;

  @override
  $Res call({
    Object? isSliently = freezed,
  }) {
    return _then(AuthSignUpViaGoogle(
      isSliently: isSliently == freezed
          ? _value.isSliently
          : isSliently // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthSignUpViaGoogle implements AuthSignUpViaGoogle {
  const _$AuthSignUpViaGoogle({required this.isSliently});

  @override
  final bool isSliently;

  @override
  String toString() {
    return 'AuthorizationEvent.signUpViaGoogle(isSliently: $isSliently)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthSignUpViaGoogle &&
            const DeepCollectionEquality()
                .equals(other.isSliently, isSliently));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isSliently));

  @JsonKey(ignore: true)
  @override
  $AuthSignUpViaGoogleCopyWith<AuthSignUpViaGoogle> get copyWith =>
      _$AuthSignUpViaGoogleCopyWithImpl<AuthSignUpViaGoogle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSliently) signUpViaGoogle,
    required TResult Function(String password, String login) signUpViaFirebase,
    required TResult Function(bool isSliently, String password, String login)
        signInViaFirebase,
  }) {
    return signUpViaGoogle(isSliently);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSliently)? signUpViaGoogle,
    TResult Function(String password, String login)? signUpViaFirebase,
    TResult Function(bool isSliently, String password, String login)?
        signInViaFirebase,
  }) {
    return signUpViaGoogle?.call(isSliently);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSliently)? signUpViaGoogle,
    TResult Function(String password, String login)? signUpViaFirebase,
    TResult Function(bool isSliently, String password, String login)?
        signInViaFirebase,
    required TResult orElse(),
  }) {
    if (signUpViaGoogle != null) {
      return signUpViaGoogle(isSliently);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignUpViaGoogle value) signUpViaGoogle,
    required TResult Function(AuthSignUpViaFirebase value) signUpViaFirebase,
    required TResult Function(AuthSignInViaFirebase value) signInViaFirebase,
  }) {
    return signUpViaGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthSignUpViaGoogle value)? signUpViaGoogle,
    TResult Function(AuthSignUpViaFirebase value)? signUpViaFirebase,
    TResult Function(AuthSignInViaFirebase value)? signInViaFirebase,
  }) {
    return signUpViaGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignUpViaGoogle value)? signUpViaGoogle,
    TResult Function(AuthSignUpViaFirebase value)? signUpViaFirebase,
    TResult Function(AuthSignInViaFirebase value)? signInViaFirebase,
    required TResult orElse(),
  }) {
    if (signUpViaGoogle != null) {
      return signUpViaGoogle(this);
    }
    return orElse();
  }
}

abstract class AuthSignUpViaGoogle implements AuthorizationEvent {
  const factory AuthSignUpViaGoogle({required bool isSliently}) =
      _$AuthSignUpViaGoogle;

  bool get isSliently;
  @JsonKey(ignore: true)
  $AuthSignUpViaGoogleCopyWith<AuthSignUpViaGoogle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignUpViaFirebaseCopyWith<$Res> {
  factory $AuthSignUpViaFirebaseCopyWith(AuthSignUpViaFirebase value,
          $Res Function(AuthSignUpViaFirebase) then) =
      _$AuthSignUpViaFirebaseCopyWithImpl<$Res>;
  $Res call({String password, String login});
}

/// @nodoc
class _$AuthSignUpViaFirebaseCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthSignUpViaFirebaseCopyWith<$Res> {
  _$AuthSignUpViaFirebaseCopyWithImpl(
      AuthSignUpViaFirebase _value, $Res Function(AuthSignUpViaFirebase) _then)
      : super(_value, (v) => _then(v as AuthSignUpViaFirebase));

  @override
  AuthSignUpViaFirebase get _value => super._value as AuthSignUpViaFirebase;

  @override
  $Res call({
    Object? password = freezed,
    Object? login = freezed,
  }) {
    return _then(AuthSignUpViaFirebase(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignUpViaFirebase implements AuthSignUpViaFirebase {
  const _$AuthSignUpViaFirebase({required this.password, required this.login});

  @override
  final String password;
  @override
  final String login;

  @override
  String toString() {
    return 'AuthorizationEvent.signUpViaFirebase(password: $password, login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthSignUpViaFirebase &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.login, login));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(login));

  @JsonKey(ignore: true)
  @override
  $AuthSignUpViaFirebaseCopyWith<AuthSignUpViaFirebase> get copyWith =>
      _$AuthSignUpViaFirebaseCopyWithImpl<AuthSignUpViaFirebase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSliently) signUpViaGoogle,
    required TResult Function(String password, String login) signUpViaFirebase,
    required TResult Function(bool isSliently, String password, String login)
        signInViaFirebase,
  }) {
    return signUpViaFirebase(password, login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSliently)? signUpViaGoogle,
    TResult Function(String password, String login)? signUpViaFirebase,
    TResult Function(bool isSliently, String password, String login)?
        signInViaFirebase,
  }) {
    return signUpViaFirebase?.call(password, login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSliently)? signUpViaGoogle,
    TResult Function(String password, String login)? signUpViaFirebase,
    TResult Function(bool isSliently, String password, String login)?
        signInViaFirebase,
    required TResult orElse(),
  }) {
    if (signUpViaFirebase != null) {
      return signUpViaFirebase(password, login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignUpViaGoogle value) signUpViaGoogle,
    required TResult Function(AuthSignUpViaFirebase value) signUpViaFirebase,
    required TResult Function(AuthSignInViaFirebase value) signInViaFirebase,
  }) {
    return signUpViaFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthSignUpViaGoogle value)? signUpViaGoogle,
    TResult Function(AuthSignUpViaFirebase value)? signUpViaFirebase,
    TResult Function(AuthSignInViaFirebase value)? signInViaFirebase,
  }) {
    return signUpViaFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignUpViaGoogle value)? signUpViaGoogle,
    TResult Function(AuthSignUpViaFirebase value)? signUpViaFirebase,
    TResult Function(AuthSignInViaFirebase value)? signInViaFirebase,
    required TResult orElse(),
  }) {
    if (signUpViaFirebase != null) {
      return signUpViaFirebase(this);
    }
    return orElse();
  }
}

abstract class AuthSignUpViaFirebase implements AuthorizationEvent {
  const factory AuthSignUpViaFirebase(
      {required String password,
      required String login}) = _$AuthSignUpViaFirebase;

  String get password;
  String get login;
  @JsonKey(ignore: true)
  $AuthSignUpViaFirebaseCopyWith<AuthSignUpViaFirebase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignInViaFirebaseCopyWith<$Res> {
  factory $AuthSignInViaFirebaseCopyWith(AuthSignInViaFirebase value,
          $Res Function(AuthSignInViaFirebase) then) =
      _$AuthSignInViaFirebaseCopyWithImpl<$Res>;
  $Res call({bool isSliently, String password, String login});
}

/// @nodoc
class _$AuthSignInViaFirebaseCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthSignInViaFirebaseCopyWith<$Res> {
  _$AuthSignInViaFirebaseCopyWithImpl(
      AuthSignInViaFirebase _value, $Res Function(AuthSignInViaFirebase) _then)
      : super(_value, (v) => _then(v as AuthSignInViaFirebase));

  @override
  AuthSignInViaFirebase get _value => super._value as AuthSignInViaFirebase;

  @override
  $Res call({
    Object? isSliently = freezed,
    Object? password = freezed,
    Object? login = freezed,
  }) {
    return _then(AuthSignInViaFirebase(
      isSliently: isSliently == freezed
          ? _value.isSliently
          : isSliently // ignore: cast_nullable_to_non_nullable
              as bool,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignInViaFirebase implements AuthSignInViaFirebase {
  const _$AuthSignInViaFirebase(
      {required this.isSliently, required this.password, required this.login});

  @override
  final bool isSliently;
  @override
  final String password;
  @override
  final String login;

  @override
  String toString() {
    return 'AuthorizationEvent.signInViaFirebase(isSliently: $isSliently, password: $password, login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthSignInViaFirebase &&
            const DeepCollectionEquality()
                .equals(other.isSliently, isSliently) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.login, login));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isSliently),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(login));

  @JsonKey(ignore: true)
  @override
  $AuthSignInViaFirebaseCopyWith<AuthSignInViaFirebase> get copyWith =>
      _$AuthSignInViaFirebaseCopyWithImpl<AuthSignInViaFirebase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSliently) signUpViaGoogle,
    required TResult Function(String password, String login) signUpViaFirebase,
    required TResult Function(bool isSliently, String password, String login)
        signInViaFirebase,
  }) {
    return signInViaFirebase(isSliently, password, login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSliently)? signUpViaGoogle,
    TResult Function(String password, String login)? signUpViaFirebase,
    TResult Function(bool isSliently, String password, String login)?
        signInViaFirebase,
  }) {
    return signInViaFirebase?.call(isSliently, password, login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSliently)? signUpViaGoogle,
    TResult Function(String password, String login)? signUpViaFirebase,
    TResult Function(bool isSliently, String password, String login)?
        signInViaFirebase,
    required TResult orElse(),
  }) {
    if (signInViaFirebase != null) {
      return signInViaFirebase(isSliently, password, login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignUpViaGoogle value) signUpViaGoogle,
    required TResult Function(AuthSignUpViaFirebase value) signUpViaFirebase,
    required TResult Function(AuthSignInViaFirebase value) signInViaFirebase,
  }) {
    return signInViaFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthSignUpViaGoogle value)? signUpViaGoogle,
    TResult Function(AuthSignUpViaFirebase value)? signUpViaFirebase,
    TResult Function(AuthSignInViaFirebase value)? signInViaFirebase,
  }) {
    return signInViaFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignUpViaGoogle value)? signUpViaGoogle,
    TResult Function(AuthSignUpViaFirebase value)? signUpViaFirebase,
    TResult Function(AuthSignInViaFirebase value)? signInViaFirebase,
    required TResult orElse(),
  }) {
    if (signInViaFirebase != null) {
      return signInViaFirebase(this);
    }
    return orElse();
  }
}

abstract class AuthSignInViaFirebase implements AuthorizationEvent {
  const factory AuthSignInViaFirebase(
      {required bool isSliently,
      required String password,
      required String login}) = _$AuthSignInViaFirebase;

  bool get isSliently;
  String get password;
  String get login;
  @JsonKey(ignore: true)
  $AuthSignInViaFirebaseCopyWith<AuthSignInViaFirebase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthorizationStateTearOff {
  const _$AuthorizationStateTearOff();

  _AuthorizationLoadingState loading() {
    return const _AuthorizationLoadingState();
  }

  AuthorizationInitial initial() {
    return const AuthorizationInitial();
  }

  _AuthorizationLogedIn logedIn({required bool isSilently}) {
    return _AuthorizationLogedIn(
      isSilently: isSilently,
    );
  }

  _AuthorizationErrored errored({required Error error}) {
    return _AuthorizationErrored(
      error: error,
    );
  }
}

/// @nodoc
const $AuthorizationState = _$AuthorizationStateTearOff();

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(bool isSilently) logedIn,
    required TResult Function(Error error) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(bool isSilently)? logedIn,
    TResult Function(Error error)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(bool isSilently)? logedIn,
    TResult Function(Error error)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationLoadingState value) loading,
    required TResult Function(AuthorizationInitial value) initial,
    required TResult Function(_AuthorizationLogedIn value) logedIn,
    required TResult Function(_AuthorizationErrored value) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(AuthorizationInitial value)? initial,
    TResult Function(_AuthorizationLogedIn value)? logedIn,
    TResult Function(_AuthorizationErrored value)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(AuthorizationInitial value)? initial,
    TResult Function(_AuthorizationLogedIn value)? logedIn,
    TResult Function(_AuthorizationErrored value)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  final AuthorizationState _value;
  // ignore: unused_field
  final $Res Function(AuthorizationState) _then;
}

/// @nodoc
abstract class _$AuthorizationLoadingStateCopyWith<$Res> {
  factory _$AuthorizationLoadingStateCopyWith(_AuthorizationLoadingState value,
          $Res Function(_AuthorizationLoadingState) then) =
      __$AuthorizationLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthorizationLoadingStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$AuthorizationLoadingStateCopyWith<$Res> {
  __$AuthorizationLoadingStateCopyWithImpl(_AuthorizationLoadingState _value,
      $Res Function(_AuthorizationLoadingState) _then)
      : super(_value, (v) => _then(v as _AuthorizationLoadingState));

  @override
  _AuthorizationLoadingState get _value =>
      super._value as _AuthorizationLoadingState;
}

/// @nodoc

class _$_AuthorizationLoadingState implements _AuthorizationLoadingState {
  const _$_AuthorizationLoadingState();

  @override
  String toString() {
    return 'AuthorizationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthorizationLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(bool isSilently) logedIn,
    required TResult Function(Error error) errored,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(bool isSilently)? logedIn,
    TResult Function(Error error)? errored,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(bool isSilently)? logedIn,
    TResult Function(Error error)? errored,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationLoadingState value) loading,
    required TResult Function(AuthorizationInitial value) initial,
    required TResult Function(_AuthorizationLogedIn value) logedIn,
    required TResult Function(_AuthorizationErrored value) errored,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(AuthorizationInitial value)? initial,
    TResult Function(_AuthorizationLogedIn value)? logedIn,
    TResult Function(_AuthorizationErrored value)? errored,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(AuthorizationInitial value)? initial,
    TResult Function(_AuthorizationLogedIn value)? logedIn,
    TResult Function(_AuthorizationErrored value)? errored,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationLoadingState implements AuthorizationState {
  const factory _AuthorizationLoadingState() = _$_AuthorizationLoadingState;
}

/// @nodoc
abstract class $AuthorizationInitialCopyWith<$Res> {
  factory $AuthorizationInitialCopyWith(AuthorizationInitial value,
          $Res Function(AuthorizationInitial) then) =
      _$AuthorizationInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationInitialCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationInitialCopyWith<$Res> {
  _$AuthorizationInitialCopyWithImpl(
      AuthorizationInitial _value, $Res Function(AuthorizationInitial) _then)
      : super(_value, (v) => _then(v as AuthorizationInitial));

  @override
  AuthorizationInitial get _value => super._value as AuthorizationInitial;
}

/// @nodoc

class _$AuthorizationInitial implements AuthorizationInitial {
  const _$AuthorizationInitial();

  @override
  String toString() {
    return 'AuthorizationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthorizationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(bool isSilently) logedIn,
    required TResult Function(Error error) errored,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(bool isSilently)? logedIn,
    TResult Function(Error error)? errored,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(bool isSilently)? logedIn,
    TResult Function(Error error)? errored,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationLoadingState value) loading,
    required TResult Function(AuthorizationInitial value) initial,
    required TResult Function(_AuthorizationLogedIn value) logedIn,
    required TResult Function(_AuthorizationErrored value) errored,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(AuthorizationInitial value)? initial,
    TResult Function(_AuthorizationLogedIn value)? logedIn,
    TResult Function(_AuthorizationErrored value)? errored,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(AuthorizationInitial value)? initial,
    TResult Function(_AuthorizationLogedIn value)? logedIn,
    TResult Function(_AuthorizationErrored value)? errored,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthorizationInitial implements AuthorizationState {
  const factory AuthorizationInitial() = _$AuthorizationInitial;
}

/// @nodoc
abstract class _$AuthorizationLogedInCopyWith<$Res> {
  factory _$AuthorizationLogedInCopyWith(_AuthorizationLogedIn value,
          $Res Function(_AuthorizationLogedIn) then) =
      __$AuthorizationLogedInCopyWithImpl<$Res>;
  $Res call({bool isSilently});
}

/// @nodoc
class __$AuthorizationLogedInCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$AuthorizationLogedInCopyWith<$Res> {
  __$AuthorizationLogedInCopyWithImpl(
      _AuthorizationLogedIn _value, $Res Function(_AuthorizationLogedIn) _then)
      : super(_value, (v) => _then(v as _AuthorizationLogedIn));

  @override
  _AuthorizationLogedIn get _value => super._value as _AuthorizationLogedIn;

  @override
  $Res call({
    Object? isSilently = freezed,
  }) {
    return _then(_AuthorizationLogedIn(
      isSilently: isSilently == freezed
          ? _value.isSilently
          : isSilently // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthorizationLogedIn implements _AuthorizationLogedIn {
  const _$_AuthorizationLogedIn({required this.isSilently});

  @override
  final bool isSilently;

  @override
  String toString() {
    return 'AuthorizationState.logedIn(isSilently: $isSilently)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthorizationLogedIn &&
            const DeepCollectionEquality()
                .equals(other.isSilently, isSilently));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isSilently));

  @JsonKey(ignore: true)
  @override
  _$AuthorizationLogedInCopyWith<_AuthorizationLogedIn> get copyWith =>
      __$AuthorizationLogedInCopyWithImpl<_AuthorizationLogedIn>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(bool isSilently) logedIn,
    required TResult Function(Error error) errored,
  }) {
    return logedIn(isSilently);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(bool isSilently)? logedIn,
    TResult Function(Error error)? errored,
  }) {
    return logedIn?.call(isSilently);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(bool isSilently)? logedIn,
    TResult Function(Error error)? errored,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(isSilently);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationLoadingState value) loading,
    required TResult Function(AuthorizationInitial value) initial,
    required TResult Function(_AuthorizationLogedIn value) logedIn,
    required TResult Function(_AuthorizationErrored value) errored,
  }) {
    return logedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(AuthorizationInitial value)? initial,
    TResult Function(_AuthorizationLogedIn value)? logedIn,
    TResult Function(_AuthorizationErrored value)? errored,
  }) {
    return logedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(AuthorizationInitial value)? initial,
    TResult Function(_AuthorizationLogedIn value)? logedIn,
    TResult Function(_AuthorizationErrored value)? errored,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationLogedIn implements AuthorizationState {
  const factory _AuthorizationLogedIn({required bool isSilently}) =
      _$_AuthorizationLogedIn;

  bool get isSilently;
  @JsonKey(ignore: true)
  _$AuthorizationLogedInCopyWith<_AuthorizationLogedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthorizationErroredCopyWith<$Res> {
  factory _$AuthorizationErroredCopyWith(_AuthorizationErrored value,
          $Res Function(_AuthorizationErrored) then) =
      __$AuthorizationErroredCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class __$AuthorizationErroredCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$AuthorizationErroredCopyWith<$Res> {
  __$AuthorizationErroredCopyWithImpl(
      _AuthorizationErrored _value, $Res Function(_AuthorizationErrored) _then)
      : super(_value, (v) => _then(v as _AuthorizationErrored));

  @override
  _AuthorizationErrored get _value => super._value as _AuthorizationErrored;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_AuthorizationErrored(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$_AuthorizationErrored implements _AuthorizationErrored {
  const _$_AuthorizationErrored({required this.error});

  @override
  final Error error;

  @override
  String toString() {
    return 'AuthorizationState.errored(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthorizationErrored &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$AuthorizationErroredCopyWith<_AuthorizationErrored> get copyWith =>
      __$AuthorizationErroredCopyWithImpl<_AuthorizationErrored>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(bool isSilently) logedIn,
    required TResult Function(Error error) errored,
  }) {
    return errored(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(bool isSilently)? logedIn,
    TResult Function(Error error)? errored,
  }) {
    return errored?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(bool isSilently)? logedIn,
    TResult Function(Error error)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationLoadingState value) loading,
    required TResult Function(AuthorizationInitial value) initial,
    required TResult Function(_AuthorizationLogedIn value) logedIn,
    required TResult Function(_AuthorizationErrored value) errored,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(AuthorizationInitial value)? initial,
    TResult Function(_AuthorizationLogedIn value)? logedIn,
    TResult Function(_AuthorizationErrored value)? errored,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationLoadingState value)? loading,
    TResult Function(AuthorizationInitial value)? initial,
    TResult Function(_AuthorizationLogedIn value)? logedIn,
    TResult Function(_AuthorizationErrored value)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationErrored implements AuthorizationState {
  const factory _AuthorizationErrored({required Error error}) =
      _$_AuthorizationErrored;

  Error get error;
  @JsonKey(ignore: true)
  _$AuthorizationErroredCopyWith<_AuthorizationErrored> get copyWith =>
      throw _privateConstructorUsedError;
}
