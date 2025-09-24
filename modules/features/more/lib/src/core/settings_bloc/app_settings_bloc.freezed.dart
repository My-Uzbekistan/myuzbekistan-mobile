// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [AppSettingsBlocEvent].
extension AppSettingsBlocEventPatterns on AppSettingsBlocEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetLocaleEvent value)?  setLocale,TResult Function( _SetThemeEvent value)?  setTheme,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetLocaleEvent() when setLocale != null:
return setLocale(_that);case _SetThemeEvent() when setTheme != null:
return setTheme(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetLocaleEvent value)  setLocale,required TResult Function( _SetThemeEvent value)  setTheme,}){
final _that = this;
switch (_that) {
case _SetLocaleEvent():
return setLocale(_that);case _SetThemeEvent():
return setTheme(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetLocaleEvent value)?  setLocale,TResult? Function( _SetThemeEvent value)?  setTheme,}){
final _that = this;
switch (_that) {
case _SetLocaleEvent() when setLocale != null:
return setLocale(_that);case _SetThemeEvent() when setTheme != null:
return setTheme(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AppLocale locale)?  setLocale,TResult Function( ThemeMode mode)?  setTheme,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetLocaleEvent() when setLocale != null:
return setLocale(_that.locale);case _SetThemeEvent() when setTheme != null:
return setTheme(_that.mode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AppLocale locale)  setLocale,required TResult Function( ThemeMode mode)  setTheme,}) {final _that = this;
switch (_that) {
case _SetLocaleEvent():
return setLocale(_that.locale);case _SetThemeEvent():
return setTheme(_that.mode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AppLocale locale)?  setLocale,TResult? Function( ThemeMode mode)?  setTheme,}) {final _that = this;
switch (_that) {
case _SetLocaleEvent() when setLocale != null:
return setLocale(_that.locale);case _SetThemeEvent() when setTheme != null:
return setTheme(_that.mode);case _:
  return null;

}
}

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

 AppLocale? get appLocale; ThemeMode get mode;
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
 AppLocale? appLocale, ThemeMode mode
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
@pragma('vm:prefer-inline') @override $Res call({Object? appLocale = freezed,Object? mode = null,}) {
  return _then(_self.copyWith(
appLocale: freezed == appLocale ? _self.appLocale : appLocale // ignore: cast_nullable_to_non_nullable
as AppLocale?,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}

}


/// Adds pattern-matching-related methods to [AppSettingsBlocState].
extension AppSettingsBlocStatePatterns on AppSettingsBlocState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppSettingsBlocState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppSettingsBlocState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppSettingsBlocState value)  $default,){
final _that = this;
switch (_that) {
case _AppSettingsBlocState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppSettingsBlocState value)?  $default,){
final _that = this;
switch (_that) {
case _AppSettingsBlocState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppLocale? appLocale,  ThemeMode mode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppSettingsBlocState() when $default != null:
return $default(_that.appLocale,_that.mode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppLocale? appLocale,  ThemeMode mode)  $default,) {final _that = this;
switch (_that) {
case _AppSettingsBlocState():
return $default(_that.appLocale,_that.mode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppLocale? appLocale,  ThemeMode mode)?  $default,) {final _that = this;
switch (_that) {
case _AppSettingsBlocState() when $default != null:
return $default(_that.appLocale,_that.mode);case _:
  return null;

}
}

}

/// @nodoc


class _AppSettingsBlocState implements AppSettingsBlocState {
   _AppSettingsBlocState(this.appLocale, this.mode);
  

@override final  AppLocale? appLocale;
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
 AppLocale? appLocale, ThemeMode mode
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
@override @pragma('vm:prefer-inline') $Res call({Object? appLocale = freezed,Object? mode = null,}) {
  return _then(_AppSettingsBlocState(
freezed == appLocale ? _self.appLocale : appLocale // ignore: cast_nullable_to_non_nullable
as AppLocale?,null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}


}

// dart format on
