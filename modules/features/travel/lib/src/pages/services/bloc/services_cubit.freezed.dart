// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServicesState {

 List<CatalogItemModel> get services; bool get isLoading; String? get errorMessage;
/// Create a copy of ServicesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServicesStateCopyWith<ServicesState> get copyWith => _$ServicesStateCopyWithImpl<ServicesState>(this as ServicesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServicesState&&const DeepCollectionEquality().equals(other.services, services)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(services),isLoading,errorMessage);

@override
String toString() {
  return 'ServicesState(services: $services, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ServicesStateCopyWith<$Res>  {
  factory $ServicesStateCopyWith(ServicesState value, $Res Function(ServicesState) _then) = _$ServicesStateCopyWithImpl;
@useResult
$Res call({
 List<CatalogItemModel> services, bool isLoading, String? errorMessage
});




}
/// @nodoc
class _$ServicesStateCopyWithImpl<$Res>
    implements $ServicesStateCopyWith<$Res> {
  _$ServicesStateCopyWithImpl(this._self, this._then);

  final ServicesState _self;
  final $Res Function(ServicesState) _then;

/// Create a copy of ServicesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? services = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<CatalogItemModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ServicesState].
extension ServicesStatePatterns on ServicesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServicesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServicesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServicesState value)  $default,){
final _that = this;
switch (_that) {
case _ServicesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServicesState value)?  $default,){
final _that = this;
switch (_that) {
case _ServicesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CatalogItemModel> services,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServicesState() when $default != null:
return $default(_that.services,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CatalogItemModel> services,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ServicesState():
return $default(_that.services,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CatalogItemModel> services,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ServicesState() when $default != null:
return $default(_that.services,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ServicesState implements ServicesState {
  const _ServicesState({final  List<CatalogItemModel> services = const <CatalogItemModel>[], this.isLoading = true, this.errorMessage}): _services = services;
  

 final  List<CatalogItemModel> _services;
@override@JsonKey() List<CatalogItemModel> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of ServicesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServicesStateCopyWith<_ServicesState> get copyWith => __$ServicesStateCopyWithImpl<_ServicesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServicesState&&const DeepCollectionEquality().equals(other._services, _services)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_services),isLoading,errorMessage);

@override
String toString() {
  return 'ServicesState(services: $services, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ServicesStateCopyWith<$Res> implements $ServicesStateCopyWith<$Res> {
  factory _$ServicesStateCopyWith(_ServicesState value, $Res Function(_ServicesState) _then) = __$ServicesStateCopyWithImpl;
@override @useResult
$Res call({
 List<CatalogItemModel> services, bool isLoading, String? errorMessage
});




}
/// @nodoc
class __$ServicesStateCopyWithImpl<$Res>
    implements _$ServicesStateCopyWith<$Res> {
  __$ServicesStateCopyWithImpl(this._self, this._then);

  final _ServicesState _self;
  final $Res Function(_ServicesState) _then;

/// Create a copy of ServicesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? services = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_ServicesState(
services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<CatalogItemModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
