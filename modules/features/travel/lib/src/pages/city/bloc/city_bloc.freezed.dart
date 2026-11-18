// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CityEvent {

 int get cityId;
/// Create a copy of CityEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityEventCopyWith<CityEvent> get copyWith => _$CityEventCopyWithImpl<CityEvent>(this as CityEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityEvent&&(identical(other.cityId, cityId) || other.cityId == cityId));
}


@override
int get hashCode => Object.hash(runtimeType,cityId);

@override
String toString() {
  return 'CityEvent(cityId: $cityId)';
}


}

/// @nodoc
abstract mixin class $CityEventCopyWith<$Res>  {
  factory $CityEventCopyWith(CityEvent value, $Res Function(CityEvent) _then) = _$CityEventCopyWithImpl;
@useResult
$Res call({
 int cityId
});




}
/// @nodoc
class _$CityEventCopyWithImpl<$Res>
    implements $CityEventCopyWith<$Res> {
  _$CityEventCopyWithImpl(this._self, this._then);

  final CityEvent _self;
  final $Res Function(CityEvent) _then;

/// Create a copy of CityEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cityId = null,}) {
  return _then(_self.copyWith(
cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CityEvent].
extension CityEventPatterns on CityEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Load value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Load value)  load,}){
final _that = this;
switch (_that) {
case _Load():
return load(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Load value)?  load,}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int cityId)?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that.cityId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int cityId)  load,}) {final _that = this;
switch (_that) {
case _Load():
return load(_that.cityId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int cityId)?  load,}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that.cityId);case _:
  return null;

}
}

}

/// @nodoc


class _Load implements CityEvent {
   _Load(this.cityId);
  

@override final  int cityId;

/// Create a copy of CityEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadCopyWith<_Load> get copyWith => __$LoadCopyWithImpl<_Load>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Load&&(identical(other.cityId, cityId) || other.cityId == cityId));
}


@override
int get hashCode => Object.hash(runtimeType,cityId);

@override
String toString() {
  return 'CityEvent.load(cityId: $cityId)';
}


}

/// @nodoc
abstract mixin class _$LoadCopyWith<$Res> implements $CityEventCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) _then) = __$LoadCopyWithImpl;
@override @useResult
$Res call({
 int cityId
});




}
/// @nodoc
class __$LoadCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(this._self, this._then);

  final _Load _self;
  final $Res Function(_Load) _then;

/// Create a copy of CityEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cityId = null,}) {
  return _then(_Load(
null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CityState {

 bool get isLoading; CityDetail? get city; String? get errorMessage;
/// Create a copy of CityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityStateCopyWith<CityState> get copyWith => _$CityStateCopyWithImpl<CityState>(this as CityState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.city, city) || other.city == city)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,city,errorMessage);

@override
String toString() {
  return 'CityState(isLoading: $isLoading, city: $city, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CityStateCopyWith<$Res>  {
  factory $CityStateCopyWith(CityState value, $Res Function(CityState) _then) = _$CityStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, CityDetail? city, String? errorMessage
});




}
/// @nodoc
class _$CityStateCopyWithImpl<$Res>
    implements $CityStateCopyWith<$Res> {
  _$CityStateCopyWithImpl(this._self, this._then);

  final CityState _self;
  final $Res Function(CityState) _then;

/// Create a copy of CityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? city = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityDetail?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CityState].
extension CityStatePatterns on CityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityState value)  $default,){
final _that = this;
switch (_that) {
case _CityState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityState value)?  $default,){
final _that = this;
switch (_that) {
case _CityState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  CityDetail? city,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityState() when $default != null:
return $default(_that.isLoading,_that.city,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  CityDetail? city,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CityState():
return $default(_that.isLoading,_that.city,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  CityDetail? city,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CityState() when $default != null:
return $default(_that.isLoading,_that.city,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CityState implements CityState {
   _CityState({this.isLoading = true, this.city, this.errorMessage});
  

@override@JsonKey() final  bool isLoading;
@override final  CityDetail? city;
@override final  String? errorMessage;

/// Create a copy of CityState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityStateCopyWith<_CityState> get copyWith => __$CityStateCopyWithImpl<_CityState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.city, city) || other.city == city)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,city,errorMessage);

@override
String toString() {
  return 'CityState(isLoading: $isLoading, city: $city, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CityStateCopyWith<$Res> implements $CityStateCopyWith<$Res> {
  factory _$CityStateCopyWith(_CityState value, $Res Function(_CityState) _then) = __$CityStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, CityDetail? city, String? errorMessage
});




}
/// @nodoc
class __$CityStateCopyWithImpl<$Res>
    implements _$CityStateCopyWith<$Res> {
  __$CityStateCopyWithImpl(this._self, this._then);

  final _CityState _self;
  final $Res Function(_CityState) _then;

/// Create a copy of CityState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? city = freezed,Object? errorMessage = freezed,}) {
  return _then(_CityState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityDetail?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
