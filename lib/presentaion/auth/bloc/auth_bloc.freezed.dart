// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authByGoogle,
    required TResult Function() authByApple,
    required TResult Function() logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authByGoogle,
    TResult? Function()? authByApple,
    TResult? Function()? logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authByGoogle,
    TResult Function()? authByApple,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthGoogleEvent value) authByGoogle,
    required TResult Function(_AuthAppleEvent value) authByApple,
    required TResult Function(_AuthLogOutEvent value) logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthGoogleEvent value)? authByGoogle,
    TResult? Function(_AuthAppleEvent value)? authByApple,
    TResult? Function(_AuthLogOutEvent value)? logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? authByGoogle,
    TResult Function(_AuthAppleEvent value)? authByApple,
    TResult Function(_AuthLogOutEvent value)? logOutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthGoogleEventImplCopyWith<$Res> {
  factory _$$AuthGoogleEventImplCopyWith(_$AuthGoogleEventImpl value,
          $Res Function(_$AuthGoogleEventImpl) then) =
      __$$AuthGoogleEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthGoogleEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthGoogleEventImpl>
    implements _$$AuthGoogleEventImplCopyWith<$Res> {
  __$$AuthGoogleEventImplCopyWithImpl(
      _$AuthGoogleEventImpl _value, $Res Function(_$AuthGoogleEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthGoogleEventImpl implements _AuthGoogleEvent {
  _$AuthGoogleEventImpl();

  @override
  String toString() {
    return 'AuthEvent.authByGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthGoogleEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authByGoogle,
    required TResult Function() authByApple,
    required TResult Function() logOutEvent,
  }) {
    return authByGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authByGoogle,
    TResult? Function()? authByApple,
    TResult? Function()? logOutEvent,
  }) {
    return authByGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authByGoogle,
    TResult Function()? authByApple,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) {
    if (authByGoogle != null) {
      return authByGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthGoogleEvent value) authByGoogle,
    required TResult Function(_AuthAppleEvent value) authByApple,
    required TResult Function(_AuthLogOutEvent value) logOutEvent,
  }) {
    return authByGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthGoogleEvent value)? authByGoogle,
    TResult? Function(_AuthAppleEvent value)? authByApple,
    TResult? Function(_AuthLogOutEvent value)? logOutEvent,
  }) {
    return authByGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? authByGoogle,
    TResult Function(_AuthAppleEvent value)? authByApple,
    TResult Function(_AuthLogOutEvent value)? logOutEvent,
    required TResult orElse(),
  }) {
    if (authByGoogle != null) {
      return authByGoogle(this);
    }
    return orElse();
  }
}

abstract class _AuthGoogleEvent implements AuthEvent {
  factory _AuthGoogleEvent() = _$AuthGoogleEventImpl;
}

/// @nodoc
abstract class _$$AuthAppleEventImplCopyWith<$Res> {
  factory _$$AuthAppleEventImplCopyWith(_$AuthAppleEventImpl value,
          $Res Function(_$AuthAppleEventImpl) then) =
      __$$AuthAppleEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthAppleEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthAppleEventImpl>
    implements _$$AuthAppleEventImplCopyWith<$Res> {
  __$$AuthAppleEventImplCopyWithImpl(
      _$AuthAppleEventImpl _value, $Res Function(_$AuthAppleEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthAppleEventImpl implements _AuthAppleEvent {
  _$AuthAppleEventImpl();

  @override
  String toString() {
    return 'AuthEvent.authByApple()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthAppleEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authByGoogle,
    required TResult Function() authByApple,
    required TResult Function() logOutEvent,
  }) {
    return authByApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authByGoogle,
    TResult? Function()? authByApple,
    TResult? Function()? logOutEvent,
  }) {
    return authByApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authByGoogle,
    TResult Function()? authByApple,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) {
    if (authByApple != null) {
      return authByApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthGoogleEvent value) authByGoogle,
    required TResult Function(_AuthAppleEvent value) authByApple,
    required TResult Function(_AuthLogOutEvent value) logOutEvent,
  }) {
    return authByApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthGoogleEvent value)? authByGoogle,
    TResult? Function(_AuthAppleEvent value)? authByApple,
    TResult? Function(_AuthLogOutEvent value)? logOutEvent,
  }) {
    return authByApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? authByGoogle,
    TResult Function(_AuthAppleEvent value)? authByApple,
    TResult Function(_AuthLogOutEvent value)? logOutEvent,
    required TResult orElse(),
  }) {
    if (authByApple != null) {
      return authByApple(this);
    }
    return orElse();
  }
}

abstract class _AuthAppleEvent implements AuthEvent {
  factory _AuthAppleEvent() = _$AuthAppleEventImpl;
}

/// @nodoc
abstract class _$$AuthLogOutEventImplCopyWith<$Res> {
  factory _$$AuthLogOutEventImplCopyWith(_$AuthLogOutEventImpl value,
          $Res Function(_$AuthLogOutEventImpl) then) =
      __$$AuthLogOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLogOutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLogOutEventImpl>
    implements _$$AuthLogOutEventImplCopyWith<$Res> {
  __$$AuthLogOutEventImplCopyWithImpl(
      _$AuthLogOutEventImpl _value, $Res Function(_$AuthLogOutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthLogOutEventImpl implements _AuthLogOutEvent {
  _$AuthLogOutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logOutEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLogOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authByGoogle,
    required TResult Function() authByApple,
    required TResult Function() logOutEvent,
  }) {
    return logOutEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authByGoogle,
    TResult? Function()? authByApple,
    TResult? Function()? logOutEvent,
  }) {
    return logOutEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authByGoogle,
    TResult Function()? authByApple,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) {
    if (logOutEvent != null) {
      return logOutEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthGoogleEvent value) authByGoogle,
    required TResult Function(_AuthAppleEvent value) authByApple,
    required TResult Function(_AuthLogOutEvent value) logOutEvent,
  }) {
    return logOutEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthGoogleEvent value)? authByGoogle,
    TResult? Function(_AuthAppleEvent value)? authByApple,
    TResult? Function(_AuthLogOutEvent value)? logOutEvent,
  }) {
    return logOutEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? authByGoogle,
    TResult Function(_AuthAppleEvent value)? authByApple,
    TResult Function(_AuthLogOutEvent value)? logOutEvent,
    required TResult orElse(),
  }) {
    if (logOutEvent != null) {
      return logOutEvent(this);
    }
    return orElse();
  }
}

abstract class _AuthLogOutEvent implements AuthEvent {
  factory _AuthLogOutEvent() = _$AuthLogOutEventImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() defaultState,
    required TResult Function() googleLoading,
    required TResult Function() appleLoading,
    required TResult Function() authSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? defaultState,
    TResult? Function()? googleLoading,
    TResult? Function()? appleLoading,
    TResult? Function()? authSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? defaultState,
    TResult Function()? googleLoading,
    TResult Function()? appleLoading,
    TResult Function()? authSuccessState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultState value) defaultState,
    required TResult Function(AuthGoogleLoadingState value) googleLoading,
    required TResult Function(AuthAppleLoadingState value) appleLoading,
    required TResult Function(AuthSuccessState value) authSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultState value)? defaultState,
    TResult? Function(AuthGoogleLoadingState value)? googleLoading,
    TResult? Function(AuthAppleLoadingState value)? appleLoading,
    TResult? Function(AuthSuccessState value)? authSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultState value)? defaultState,
    TResult Function(AuthGoogleLoadingState value)? googleLoading,
    TResult Function(AuthAppleLoadingState value)? appleLoading,
    TResult Function(AuthSuccessState value)? authSuccessState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DefaultStateImplCopyWith<$Res> {
  factory _$$DefaultStateImplCopyWith(
          _$DefaultStateImpl value, $Res Function(_$DefaultStateImpl) then) =
      __$$DefaultStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DefaultStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$DefaultStateImpl>
    implements _$$DefaultStateImplCopyWith<$Res> {
  __$$DefaultStateImplCopyWithImpl(
      _$DefaultStateImpl _value, $Res Function(_$DefaultStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DefaultStateImpl implements DefaultState {
  _$DefaultStateImpl();

  @override
  String toString() {
    return 'AuthState.defaultState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DefaultStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() defaultState,
    required TResult Function() googleLoading,
    required TResult Function() appleLoading,
    required TResult Function() authSuccessState,
  }) {
    return defaultState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? defaultState,
    TResult? Function()? googleLoading,
    TResult? Function()? appleLoading,
    TResult? Function()? authSuccessState,
  }) {
    return defaultState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? defaultState,
    TResult Function()? googleLoading,
    TResult Function()? appleLoading,
    TResult Function()? authSuccessState,
    required TResult orElse(),
  }) {
    if (defaultState != null) {
      return defaultState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultState value) defaultState,
    required TResult Function(AuthGoogleLoadingState value) googleLoading,
    required TResult Function(AuthAppleLoadingState value) appleLoading,
    required TResult Function(AuthSuccessState value) authSuccessState,
  }) {
    return defaultState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultState value)? defaultState,
    TResult? Function(AuthGoogleLoadingState value)? googleLoading,
    TResult? Function(AuthAppleLoadingState value)? appleLoading,
    TResult? Function(AuthSuccessState value)? authSuccessState,
  }) {
    return defaultState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultState value)? defaultState,
    TResult Function(AuthGoogleLoadingState value)? googleLoading,
    TResult Function(AuthAppleLoadingState value)? appleLoading,
    TResult Function(AuthSuccessState value)? authSuccessState,
    required TResult orElse(),
  }) {
    if (defaultState != null) {
      return defaultState(this);
    }
    return orElse();
  }
}

abstract class DefaultState implements AuthState {
  factory DefaultState() = _$DefaultStateImpl;
}

/// @nodoc
abstract class _$$AuthGoogleLoadingStateImplCopyWith<$Res> {
  factory _$$AuthGoogleLoadingStateImplCopyWith(
          _$AuthGoogleLoadingStateImpl value,
          $Res Function(_$AuthGoogleLoadingStateImpl) then) =
      __$$AuthGoogleLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthGoogleLoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthGoogleLoadingStateImpl>
    implements _$$AuthGoogleLoadingStateImplCopyWith<$Res> {
  __$$AuthGoogleLoadingStateImplCopyWithImpl(
      _$AuthGoogleLoadingStateImpl _value,
      $Res Function(_$AuthGoogleLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthGoogleLoadingStateImpl implements AuthGoogleLoadingState {
  _$AuthGoogleLoadingStateImpl();

  @override
  String toString() {
    return 'AuthState.googleLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthGoogleLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() defaultState,
    required TResult Function() googleLoading,
    required TResult Function() appleLoading,
    required TResult Function() authSuccessState,
  }) {
    return googleLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? defaultState,
    TResult? Function()? googleLoading,
    TResult? Function()? appleLoading,
    TResult? Function()? authSuccessState,
  }) {
    return googleLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? defaultState,
    TResult Function()? googleLoading,
    TResult Function()? appleLoading,
    TResult Function()? authSuccessState,
    required TResult orElse(),
  }) {
    if (googleLoading != null) {
      return googleLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultState value) defaultState,
    required TResult Function(AuthGoogleLoadingState value) googleLoading,
    required TResult Function(AuthAppleLoadingState value) appleLoading,
    required TResult Function(AuthSuccessState value) authSuccessState,
  }) {
    return googleLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultState value)? defaultState,
    TResult? Function(AuthGoogleLoadingState value)? googleLoading,
    TResult? Function(AuthAppleLoadingState value)? appleLoading,
    TResult? Function(AuthSuccessState value)? authSuccessState,
  }) {
    return googleLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultState value)? defaultState,
    TResult Function(AuthGoogleLoadingState value)? googleLoading,
    TResult Function(AuthAppleLoadingState value)? appleLoading,
    TResult Function(AuthSuccessState value)? authSuccessState,
    required TResult orElse(),
  }) {
    if (googleLoading != null) {
      return googleLoading(this);
    }
    return orElse();
  }
}

abstract class AuthGoogleLoadingState implements AuthState {
  factory AuthGoogleLoadingState() = _$AuthGoogleLoadingStateImpl;
}

/// @nodoc
abstract class _$$AuthAppleLoadingStateImplCopyWith<$Res> {
  factory _$$AuthAppleLoadingStateImplCopyWith(
          _$AuthAppleLoadingStateImpl value,
          $Res Function(_$AuthAppleLoadingStateImpl) then) =
      __$$AuthAppleLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthAppleLoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthAppleLoadingStateImpl>
    implements _$$AuthAppleLoadingStateImplCopyWith<$Res> {
  __$$AuthAppleLoadingStateImplCopyWithImpl(_$AuthAppleLoadingStateImpl _value,
      $Res Function(_$AuthAppleLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthAppleLoadingStateImpl implements AuthAppleLoadingState {
  _$AuthAppleLoadingStateImpl();

  @override
  String toString() {
    return 'AuthState.appleLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAppleLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() defaultState,
    required TResult Function() googleLoading,
    required TResult Function() appleLoading,
    required TResult Function() authSuccessState,
  }) {
    return appleLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? defaultState,
    TResult? Function()? googleLoading,
    TResult? Function()? appleLoading,
    TResult? Function()? authSuccessState,
  }) {
    return appleLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? defaultState,
    TResult Function()? googleLoading,
    TResult Function()? appleLoading,
    TResult Function()? authSuccessState,
    required TResult orElse(),
  }) {
    if (appleLoading != null) {
      return appleLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultState value) defaultState,
    required TResult Function(AuthGoogleLoadingState value) googleLoading,
    required TResult Function(AuthAppleLoadingState value) appleLoading,
    required TResult Function(AuthSuccessState value) authSuccessState,
  }) {
    return appleLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultState value)? defaultState,
    TResult? Function(AuthGoogleLoadingState value)? googleLoading,
    TResult? Function(AuthAppleLoadingState value)? appleLoading,
    TResult? Function(AuthSuccessState value)? authSuccessState,
  }) {
    return appleLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultState value)? defaultState,
    TResult Function(AuthGoogleLoadingState value)? googleLoading,
    TResult Function(AuthAppleLoadingState value)? appleLoading,
    TResult Function(AuthSuccessState value)? authSuccessState,
    required TResult orElse(),
  }) {
    if (appleLoading != null) {
      return appleLoading(this);
    }
    return orElse();
  }
}

abstract class AuthAppleLoadingState implements AuthState {
  factory AuthAppleLoadingState() = _$AuthAppleLoadingStateImpl;
}

/// @nodoc
abstract class _$$AuthSuccessStateImplCopyWith<$Res> {
  factory _$$AuthSuccessStateImplCopyWith(_$AuthSuccessStateImpl value,
          $Res Function(_$AuthSuccessStateImpl) then) =
      __$$AuthSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSuccessStateImpl>
    implements _$$AuthSuccessStateImplCopyWith<$Res> {
  __$$AuthSuccessStateImplCopyWithImpl(_$AuthSuccessStateImpl _value,
      $Res Function(_$AuthSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthSuccessStateImpl implements AuthSuccessState {
  _$AuthSuccessStateImpl();

  @override
  String toString() {
    return 'AuthState.authSuccessState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() defaultState,
    required TResult Function() googleLoading,
    required TResult Function() appleLoading,
    required TResult Function() authSuccessState,
  }) {
    return authSuccessState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? defaultState,
    TResult? Function()? googleLoading,
    TResult? Function()? appleLoading,
    TResult? Function()? authSuccessState,
  }) {
    return authSuccessState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? defaultState,
    TResult Function()? googleLoading,
    TResult Function()? appleLoading,
    TResult Function()? authSuccessState,
    required TResult orElse(),
  }) {
    if (authSuccessState != null) {
      return authSuccessState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultState value) defaultState,
    required TResult Function(AuthGoogleLoadingState value) googleLoading,
    required TResult Function(AuthAppleLoadingState value) appleLoading,
    required TResult Function(AuthSuccessState value) authSuccessState,
  }) {
    return authSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultState value)? defaultState,
    TResult? Function(AuthGoogleLoadingState value)? googleLoading,
    TResult? Function(AuthAppleLoadingState value)? appleLoading,
    TResult? Function(AuthSuccessState value)? authSuccessState,
  }) {
    return authSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultState value)? defaultState,
    TResult Function(AuthGoogleLoadingState value)? googleLoading,
    TResult Function(AuthAppleLoadingState value)? appleLoading,
    TResult Function(AuthSuccessState value)? authSuccessState,
    required TResult orElse(),
  }) {
    if (authSuccessState != null) {
      return authSuccessState(this);
    }
    return orElse();
  }
}

abstract class AuthSuccessState implements AuthState {
  factory AuthSuccessState() = _$AuthSuccessStateImpl;
}
