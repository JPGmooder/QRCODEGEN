// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_qr_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainQrEventTearOff {
  const _$MainQrEventTearOff();

  SaveQrCode save({required String linkToCode}) {
    return SaveQrCode(
      linkToCode: linkToCode,
    );
  }

  LoadQrCodes load() {
    return const LoadQrCodes();
  }

  DeleteQrCodes delete({required String linkToCode}) {
    return DeleteQrCodes(
      linkToCode: linkToCode,
    );
  }
}

/// @nodoc
const $MainQrEvent = _$MainQrEventTearOff();

/// @nodoc
mixin _$MainQrEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String linkToCode) save,
    required TResult Function() load,
    required TResult Function(String linkToCode) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String linkToCode)? save,
    TResult Function()? load,
    TResult Function(String linkToCode)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String linkToCode)? save,
    TResult Function()? load,
    TResult Function(String linkToCode)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveQrCode value) save,
    required TResult Function(LoadQrCodes value) load,
    required TResult Function(DeleteQrCodes value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveQrCode value)? save,
    TResult Function(LoadQrCodes value)? load,
    TResult Function(DeleteQrCodes value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveQrCode value)? save,
    TResult Function(LoadQrCodes value)? load,
    TResult Function(DeleteQrCodes value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainQrEventCopyWith<$Res> {
  factory $MainQrEventCopyWith(
          MainQrEvent value, $Res Function(MainQrEvent) then) =
      _$MainQrEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainQrEventCopyWithImpl<$Res> implements $MainQrEventCopyWith<$Res> {
  _$MainQrEventCopyWithImpl(this._value, this._then);

  final MainQrEvent _value;
  // ignore: unused_field
  final $Res Function(MainQrEvent) _then;
}

/// @nodoc
abstract class $SaveQrCodeCopyWith<$Res> {
  factory $SaveQrCodeCopyWith(
          SaveQrCode value, $Res Function(SaveQrCode) then) =
      _$SaveQrCodeCopyWithImpl<$Res>;
  $Res call({String linkToCode});
}

/// @nodoc
class _$SaveQrCodeCopyWithImpl<$Res> extends _$MainQrEventCopyWithImpl<$Res>
    implements $SaveQrCodeCopyWith<$Res> {
  _$SaveQrCodeCopyWithImpl(SaveQrCode _value, $Res Function(SaveQrCode) _then)
      : super(_value, (v) => _then(v as SaveQrCode));

  @override
  SaveQrCode get _value => super._value as SaveQrCode;

  @override
  $Res call({
    Object? linkToCode = freezed,
  }) {
    return _then(SaveQrCode(
      linkToCode: linkToCode == freezed
          ? _value.linkToCode
          : linkToCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveQrCode with DiagnosticableTreeMixin implements SaveQrCode {
  const _$SaveQrCode({required this.linkToCode});

  @override
  final String linkToCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainQrEvent.save(linkToCode: $linkToCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainQrEvent.save'))
      ..add(DiagnosticsProperty('linkToCode', linkToCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveQrCode &&
            const DeepCollectionEquality()
                .equals(other.linkToCode, linkToCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(linkToCode));

  @JsonKey(ignore: true)
  @override
  $SaveQrCodeCopyWith<SaveQrCode> get copyWith =>
      _$SaveQrCodeCopyWithImpl<SaveQrCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String linkToCode) save,
    required TResult Function() load,
    required TResult Function(String linkToCode) delete,
  }) {
    return save(linkToCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String linkToCode)? save,
    TResult Function()? load,
    TResult Function(String linkToCode)? delete,
  }) {
    return save?.call(linkToCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String linkToCode)? save,
    TResult Function()? load,
    TResult Function(String linkToCode)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(linkToCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveQrCode value) save,
    required TResult Function(LoadQrCodes value) load,
    required TResult Function(DeleteQrCodes value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveQrCode value)? save,
    TResult Function(LoadQrCodes value)? load,
    TResult Function(DeleteQrCodes value)? delete,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveQrCode value)? save,
    TResult Function(LoadQrCodes value)? load,
    TResult Function(DeleteQrCodes value)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveQrCode implements MainQrEvent {
  const factory SaveQrCode({required String linkToCode}) = _$SaveQrCode;

  String get linkToCode;
  @JsonKey(ignore: true)
  $SaveQrCodeCopyWith<SaveQrCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadQrCodesCopyWith<$Res> {
  factory $LoadQrCodesCopyWith(
          LoadQrCodes value, $Res Function(LoadQrCodes) then) =
      _$LoadQrCodesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadQrCodesCopyWithImpl<$Res> extends _$MainQrEventCopyWithImpl<$Res>
    implements $LoadQrCodesCopyWith<$Res> {
  _$LoadQrCodesCopyWithImpl(
      LoadQrCodes _value, $Res Function(LoadQrCodes) _then)
      : super(_value, (v) => _then(v as LoadQrCodes));

  @override
  LoadQrCodes get _value => super._value as LoadQrCodes;
}

/// @nodoc

class _$LoadQrCodes with DiagnosticableTreeMixin implements LoadQrCodes {
  const _$LoadQrCodes();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainQrEvent.load()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainQrEvent.load'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadQrCodes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String linkToCode) save,
    required TResult Function() load,
    required TResult Function(String linkToCode) delete,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String linkToCode)? save,
    TResult Function()? load,
    TResult Function(String linkToCode)? delete,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String linkToCode)? save,
    TResult Function()? load,
    TResult Function(String linkToCode)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveQrCode value) save,
    required TResult Function(LoadQrCodes value) load,
    required TResult Function(DeleteQrCodes value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveQrCode value)? save,
    TResult Function(LoadQrCodes value)? load,
    TResult Function(DeleteQrCodes value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveQrCode value)? save,
    TResult Function(LoadQrCodes value)? load,
    TResult Function(DeleteQrCodes value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadQrCodes implements MainQrEvent {
  const factory LoadQrCodes() = _$LoadQrCodes;
}

/// @nodoc
abstract class $DeleteQrCodesCopyWith<$Res> {
  factory $DeleteQrCodesCopyWith(
          DeleteQrCodes value, $Res Function(DeleteQrCodes) then) =
      _$DeleteQrCodesCopyWithImpl<$Res>;
  $Res call({String linkToCode});
}

/// @nodoc
class _$DeleteQrCodesCopyWithImpl<$Res> extends _$MainQrEventCopyWithImpl<$Res>
    implements $DeleteQrCodesCopyWith<$Res> {
  _$DeleteQrCodesCopyWithImpl(
      DeleteQrCodes _value, $Res Function(DeleteQrCodes) _then)
      : super(_value, (v) => _then(v as DeleteQrCodes));

  @override
  DeleteQrCodes get _value => super._value as DeleteQrCodes;

  @override
  $Res call({
    Object? linkToCode = freezed,
  }) {
    return _then(DeleteQrCodes(
      linkToCode: linkToCode == freezed
          ? _value.linkToCode
          : linkToCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteQrCodes with DiagnosticableTreeMixin implements DeleteQrCodes {
  const _$DeleteQrCodes({required this.linkToCode});

  @override
  final String linkToCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainQrEvent.delete(linkToCode: $linkToCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainQrEvent.delete'))
      ..add(DiagnosticsProperty('linkToCode', linkToCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteQrCodes &&
            const DeepCollectionEquality()
                .equals(other.linkToCode, linkToCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(linkToCode));

  @JsonKey(ignore: true)
  @override
  $DeleteQrCodesCopyWith<DeleteQrCodes> get copyWith =>
      _$DeleteQrCodesCopyWithImpl<DeleteQrCodes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String linkToCode) save,
    required TResult Function() load,
    required TResult Function(String linkToCode) delete,
  }) {
    return delete(linkToCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String linkToCode)? save,
    TResult Function()? load,
    TResult Function(String linkToCode)? delete,
  }) {
    return delete?.call(linkToCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String linkToCode)? save,
    TResult Function()? load,
    TResult Function(String linkToCode)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(linkToCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveQrCode value) save,
    required TResult Function(LoadQrCodes value) load,
    required TResult Function(DeleteQrCodes value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveQrCode value)? save,
    TResult Function(LoadQrCodes value)? load,
    TResult Function(DeleteQrCodes value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveQrCode value)? save,
    TResult Function(LoadQrCodes value)? load,
    TResult Function(DeleteQrCodes value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteQrCodes implements MainQrEvent {
  const factory DeleteQrCodes({required String linkToCode}) = _$DeleteQrCodes;

  String get linkToCode;
  @JsonKey(ignore: true)
  $DeleteQrCodesCopyWith<DeleteQrCodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MainQrStateTearOff {
  const _$MainQrStateTearOff();

  _MainQrInitialState initial() {
    return const _MainQrInitialState();
  }

  MainQrLoadingState loading() {
    return const MainQrLoadingState();
  }

  _QrListLoadedState loaded({required List<String> downloadedUrls}) {
    return _QrListLoadedState(
      downloadedUrls: downloadedUrls,
    );
  }

  _QrDeletedState deleted({required String deletedUrl}) {
    return _QrDeletedState(
      deletedUrl: deletedUrl,
    );
  }

  _QrErroredState errored({required Error error}) {
    return _QrErroredState(
      error: error,
    );
  }

  _QrSavedState saved({required String downloadUrl}) {
    return _QrSavedState(
      downloadUrl: downloadUrl,
    );
  }
}

/// @nodoc
const $MainQrState = _$MainQrStateTearOff();

/// @nodoc
mixin _$MainQrState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> downloadedUrls) loaded,
    required TResult Function(String deletedUrl) deleted,
    required TResult Function(Error error) errored,
    required TResult Function(String downloadUrl) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainQrInitialState value) initial,
    required TResult Function(MainQrLoadingState value) loading,
    required TResult Function(_QrListLoadedState value) loaded,
    required TResult Function(_QrDeletedState value) deleted,
    required TResult Function(_QrErroredState value) errored,
    required TResult Function(_QrSavedState value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainQrStateCopyWith<$Res> {
  factory $MainQrStateCopyWith(
          MainQrState value, $Res Function(MainQrState) then) =
      _$MainQrStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainQrStateCopyWithImpl<$Res> implements $MainQrStateCopyWith<$Res> {
  _$MainQrStateCopyWithImpl(this._value, this._then);

  final MainQrState _value;
  // ignore: unused_field
  final $Res Function(MainQrState) _then;
}

/// @nodoc
abstract class _$MainQrInitialStateCopyWith<$Res> {
  factory _$MainQrInitialStateCopyWith(
          _MainQrInitialState value, $Res Function(_MainQrInitialState) then) =
      __$MainQrInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$MainQrInitialStateCopyWithImpl<$Res>
    extends _$MainQrStateCopyWithImpl<$Res>
    implements _$MainQrInitialStateCopyWith<$Res> {
  __$MainQrInitialStateCopyWithImpl(
      _MainQrInitialState _value, $Res Function(_MainQrInitialState) _then)
      : super(_value, (v) => _then(v as _MainQrInitialState));

  @override
  _MainQrInitialState get _value => super._value as _MainQrInitialState;
}

/// @nodoc

class _$_MainQrInitialState
    with DiagnosticableTreeMixin
    implements _MainQrInitialState {
  const _$_MainQrInitialState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainQrState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainQrState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MainQrInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> downloadedUrls) loaded,
    required TResult Function(String deletedUrl) deleted,
    required TResult Function(Error error) errored,
    required TResult Function(String downloadUrl) saved,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
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
    required TResult Function(_MainQrInitialState value) initial,
    required TResult Function(MainQrLoadingState value) loading,
    required TResult Function(_QrListLoadedState value) loaded,
    required TResult Function(_QrDeletedState value) deleted,
    required TResult Function(_QrErroredState value) errored,
    required TResult Function(_QrSavedState value) saved,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MainQrInitialState implements MainQrState {
  const factory _MainQrInitialState() = _$_MainQrInitialState;
}

/// @nodoc
abstract class $MainQrLoadingStateCopyWith<$Res> {
  factory $MainQrLoadingStateCopyWith(
          MainQrLoadingState value, $Res Function(MainQrLoadingState) then) =
      _$MainQrLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainQrLoadingStateCopyWithImpl<$Res>
    extends _$MainQrStateCopyWithImpl<$Res>
    implements $MainQrLoadingStateCopyWith<$Res> {
  _$MainQrLoadingStateCopyWithImpl(
      MainQrLoadingState _value, $Res Function(MainQrLoadingState) _then)
      : super(_value, (v) => _then(v as MainQrLoadingState));

  @override
  MainQrLoadingState get _value => super._value as MainQrLoadingState;
}

/// @nodoc

class _$MainQrLoadingState
    with DiagnosticableTreeMixin
    implements MainQrLoadingState {
  const _$MainQrLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainQrState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainQrState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MainQrLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> downloadedUrls) loaded,
    required TResult Function(String deletedUrl) deleted,
    required TResult Function(Error error) errored,
    required TResult Function(String downloadUrl) saved,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
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
    required TResult Function(_MainQrInitialState value) initial,
    required TResult Function(MainQrLoadingState value) loading,
    required TResult Function(_QrListLoadedState value) loaded,
    required TResult Function(_QrDeletedState value) deleted,
    required TResult Function(_QrErroredState value) errored,
    required TResult Function(_QrSavedState value) saved,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MainQrLoadingState implements MainQrState {
  const factory MainQrLoadingState() = _$MainQrLoadingState;
}

/// @nodoc
abstract class _$QrListLoadedStateCopyWith<$Res> {
  factory _$QrListLoadedStateCopyWith(
          _QrListLoadedState value, $Res Function(_QrListLoadedState) then) =
      __$QrListLoadedStateCopyWithImpl<$Res>;
  $Res call({List<String> downloadedUrls});
}

/// @nodoc
class __$QrListLoadedStateCopyWithImpl<$Res>
    extends _$MainQrStateCopyWithImpl<$Res>
    implements _$QrListLoadedStateCopyWith<$Res> {
  __$QrListLoadedStateCopyWithImpl(
      _QrListLoadedState _value, $Res Function(_QrListLoadedState) _then)
      : super(_value, (v) => _then(v as _QrListLoadedState));

  @override
  _QrListLoadedState get _value => super._value as _QrListLoadedState;

  @override
  $Res call({
    Object? downloadedUrls = freezed,
  }) {
    return _then(_QrListLoadedState(
      downloadedUrls: downloadedUrls == freezed
          ? _value.downloadedUrls
          : downloadedUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_QrListLoadedState
    with DiagnosticableTreeMixin
    implements _QrListLoadedState {
  const _$_QrListLoadedState({required this.downloadedUrls});

  @override
  final List<String> downloadedUrls;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainQrState.loaded(downloadedUrls: $downloadedUrls)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainQrState.loaded'))
      ..add(DiagnosticsProperty('downloadedUrls', downloadedUrls));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QrListLoadedState &&
            const DeepCollectionEquality()
                .equals(other.downloadedUrls, downloadedUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(downloadedUrls));

  @JsonKey(ignore: true)
  @override
  _$QrListLoadedStateCopyWith<_QrListLoadedState> get copyWith =>
      __$QrListLoadedStateCopyWithImpl<_QrListLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> downloadedUrls) loaded,
    required TResult Function(String deletedUrl) deleted,
    required TResult Function(Error error) errored,
    required TResult Function(String downloadUrl) saved,
  }) {
    return loaded(downloadedUrls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
  }) {
    return loaded?.call(downloadedUrls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(downloadedUrls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainQrInitialState value) initial,
    required TResult Function(MainQrLoadingState value) loading,
    required TResult Function(_QrListLoadedState value) loaded,
    required TResult Function(_QrDeletedState value) deleted,
    required TResult Function(_QrErroredState value) errored,
    required TResult Function(_QrSavedState value) saved,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _QrListLoadedState implements MainQrState {
  const factory _QrListLoadedState({required List<String> downloadedUrls}) =
      _$_QrListLoadedState;

  List<String> get downloadedUrls;
  @JsonKey(ignore: true)
  _$QrListLoadedStateCopyWith<_QrListLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QrDeletedStateCopyWith<$Res> {
  factory _$QrDeletedStateCopyWith(
          _QrDeletedState value, $Res Function(_QrDeletedState) then) =
      __$QrDeletedStateCopyWithImpl<$Res>;
  $Res call({String deletedUrl});
}

/// @nodoc
class __$QrDeletedStateCopyWithImpl<$Res>
    extends _$MainQrStateCopyWithImpl<$Res>
    implements _$QrDeletedStateCopyWith<$Res> {
  __$QrDeletedStateCopyWithImpl(
      _QrDeletedState _value, $Res Function(_QrDeletedState) _then)
      : super(_value, (v) => _then(v as _QrDeletedState));

  @override
  _QrDeletedState get _value => super._value as _QrDeletedState;

  @override
  $Res call({
    Object? deletedUrl = freezed,
  }) {
    return _then(_QrDeletedState(
      deletedUrl: deletedUrl == freezed
          ? _value.deletedUrl
          : deletedUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QrDeletedState
    with DiagnosticableTreeMixin
    implements _QrDeletedState {
  const _$_QrDeletedState({required this.deletedUrl});

  @override
  final String deletedUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainQrState.deleted(deletedUrl: $deletedUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainQrState.deleted'))
      ..add(DiagnosticsProperty('deletedUrl', deletedUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QrDeletedState &&
            const DeepCollectionEquality()
                .equals(other.deletedUrl, deletedUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(deletedUrl));

  @JsonKey(ignore: true)
  @override
  _$QrDeletedStateCopyWith<_QrDeletedState> get copyWith =>
      __$QrDeletedStateCopyWithImpl<_QrDeletedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> downloadedUrls) loaded,
    required TResult Function(String deletedUrl) deleted,
    required TResult Function(Error error) errored,
    required TResult Function(String downloadUrl) saved,
  }) {
    return deleted(deletedUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
  }) {
    return deleted?.call(deletedUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(deletedUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainQrInitialState value) initial,
    required TResult Function(MainQrLoadingState value) loading,
    required TResult Function(_QrListLoadedState value) loaded,
    required TResult Function(_QrDeletedState value) deleted,
    required TResult Function(_QrErroredState value) errored,
    required TResult Function(_QrSavedState value) saved,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _QrDeletedState implements MainQrState {
  const factory _QrDeletedState({required String deletedUrl}) =
      _$_QrDeletedState;

  String get deletedUrl;
  @JsonKey(ignore: true)
  _$QrDeletedStateCopyWith<_QrDeletedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QrErroredStateCopyWith<$Res> {
  factory _$QrErroredStateCopyWith(
          _QrErroredState value, $Res Function(_QrErroredState) then) =
      __$QrErroredStateCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class __$QrErroredStateCopyWithImpl<$Res>
    extends _$MainQrStateCopyWithImpl<$Res>
    implements _$QrErroredStateCopyWith<$Res> {
  __$QrErroredStateCopyWithImpl(
      _QrErroredState _value, $Res Function(_QrErroredState) _then)
      : super(_value, (v) => _then(v as _QrErroredState));

  @override
  _QrErroredState get _value => super._value as _QrErroredState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_QrErroredState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$_QrErroredState
    with DiagnosticableTreeMixin
    implements _QrErroredState {
  const _$_QrErroredState({required this.error});

  @override
  final Error error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainQrState.errored(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainQrState.errored'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QrErroredState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$QrErroredStateCopyWith<_QrErroredState> get copyWith =>
      __$QrErroredStateCopyWithImpl<_QrErroredState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> downloadedUrls) loaded,
    required TResult Function(String deletedUrl) deleted,
    required TResult Function(Error error) errored,
    required TResult Function(String downloadUrl) saved,
  }) {
    return errored(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
  }) {
    return errored?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
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
    required TResult Function(_MainQrInitialState value) initial,
    required TResult Function(MainQrLoadingState value) loading,
    required TResult Function(_QrListLoadedState value) loaded,
    required TResult Function(_QrDeletedState value) deleted,
    required TResult Function(_QrErroredState value) errored,
    required TResult Function(_QrSavedState value) saved,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _QrErroredState implements MainQrState {
  const factory _QrErroredState({required Error error}) = _$_QrErroredState;

  Error get error;
  @JsonKey(ignore: true)
  _$QrErroredStateCopyWith<_QrErroredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QrSavedStateCopyWith<$Res> {
  factory _$QrSavedStateCopyWith(
          _QrSavedState value, $Res Function(_QrSavedState) then) =
      __$QrSavedStateCopyWithImpl<$Res>;
  $Res call({String downloadUrl});
}

/// @nodoc
class __$QrSavedStateCopyWithImpl<$Res> extends _$MainQrStateCopyWithImpl<$Res>
    implements _$QrSavedStateCopyWith<$Res> {
  __$QrSavedStateCopyWithImpl(
      _QrSavedState _value, $Res Function(_QrSavedState) _then)
      : super(_value, (v) => _then(v as _QrSavedState));

  @override
  _QrSavedState get _value => super._value as _QrSavedState;

  @override
  $Res call({
    Object? downloadUrl = freezed,
  }) {
    return _then(_QrSavedState(
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QrSavedState with DiagnosticableTreeMixin implements _QrSavedState {
  const _$_QrSavedState({required this.downloadUrl});

  @override
  final String downloadUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainQrState.saved(downloadUrl: $downloadUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainQrState.saved'))
      ..add(DiagnosticsProperty('downloadUrl', downloadUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QrSavedState &&
            const DeepCollectionEquality()
                .equals(other.downloadUrl, downloadUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(downloadUrl));

  @JsonKey(ignore: true)
  @override
  _$QrSavedStateCopyWith<_QrSavedState> get copyWith =>
      __$QrSavedStateCopyWithImpl<_QrSavedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> downloadedUrls) loaded,
    required TResult Function(String deletedUrl) deleted,
    required TResult Function(Error error) errored,
    required TResult Function(String downloadUrl) saved,
  }) {
    return saved(downloadUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
  }) {
    return saved?.call(downloadUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> downloadedUrls)? loaded,
    TResult Function(String deletedUrl)? deleted,
    TResult Function(Error error)? errored,
    TResult Function(String downloadUrl)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(downloadUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainQrInitialState value) initial,
    required TResult Function(MainQrLoadingState value) loading,
    required TResult Function(_QrListLoadedState value) loaded,
    required TResult Function(_QrDeletedState value) deleted,
    required TResult Function(_QrErroredState value) errored,
    required TResult Function(_QrSavedState value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainQrInitialState value)? initial,
    TResult Function(MainQrLoadingState value)? loading,
    TResult Function(_QrListLoadedState value)? loaded,
    TResult Function(_QrDeletedState value)? deleted,
    TResult Function(_QrErroredState value)? errored,
    TResult Function(_QrSavedState value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _QrSavedState implements MainQrState {
  const factory _QrSavedState({required String downloadUrl}) = _$_QrSavedState;

  String get downloadUrl;
  @JsonKey(ignore: true)
  _$QrSavedStateCopyWith<_QrSavedState> get copyWith =>
      throw _privateConstructorUsedError;
}
