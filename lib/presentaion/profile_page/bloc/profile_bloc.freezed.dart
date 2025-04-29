// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? userModel) dataState,
    required TResult Function() guestState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? userModel)? dataState,
    TResult? Function()? guestState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? userModel)? dataState,
    TResult Function()? guestState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileBlocDataState value) dataState,
    required TResult Function(ProfileBlocGuestState value) guestState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileBlocDataState value)? dataState,
    TResult? Function(ProfileBlocGuestState value)? guestState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileBlocDataState value)? dataState,
    TResult Function(ProfileBlocGuestState value)? guestState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileBlocStateCopyWith<$Res> {
  factory $ProfileBlocStateCopyWith(
          ProfileBlocState value, $Res Function(ProfileBlocState) then) =
      _$ProfileBlocStateCopyWithImpl<$Res, ProfileBlocState>;
}

/// @nodoc
class _$ProfileBlocStateCopyWithImpl<$Res, $Val extends ProfileBlocState>
    implements $ProfileBlocStateCopyWith<$Res> {
  _$ProfileBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileBlocDataStateImplCopyWith<$Res> {
  factory _$$ProfileBlocDataStateImplCopyWith(_$ProfileBlocDataStateImpl value,
          $Res Function(_$ProfileBlocDataStateImpl) then) =
      __$$ProfileBlocDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel? userModel});
}

/// @nodoc
class __$$ProfileBlocDataStateImplCopyWithImpl<$Res>
    extends _$ProfileBlocStateCopyWithImpl<$Res, _$ProfileBlocDataStateImpl>
    implements _$$ProfileBlocDataStateImplCopyWith<$Res> {
  __$$ProfileBlocDataStateImplCopyWithImpl(_$ProfileBlocDataStateImpl _value,
      $Res Function(_$ProfileBlocDataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_$ProfileBlocDataStateImpl(
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$ProfileBlocDataStateImpl implements ProfileBlocDataState {
  _$ProfileBlocDataStateImpl({this.userModel});

  @override
  final UserModel? userModel;

  @override
  String toString() {
    return 'ProfileBlocState.dataState(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileBlocDataStateImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  /// Create a copy of ProfileBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileBlocDataStateImplCopyWith<_$ProfileBlocDataStateImpl>
      get copyWith =>
          __$$ProfileBlocDataStateImplCopyWithImpl<_$ProfileBlocDataStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? userModel) dataState,
    required TResult Function() guestState,
  }) {
    return dataState(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? userModel)? dataState,
    TResult? Function()? guestState,
  }) {
    return dataState?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? userModel)? dataState,
    TResult Function()? guestState,
    required TResult orElse(),
  }) {
    if (dataState != null) {
      return dataState(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileBlocDataState value) dataState,
    required TResult Function(ProfileBlocGuestState value) guestState,
  }) {
    return dataState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileBlocDataState value)? dataState,
    TResult? Function(ProfileBlocGuestState value)? guestState,
  }) {
    return dataState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileBlocDataState value)? dataState,
    TResult Function(ProfileBlocGuestState value)? guestState,
    required TResult orElse(),
  }) {
    if (dataState != null) {
      return dataState(this);
    }
    return orElse();
  }
}

abstract class ProfileBlocDataState implements ProfileBlocState {
  factory ProfileBlocDataState({final UserModel? userModel}) =
      _$ProfileBlocDataStateImpl;

  UserModel? get userModel;

  /// Create a copy of ProfileBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileBlocDataStateImplCopyWith<_$ProfileBlocDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileBlocGuestStateImplCopyWith<$Res> {
  factory _$$ProfileBlocGuestStateImplCopyWith(
          _$ProfileBlocGuestStateImpl value,
          $Res Function(_$ProfileBlocGuestStateImpl) then) =
      __$$ProfileBlocGuestStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileBlocGuestStateImplCopyWithImpl<$Res>
    extends _$ProfileBlocStateCopyWithImpl<$Res, _$ProfileBlocGuestStateImpl>
    implements _$$ProfileBlocGuestStateImplCopyWith<$Res> {
  __$$ProfileBlocGuestStateImplCopyWithImpl(_$ProfileBlocGuestStateImpl _value,
      $Res Function(_$ProfileBlocGuestStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileBlocGuestStateImpl implements ProfileBlocGuestState {
  _$ProfileBlocGuestStateImpl();

  @override
  String toString() {
    return 'ProfileBlocState.guestState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileBlocGuestStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? userModel) dataState,
    required TResult Function() guestState,
  }) {
    return guestState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? userModel)? dataState,
    TResult? Function()? guestState,
  }) {
    return guestState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? userModel)? dataState,
    TResult Function()? guestState,
    required TResult orElse(),
  }) {
    if (guestState != null) {
      return guestState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileBlocDataState value) dataState,
    required TResult Function(ProfileBlocGuestState value) guestState,
  }) {
    return guestState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileBlocDataState value)? dataState,
    TResult? Function(ProfileBlocGuestState value)? guestState,
  }) {
    return guestState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileBlocDataState value)? dataState,
    TResult Function(ProfileBlocGuestState value)? guestState,
    required TResult orElse(),
  }) {
    if (guestState != null) {
      return guestState(this);
    }
    return orElse();
  }
}

abstract class ProfileBlocGuestState implements ProfileBlocState {
  factory ProfileBlocGuestState() = _$ProfileBlocGuestStateImpl;
}

/// @nodoc
mixin _$ProfileBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initEvent,
    required TResult Function() loadEvent,
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initEvent,
    TResult? Function()? loadEvent,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initEvent,
    TResult Function()? loadEvent,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileBlocInitEvent value) initEvent,
    required TResult Function(_ProfileBlocLoadEvent value) loadEvent,
    required TResult Function(_ProfileBlocLogOutEvent value) logOut,
    required TResult Function(_ProfileBlocDeleteEvent value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileBlocInitEvent value)? initEvent,
    TResult? Function(_ProfileBlocLoadEvent value)? loadEvent,
    TResult? Function(_ProfileBlocLogOutEvent value)? logOut,
    TResult? Function(_ProfileBlocDeleteEvent value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileBlocInitEvent value)? initEvent,
    TResult Function(_ProfileBlocLoadEvent value)? loadEvent,
    TResult Function(_ProfileBlocLogOutEvent value)? logOut,
    TResult Function(_ProfileBlocDeleteEvent value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileBlocEventCopyWith<$Res> {
  factory $ProfileBlocEventCopyWith(
          ProfileBlocEvent value, $Res Function(ProfileBlocEvent) then) =
      _$ProfileBlocEventCopyWithImpl<$Res, ProfileBlocEvent>;
}

/// @nodoc
class _$ProfileBlocEventCopyWithImpl<$Res, $Val extends ProfileBlocEvent>
    implements $ProfileBlocEventCopyWith<$Res> {
  _$ProfileBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileBlocInitEventImplCopyWith<$Res> {
  factory _$$ProfileBlocInitEventImplCopyWith(_$ProfileBlocInitEventImpl value,
          $Res Function(_$ProfileBlocInitEventImpl) then) =
      __$$ProfileBlocInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileBlocInitEventImplCopyWithImpl<$Res>
    extends _$ProfileBlocEventCopyWithImpl<$Res, _$ProfileBlocInitEventImpl>
    implements _$$ProfileBlocInitEventImplCopyWith<$Res> {
  __$$ProfileBlocInitEventImplCopyWithImpl(_$ProfileBlocInitEventImpl _value,
      $Res Function(_$ProfileBlocInitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileBlocInitEventImpl implements _ProfileBlocInitEvent {
  _$ProfileBlocInitEventImpl();

  @override
  String toString() {
    return 'ProfileBlocEvent.initEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileBlocInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initEvent,
    required TResult Function() loadEvent,
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
  }) {
    return initEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initEvent,
    TResult? Function()? loadEvent,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
  }) {
    return initEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initEvent,
    TResult Function()? loadEvent,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (initEvent != null) {
      return initEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileBlocInitEvent value) initEvent,
    required TResult Function(_ProfileBlocLoadEvent value) loadEvent,
    required TResult Function(_ProfileBlocLogOutEvent value) logOut,
    required TResult Function(_ProfileBlocDeleteEvent value) deleteAccount,
  }) {
    return initEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileBlocInitEvent value)? initEvent,
    TResult? Function(_ProfileBlocLoadEvent value)? loadEvent,
    TResult? Function(_ProfileBlocLogOutEvent value)? logOut,
    TResult? Function(_ProfileBlocDeleteEvent value)? deleteAccount,
  }) {
    return initEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileBlocInitEvent value)? initEvent,
    TResult Function(_ProfileBlocLoadEvent value)? loadEvent,
    TResult Function(_ProfileBlocLogOutEvent value)? logOut,
    TResult Function(_ProfileBlocDeleteEvent value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (initEvent != null) {
      return initEvent(this);
    }
    return orElse();
  }
}

abstract class _ProfileBlocInitEvent implements ProfileBlocEvent {
  factory _ProfileBlocInitEvent() = _$ProfileBlocInitEventImpl;
}

/// @nodoc
abstract class _$$ProfileBlocLoadEventImplCopyWith<$Res> {
  factory _$$ProfileBlocLoadEventImplCopyWith(_$ProfileBlocLoadEventImpl value,
          $Res Function(_$ProfileBlocLoadEventImpl) then) =
      __$$ProfileBlocLoadEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileBlocLoadEventImplCopyWithImpl<$Res>
    extends _$ProfileBlocEventCopyWithImpl<$Res, _$ProfileBlocLoadEventImpl>
    implements _$$ProfileBlocLoadEventImplCopyWith<$Res> {
  __$$ProfileBlocLoadEventImplCopyWithImpl(_$ProfileBlocLoadEventImpl _value,
      $Res Function(_$ProfileBlocLoadEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileBlocLoadEventImpl implements _ProfileBlocLoadEvent {
  _$ProfileBlocLoadEventImpl();

  @override
  String toString() {
    return 'ProfileBlocEvent.loadEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileBlocLoadEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initEvent,
    required TResult Function() loadEvent,
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
  }) {
    return loadEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initEvent,
    TResult? Function()? loadEvent,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
  }) {
    return loadEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initEvent,
    TResult Function()? loadEvent,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (loadEvent != null) {
      return loadEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileBlocInitEvent value) initEvent,
    required TResult Function(_ProfileBlocLoadEvent value) loadEvent,
    required TResult Function(_ProfileBlocLogOutEvent value) logOut,
    required TResult Function(_ProfileBlocDeleteEvent value) deleteAccount,
  }) {
    return loadEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileBlocInitEvent value)? initEvent,
    TResult? Function(_ProfileBlocLoadEvent value)? loadEvent,
    TResult? Function(_ProfileBlocLogOutEvent value)? logOut,
    TResult? Function(_ProfileBlocDeleteEvent value)? deleteAccount,
  }) {
    return loadEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileBlocInitEvent value)? initEvent,
    TResult Function(_ProfileBlocLoadEvent value)? loadEvent,
    TResult Function(_ProfileBlocLogOutEvent value)? logOut,
    TResult Function(_ProfileBlocDeleteEvent value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (loadEvent != null) {
      return loadEvent(this);
    }
    return orElse();
  }
}

abstract class _ProfileBlocLoadEvent implements ProfileBlocEvent {
  factory _ProfileBlocLoadEvent() = _$ProfileBlocLoadEventImpl;
}

/// @nodoc
abstract class _$$ProfileBlocLogOutEventImplCopyWith<$Res> {
  factory _$$ProfileBlocLogOutEventImplCopyWith(
          _$ProfileBlocLogOutEventImpl value,
          $Res Function(_$ProfileBlocLogOutEventImpl) then) =
      __$$ProfileBlocLogOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileBlocLogOutEventImplCopyWithImpl<$Res>
    extends _$ProfileBlocEventCopyWithImpl<$Res, _$ProfileBlocLogOutEventImpl>
    implements _$$ProfileBlocLogOutEventImplCopyWith<$Res> {
  __$$ProfileBlocLogOutEventImplCopyWithImpl(
      _$ProfileBlocLogOutEventImpl _value,
      $Res Function(_$ProfileBlocLogOutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileBlocLogOutEventImpl implements _ProfileBlocLogOutEvent {
  _$ProfileBlocLogOutEventImpl();

  @override
  String toString() {
    return 'ProfileBlocEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileBlocLogOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initEvent,
    required TResult Function() loadEvent,
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initEvent,
    TResult? Function()? loadEvent,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initEvent,
    TResult Function()? loadEvent,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileBlocInitEvent value) initEvent,
    required TResult Function(_ProfileBlocLoadEvent value) loadEvent,
    required TResult Function(_ProfileBlocLogOutEvent value) logOut,
    required TResult Function(_ProfileBlocDeleteEvent value) deleteAccount,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileBlocInitEvent value)? initEvent,
    TResult? Function(_ProfileBlocLoadEvent value)? loadEvent,
    TResult? Function(_ProfileBlocLogOutEvent value)? logOut,
    TResult? Function(_ProfileBlocDeleteEvent value)? deleteAccount,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileBlocInitEvent value)? initEvent,
    TResult Function(_ProfileBlocLoadEvent value)? loadEvent,
    TResult Function(_ProfileBlocLogOutEvent value)? logOut,
    TResult Function(_ProfileBlocDeleteEvent value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _ProfileBlocLogOutEvent implements ProfileBlocEvent {
  factory _ProfileBlocLogOutEvent() = _$ProfileBlocLogOutEventImpl;
}

/// @nodoc
abstract class _$$ProfileBlocDeleteEventImplCopyWith<$Res> {
  factory _$$ProfileBlocDeleteEventImplCopyWith(
          _$ProfileBlocDeleteEventImpl value,
          $Res Function(_$ProfileBlocDeleteEventImpl) then) =
      __$$ProfileBlocDeleteEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileBlocDeleteEventImplCopyWithImpl<$Res>
    extends _$ProfileBlocEventCopyWithImpl<$Res, _$ProfileBlocDeleteEventImpl>
    implements _$$ProfileBlocDeleteEventImplCopyWith<$Res> {
  __$$ProfileBlocDeleteEventImplCopyWithImpl(
      _$ProfileBlocDeleteEventImpl _value,
      $Res Function(_$ProfileBlocDeleteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileBlocDeleteEventImpl implements _ProfileBlocDeleteEvent {
  _$ProfileBlocDeleteEventImpl();

  @override
  String toString() {
    return 'ProfileBlocEvent.deleteAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileBlocDeleteEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initEvent,
    required TResult Function() loadEvent,
    required TResult Function() logOut,
    required TResult Function() deleteAccount,
  }) {
    return deleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initEvent,
    TResult? Function()? loadEvent,
    TResult? Function()? logOut,
    TResult? Function()? deleteAccount,
  }) {
    return deleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initEvent,
    TResult Function()? loadEvent,
    TResult Function()? logOut,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileBlocInitEvent value) initEvent,
    required TResult Function(_ProfileBlocLoadEvent value) loadEvent,
    required TResult Function(_ProfileBlocLogOutEvent value) logOut,
    required TResult Function(_ProfileBlocDeleteEvent value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileBlocInitEvent value)? initEvent,
    TResult? Function(_ProfileBlocLoadEvent value)? loadEvent,
    TResult? Function(_ProfileBlocLogOutEvent value)? logOut,
    TResult? Function(_ProfileBlocDeleteEvent value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileBlocInitEvent value)? initEvent,
    TResult Function(_ProfileBlocLoadEvent value)? loadEvent,
    TResult Function(_ProfileBlocLogOutEvent value)? logOut,
    TResult Function(_ProfileBlocDeleteEvent value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _ProfileBlocDeleteEvent implements ProfileBlocEvent {
  factory _ProfileBlocDeleteEvent() = _$ProfileBlocDeleteEventImpl;
}
