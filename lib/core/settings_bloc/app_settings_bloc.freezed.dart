// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSettingsBlocEvent {}

/// @nodoc
abstract class $AppSettingsBlocEventCopyWith<$Res> {
  factory $AppSettingsBlocEventCopyWith(AppSettingsBlocEvent value,
          $Res Function(AppSettingsBlocEvent) then) =
      _$AppSettingsBlocEventCopyWithImpl<$Res, AppSettingsBlocEvent>;
}

/// @nodoc
class _$AppSettingsBlocEventCopyWithImpl<$Res,
        $Val extends AppSettingsBlocEvent>
    implements $AppSettingsBlocEventCopyWith<$Res> {
  _$AppSettingsBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetLocaleEventImplCopyWith<$Res> {
  factory _$$SetLocaleEventImplCopyWith(_$SetLocaleEventImpl value,
          $Res Function(_$SetLocaleEventImpl) then) =
      __$$SetLocaleEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppLocale locale});
}

/// @nodoc
class __$$SetLocaleEventImplCopyWithImpl<$Res>
    extends _$AppSettingsBlocEventCopyWithImpl<$Res, _$SetLocaleEventImpl>
    implements _$$SetLocaleEventImplCopyWith<$Res> {
  __$$SetLocaleEventImplCopyWithImpl(
      _$SetLocaleEventImpl _value, $Res Function(_$SetLocaleEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$SetLocaleEventImpl(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
    ));
  }
}

/// @nodoc

class _$SetLocaleEventImpl implements _SetLocaleEvent {
  _$SetLocaleEventImpl(this.locale);

  @override
  final AppLocale locale;

  @override
  String toString() {
    return 'AppSettingsBlocEvent.setLocale(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLocaleEventImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  /// Create a copy of AppSettingsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLocaleEventImplCopyWith<_$SetLocaleEventImpl> get copyWith =>
      __$$SetLocaleEventImplCopyWithImpl<_$SetLocaleEventImpl>(
          this, _$identity);
}

abstract class _SetLocaleEvent implements AppSettingsBlocEvent {
  factory _SetLocaleEvent(final AppLocale locale) = _$SetLocaleEventImpl;

  AppLocale get locale;

  /// Create a copy of AppSettingsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetLocaleEventImplCopyWith<_$SetLocaleEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetThemeEventImplCopyWith<$Res> {
  factory _$$SetThemeEventImplCopyWith(
          _$SetThemeEventImpl value, $Res Function(_$SetThemeEventImpl) then) =
      __$$SetThemeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$$SetThemeEventImplCopyWithImpl<$Res>
    extends _$AppSettingsBlocEventCopyWithImpl<$Res, _$SetThemeEventImpl>
    implements _$$SetThemeEventImplCopyWith<$Res> {
  __$$SetThemeEventImplCopyWithImpl(
      _$SetThemeEventImpl _value, $Res Function(_$SetThemeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$SetThemeEventImpl(
      null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$SetThemeEventImpl implements _SetThemeEvent {
  _$SetThemeEventImpl(this.mode);

  @override
  final ThemeMode mode;

  @override
  String toString() {
    return 'AppSettingsBlocEvent.setTheme(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetThemeEventImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  /// Create a copy of AppSettingsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetThemeEventImplCopyWith<_$SetThemeEventImpl> get copyWith =>
      __$$SetThemeEventImplCopyWithImpl<_$SetThemeEventImpl>(this, _$identity);
}

abstract class _SetThemeEvent implements AppSettingsBlocEvent {
  factory _SetThemeEvent(final ThemeMode mode) = _$SetThemeEventImpl;

  ThemeMode get mode;

  /// Create a copy of AppSettingsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetThemeEventImplCopyWith<_$SetThemeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppSettingsBlocState {
  AppLocale get appLocale => throw _privateConstructorUsedError;
  ThemeMode get mode => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsBlocStateCopyWith<AppSettingsBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsBlocStateCopyWith<$Res> {
  factory $AppSettingsBlocStateCopyWith(AppSettingsBlocState value,
          $Res Function(AppSettingsBlocState) then) =
      _$AppSettingsBlocStateCopyWithImpl<$Res, AppSettingsBlocState>;
  @useResult
  $Res call({AppLocale appLocale, ThemeMode mode});
}

/// @nodoc
class _$AppSettingsBlocStateCopyWithImpl<$Res,
        $Val extends AppSettingsBlocState>
    implements $AppSettingsBlocStateCopyWith<$Res> {
  _$AppSettingsBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLocale = null,
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      appLocale: null == appLocale
          ? _value.appLocale
          : appLocale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsBlocStateImplCopyWith<$Res>
    implements $AppSettingsBlocStateCopyWith<$Res> {
  factory _$$AppSettingsBlocStateImplCopyWith(_$AppSettingsBlocStateImpl value,
          $Res Function(_$AppSettingsBlocStateImpl) then) =
      __$$AppSettingsBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppLocale appLocale, ThemeMode mode});
}

/// @nodoc
class __$$AppSettingsBlocStateImplCopyWithImpl<$Res>
    extends _$AppSettingsBlocStateCopyWithImpl<$Res, _$AppSettingsBlocStateImpl>
    implements _$$AppSettingsBlocStateImplCopyWith<$Res> {
  __$$AppSettingsBlocStateImplCopyWithImpl(_$AppSettingsBlocStateImpl _value,
      $Res Function(_$AppSettingsBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLocale = null,
    Object? mode = null,
  }) {
    return _then(_$AppSettingsBlocStateImpl(
      null == appLocale
          ? _value.appLocale
          : appLocale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
      null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$AppSettingsBlocStateImpl implements _AppSettingsBlocState {
  _$AppSettingsBlocStateImpl(this.appLocale, this.mode);

  @override
  final AppLocale appLocale;
  @override
  final ThemeMode mode;

  @override
  String toString() {
    return 'AppSettingsBlocState(appLocale: $appLocale, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsBlocStateImpl &&
            (identical(other.appLocale, appLocale) ||
                other.appLocale == appLocale) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appLocale, mode);

  /// Create a copy of AppSettingsBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsBlocStateImplCopyWith<_$AppSettingsBlocStateImpl>
      get copyWith =>
          __$$AppSettingsBlocStateImplCopyWithImpl<_$AppSettingsBlocStateImpl>(
              this, _$identity);
}

abstract class _AppSettingsBlocState implements AppSettingsBlocState {
  factory _AppSettingsBlocState(
          final AppLocale appLocale, final ThemeMode mode) =
      _$AppSettingsBlocStateImpl;

  @override
  AppLocale get appLocale;
  @override
  ThemeMode get mode;

  /// Create a copy of AppSettingsBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsBlocStateImplCopyWith<_$AppSettingsBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
