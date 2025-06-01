// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppSettingsBlocEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettingsBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppSettingsBlocEvent()';
}


}

/// @nodoc
class $AppSettingsBlocEventCopyWith<$Res>  {
$AppSettingsBlocEventCopyWith(AppSettingsBlocEvent _, $Res Function(AppSettingsBlocEvent) __);
}


/// @nodoc


class _SetLocaleEvent implements AppSettingsBlocEvent {
   _SetLocaleEvent(this.locale);
  

 final  AppLocale locale;

/// Create a copy of AppSettingsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetLocaleEventCopyWith<_SetLocaleEvent> get copyWith => __$SetLocaleEventCopyWithImpl<_SetLocaleEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetLocaleEvent&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'AppSettingsBlocEvent.setLocale(locale: $locale)';
}


}

/// @nodoc
abstract mixin class _$SetLocaleEventCopyWith<$Res> implements $AppSettingsBlocEventCopyWith<$Res> {
  factory _$SetLocaleEventCopyWith(_SetLocaleEvent value, $Res Function(_SetLocaleEvent) _then) = __$SetLocaleEventCopyWithImpl;
@useResult
$Res call({
 AppLocale locale
});




}
/// @nodoc
class __$SetLocaleEventCopyWithImpl<$Res>
    implements _$SetLocaleEventCopyWith<$Res> {
  __$SetLocaleEventCopyWithImpl(this._self, this._then);

  final _SetLocaleEvent _self;
  final $Res Function(_SetLocaleEvent) _then;

/// Create a copy of AppSettingsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(_SetLocaleEvent(
null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocale,
  ));
}


}

/// @nodoc


class _SetThemeEvent implements AppSettingsBlocEvent {
   _SetThemeEvent(this.mode);
  

 final  ThemeMode mode;

/// Create a copy of AppSettingsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetThemeEventCopyWith<_SetThemeEvent> get copyWith => __$SetThemeEventCopyWithImpl<_SetThemeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetThemeEvent&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,mode);

@override
String toString() {
  return 'AppSettingsBlocEvent.setTheme(mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$SetThemeEventCopyWith<$Res> implements $AppSettingsBlocEventCopyWith<$Res> {
  factory _$SetThemeEventCopyWith(_SetThemeEvent value, $Res Function(_SetThemeEvent) _then) = __$SetThemeEventCopyWithImpl;
@useResult
$Res call({
 ThemeMode mode
});




}
/// @nodoc
class __$SetThemeEventCopyWithImpl<$Res>
    implements _$SetThemeEventCopyWith<$Res> {
  __$SetThemeEventCopyWithImpl(this._self, this._then);

  final _SetThemeEvent _self;
  final $Res Function(_SetThemeEvent) _then;

/// Create a copy of AppSettingsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mode = null,}) {
  return _then(_SetThemeEvent(
null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}


}

/// @nodoc
mixin _$AppSettingsBlocState {

 AppLocale get appLocale; ThemeMode get mode;
/// Create a copy of AppSettingsBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsBlocStateCopyWith<AppSettingsBlocState> get copyWith => _$AppSettingsBlocStateCopyWithImpl<AppSettingsBlocState>(this as AppSettingsBlocState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettingsBlocState&&(identical(other.appLocale, appLocale) || other.appLocale == appLocale)&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,appLocale,mode);

@override
String toString() {
  return 'AppSettingsBlocState(appLocale: $appLocale, mode: $mode)';
}


}

/// @nodoc
abstract mixin class $AppSettingsBlocStateCopyWith<$Res>  {
  factory $AppSettingsBlocStateCopyWith(AppSettingsBlocState value, $Res Function(AppSettingsBlocState) _then) = _$AppSettingsBlocStateCopyWithImpl;
@useResult
$Res call({
 AppLocale appLocale, ThemeMode mode
});




}
/// @nodoc
class _$AppSettingsBlocStateCopyWithImpl<$Res>
    implements $AppSettingsBlocStateCopyWith<$Res> {
  _$AppSettingsBlocStateCopyWithImpl(this._self, this._then);

  final AppSettingsBlocState _self;
  final $Res Function(AppSettingsBlocState) _then;

/// Create a copy of AppSettingsBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appLocale = null,Object? mode = null,}) {
  return _then(_self.copyWith(
appLocale: null == appLocale ? _self.appLocale : appLocale // ignore: cast_nullable_to_non_nullable
as AppLocale,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}

}


/// @nodoc


class _AppSettingsBlocState implements AppSettingsBlocState {
   _AppSettingsBlocState(this.appLocale, this.mode);
  

@override final  AppLocale appLocale;
@override final  ThemeMode mode;

/// Create a copy of AppSettingsBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppSettingsBlocStateCopyWith<_AppSettingsBlocState> get copyWith => __$AppSettingsBlocStateCopyWithImpl<_AppSettingsBlocState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppSettingsBlocState&&(identical(other.appLocale, appLocale) || other.appLocale == appLocale)&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,appLocale,mode);

@override
String toString() {
  return 'AppSettingsBlocState(appLocale: $appLocale, mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$AppSettingsBlocStateCopyWith<$Res> implements $AppSettingsBlocStateCopyWith<$Res> {
  factory _$AppSettingsBlocStateCopyWith(_AppSettingsBlocState value, $Res Function(_AppSettingsBlocState) _then) = __$AppSettingsBlocStateCopyWithImpl;
@override @useResult
$Res call({
 AppLocale appLocale, ThemeMode mode
});




}
/// @nodoc
class __$AppSettingsBlocStateCopyWithImpl<$Res>
    implements _$AppSettingsBlocStateCopyWith<$Res> {
  __$AppSettingsBlocStateCopyWithImpl(this._self, this._then);

  final _AppSettingsBlocState _self;
  final $Res Function(_AppSettingsBlocState) _then;

/// Create a copy of AppSettingsBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appLocale = null,Object? mode = null,}) {
  return _then(_AppSettingsBlocState(
null == appLocale ? _self.appLocale : appLocale // ignore: cast_nullable_to_non_nullable
as AppLocale,null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}


}

// dart format on
