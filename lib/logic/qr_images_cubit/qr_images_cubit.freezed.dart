// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qr_images_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QrImageStateTearOff {
  const _$QrImageStateTearOff();

  _QrImagesLoadedState loaded(List<String> downloadList) {
    return _QrImagesLoadedState(
      downloadList,
    );
  }

  _QrImageInitialState initial() {
    return const _QrImageInitialState();
  }

  _QrImageErroredState errored() {
    return const _QrImageErroredState();
  }
}

/// @nodoc
const $QrImageState = _$QrImageStateTearOff();

/// @nodoc
mixin _$QrImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> downloadList) loaded,
    required TResult Function() initial,
    required TResult Function() errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> downloadList)? loaded,
    TResult Function()? initial,
    TResult Function()? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> downloadList)? loaded,
    TResult Function()? initial,
    TResult Function()? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrImagesLoadedState value) loaded,
    required TResult Function(_QrImageInitialState value) initial,
    required TResult Function(_QrImageErroredState value) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QrImagesLoadedState value)? loaded,
    TResult Function(_QrImageInitialState value)? initial,
    TResult Function(_QrImageErroredState value)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrImagesLoadedState value)? loaded,
    TResult Function(_QrImageInitialState value)? initial,
    TResult Function(_QrImageErroredState value)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrImageStateCopyWith<$Res> {
  factory $QrImageStateCopyWith(
          QrImageState value, $Res Function(QrImageState) then) =
      _$QrImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QrImageStateCopyWithImpl<$Res> implements $QrImageStateCopyWith<$Res> {
  _$QrImageStateCopyWithImpl(this._value, this._then);

  final QrImageState _value;
  // ignore: unused_field
  final $Res Function(QrImageState) _then;
}

/// @nodoc
abstract class _$QrImagesLoadedStateCopyWith<$Res> {
  factory _$QrImagesLoadedStateCopyWith(_QrImagesLoadedState value,
          $Res Function(_QrImagesLoadedState) then) =
      __$QrImagesLoadedStateCopyWithImpl<$Res>;
  $Res call({List<String> downloadList});
}

/// @nodoc
class __$QrImagesLoadedStateCopyWithImpl<$Res>
    extends _$QrImageStateCopyWithImpl<$Res>
    implements _$QrImagesLoadedStateCopyWith<$Res> {
  __$QrImagesLoadedStateCopyWithImpl(
      _QrImagesLoadedState _value, $Res Function(_QrImagesLoadedState) _then)
      : super(_value, (v) => _then(v as _QrImagesLoadedState));

  @override
  _QrImagesLoadedState get _value => super._value as _QrImagesLoadedState;

  @override
  $Res call({
    Object? downloadList = freezed,
  }) {
    return _then(_QrImagesLoadedState(
      downloadList == freezed
          ? _value.downloadList
          : downloadList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_QrImagesLoadedState implements _QrImagesLoadedState {
  const _$_QrImagesLoadedState(this.downloadList);

  @override
  final List<String> downloadList;

  @override
  String toString() {
    return 'QrImageState.loaded(downloadList: $downloadList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QrImagesLoadedState &&
            const DeepCollectionEquality()
                .equals(other.downloadList, downloadList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(downloadList));

  @JsonKey(ignore: true)
  @override
  _$QrImagesLoadedStateCopyWith<_QrImagesLoadedState> get copyWith =>
      __$QrImagesLoadedStateCopyWithImpl<_QrImagesLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> downloadList) loaded,
    required TResult Function() initial,
    required TResult Function() errored,
  }) {
    return loaded(downloadList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> downloadList)? loaded,
    TResult Function()? initial,
    TResult Function()? errored,
  }) {
    return loaded?.call(downloadList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> downloadList)? loaded,
    TResult Function()? initial,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(downloadList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrImagesLoadedState value) loaded,
    required TResult Function(_QrImageInitialState value) initial,
    required TResult Function(_QrImageErroredState value) errored,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QrImagesLoadedState value)? loaded,
    TResult Function(_QrImageInitialState value)? initial,
    TResult Function(_QrImageErroredState value)? errored,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrImagesLoadedState value)? loaded,
    TResult Function(_QrImageInitialState value)? initial,
    TResult Function(_QrImageErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _QrImagesLoadedState implements QrImageState {
  const factory _QrImagesLoadedState(List<String> downloadList) =
      _$_QrImagesLoadedState;

  List<String> get downloadList;
  @JsonKey(ignore: true)
  _$QrImagesLoadedStateCopyWith<_QrImagesLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QrImageInitialStateCopyWith<$Res> {
  factory _$QrImageInitialStateCopyWith(_QrImageInitialState value,
          $Res Function(_QrImageInitialState) then) =
      __$QrImageInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$QrImageInitialStateCopyWithImpl<$Res>
    extends _$QrImageStateCopyWithImpl<$Res>
    implements _$QrImageInitialStateCopyWith<$Res> {
  __$QrImageInitialStateCopyWithImpl(
      _QrImageInitialState _value, $Res Function(_QrImageInitialState) _then)
      : super(_value, (v) => _then(v as _QrImageInitialState));

  @override
  _QrImageInitialState get _value => super._value as _QrImageInitialState;
}

/// @nodoc

class _$_QrImageInitialState implements _QrImageInitialState {
  const _$_QrImageInitialState();

  @override
  String toString() {
    return 'QrImageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _QrImageInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> downloadList) loaded,
    required TResult Function() initial,
    required TResult Function() errored,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> downloadList)? loaded,
    TResult Function()? initial,
    TResult Function()? errored,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> downloadList)? loaded,
    TResult Function()? initial,
    TResult Function()? errored,
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
    required TResult Function(_QrImagesLoadedState value) loaded,
    required TResult Function(_QrImageInitialState value) initial,
    required TResult Function(_QrImageErroredState value) errored,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QrImagesLoadedState value)? loaded,
    TResult Function(_QrImageInitialState value)? initial,
    TResult Function(_QrImageErroredState value)? errored,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrImagesLoadedState value)? loaded,
    TResult Function(_QrImageInitialState value)? initial,
    TResult Function(_QrImageErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _QrImageInitialState implements QrImageState {
  const factory _QrImageInitialState() = _$_QrImageInitialState;
}

/// @nodoc
abstract class _$QrImageErroredStateCopyWith<$Res> {
  factory _$QrImageErroredStateCopyWith(_QrImageErroredState value,
          $Res Function(_QrImageErroredState) then) =
      __$QrImageErroredStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$QrImageErroredStateCopyWithImpl<$Res>
    extends _$QrImageStateCopyWithImpl<$Res>
    implements _$QrImageErroredStateCopyWith<$Res> {
  __$QrImageErroredStateCopyWithImpl(
      _QrImageErroredState _value, $Res Function(_QrImageErroredState) _then)
      : super(_value, (v) => _then(v as _QrImageErroredState));

  @override
  _QrImageErroredState get _value => super._value as _QrImageErroredState;
}

/// @nodoc

class _$_QrImageErroredState implements _QrImageErroredState {
  const _$_QrImageErroredState();

  @override
  String toString() {
    return 'QrImageState.errored()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _QrImageErroredState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> downloadList) loaded,
    required TResult Function() initial,
    required TResult Function() errored,
  }) {
    return errored();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> downloadList)? loaded,
    TResult Function()? initial,
    TResult Function()? errored,
  }) {
    return errored?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> downloadList)? loaded,
    TResult Function()? initial,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrImagesLoadedState value) loaded,
    required TResult Function(_QrImageInitialState value) initial,
    required TResult Function(_QrImageErroredState value) errored,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QrImagesLoadedState value)? loaded,
    TResult Function(_QrImageInitialState value)? initial,
    TResult Function(_QrImageErroredState value)? errored,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrImagesLoadedState value)? loaded,
    TResult Function(_QrImageInitialState value)? initial,
    TResult Function(_QrImageErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _QrImageErroredState implements QrImageState {
  const factory _QrImageErroredState() = _$_QrImageErroredState;
}
