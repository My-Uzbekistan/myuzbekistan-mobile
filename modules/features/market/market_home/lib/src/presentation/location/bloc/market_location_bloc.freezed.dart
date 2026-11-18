// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketLocationEvent {

 int? get selectedCityId;
/// Create a copy of MarketLocationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketLocationEventCopyWith<MarketLocationEvent> get copyWith => _$MarketLocationEventCopyWithImpl<MarketLocationEvent>(this as MarketLocationEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketLocationEvent&&(identical(other.selectedCityId, selectedCityId) || other.selectedCityId == selectedCityId));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCityId);

@override
String toString() {
  return 'MarketLocationEvent(selectedCityId: $selectedCityId)';
}


}

/// @nodoc
abstract mixin class $MarketLocationEventCopyWith<$Res>  {
  factory $MarketLocationEventCopyWith(MarketLocationEvent value, $Res Function(MarketLocationEvent) _then) = _$MarketLocationEventCopyWithImpl;
@useResult
$Res call({
 int? selectedCityId
});




}
/// @nodoc
class _$MarketLocationEventCopyWithImpl<$Res>
    implements $MarketLocationEventCopyWith<$Res> {
  _$MarketLocationEventCopyWithImpl(this._self, this._then);

  final MarketLocationEvent _self;
  final $Res Function(MarketLocationEvent) _then;

/// Create a copy of MarketLocationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedCityId = freezed,}) {
  return _then(_self.copyWith(
selectedCityId: freezed == selectedCityId ? _self.selectedCityId : selectedCityId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketLocationEvent].
extension MarketLocationEventPatterns on MarketLocationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MarketLocationStartEvent value)?  start,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketLocationStartEvent() when start != null:
return start(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MarketLocationStartEvent value)  start,}){
final _that = this;
switch (_that) {
case _MarketLocationStartEvent():
return start(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MarketLocationStartEvent value)?  start,}){
final _that = this;
switch (_that) {
case _MarketLocationStartEvent() when start != null:
return start(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? selectedCityId)?  start,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketLocationStartEvent() when start != null:
return start(_that.selectedCityId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? selectedCityId)  start,}) {final _that = this;
switch (_that) {
case _MarketLocationStartEvent():
return start(_that.selectedCityId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? selectedCityId)?  start,}) {final _that = this;
switch (_that) {
case _MarketLocationStartEvent() when start != null:
return start(_that.selectedCityId);case _:
  return null;

}
}

}

/// @nodoc


class _MarketLocationStartEvent implements MarketLocationEvent {
   _MarketLocationStartEvent({this.selectedCityId});
  

@override final  int? selectedCityId;

/// Create a copy of MarketLocationEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketLocationStartEventCopyWith<_MarketLocationStartEvent> get copyWith => __$MarketLocationStartEventCopyWithImpl<_MarketLocationStartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketLocationStartEvent&&(identical(other.selectedCityId, selectedCityId) || other.selectedCityId == selectedCityId));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCityId);

@override
String toString() {
  return 'MarketLocationEvent.start(selectedCityId: $selectedCityId)';
}


}

/// @nodoc
abstract mixin class _$MarketLocationStartEventCopyWith<$Res> implements $MarketLocationEventCopyWith<$Res> {
  factory _$MarketLocationStartEventCopyWith(_MarketLocationStartEvent value, $Res Function(_MarketLocationStartEvent) _then) = __$MarketLocationStartEventCopyWithImpl;
@override @useResult
$Res call({
 int? selectedCityId
});




}
/// @nodoc
class __$MarketLocationStartEventCopyWithImpl<$Res>
    implements _$MarketLocationStartEventCopyWith<$Res> {
  __$MarketLocationStartEventCopyWithImpl(this._self, this._then);

  final _MarketLocationStartEvent _self;
  final $Res Function(_MarketLocationStartEvent) _then;

/// Create a copy of MarketLocationEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedCityId = freezed,}) {
  return _then(_MarketLocationStartEvent(
selectedCityId: freezed == selectedCityId ? _self.selectedCityId : selectedCityId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$MarketLocationState {

 int? get selectedCityId; List<MarketCity> get cities; bool get isLoading; bool get loadFailed; String? get errorMessage;
/// Create a copy of MarketLocationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketLocationStateCopyWith<MarketLocationState> get copyWith => _$MarketLocationStateCopyWithImpl<MarketLocationState>(this as MarketLocationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketLocationState&&(identical(other.selectedCityId, selectedCityId) || other.selectedCityId == selectedCityId)&&const DeepCollectionEquality().equals(other.cities, cities)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCityId,const DeepCollectionEquality().hash(cities),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MarketLocationState(selectedCityId: $selectedCityId, cities: $cities, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MarketLocationStateCopyWith<$Res>  {
  factory $MarketLocationStateCopyWith(MarketLocationState value, $Res Function(MarketLocationState) _then) = _$MarketLocationStateCopyWithImpl;
@useResult
$Res call({
 int? selectedCityId, List<MarketCity> cities, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$MarketLocationStateCopyWithImpl<$Res>
    implements $MarketLocationStateCopyWith<$Res> {
  _$MarketLocationStateCopyWithImpl(this._self, this._then);

  final MarketLocationState _self;
  final $Res Function(MarketLocationState) _then;

/// Create a copy of MarketLocationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedCityId = freezed,Object? cities = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
selectedCityId: freezed == selectedCityId ? _self.selectedCityId : selectedCityId // ignore: cast_nullable_to_non_nullable
as int?,cities: null == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as List<MarketCity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketLocationState].
extension MarketLocationStatePatterns on MarketLocationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketLocationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketLocationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketLocationState value)  $default,){
final _that = this;
switch (_that) {
case _MarketLocationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketLocationState value)?  $default,){
final _that = this;
switch (_that) {
case _MarketLocationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? selectedCityId,  List<MarketCity> cities,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketLocationState() when $default != null:
return $default(_that.selectedCityId,_that.cities,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? selectedCityId,  List<MarketCity> cities,  bool isLoading,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MarketLocationState():
return $default(_that.selectedCityId,_that.cities,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? selectedCityId,  List<MarketCity> cities,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MarketLocationState() when $default != null:
return $default(_that.selectedCityId,_that.cities,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MarketLocationState implements MarketLocationState {
   _MarketLocationState({this.selectedCityId, final  List<MarketCity> cities = const [], this.isLoading = false, this.loadFailed = false, this.errorMessage}): _cities = cities;
  

@override final  int? selectedCityId;
 final  List<MarketCity> _cities;
@override@JsonKey() List<MarketCity> get cities {
  if (_cities is EqualUnmodifiableListView) return _cities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cities);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of MarketLocationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketLocationStateCopyWith<_MarketLocationState> get copyWith => __$MarketLocationStateCopyWithImpl<_MarketLocationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketLocationState&&(identical(other.selectedCityId, selectedCityId) || other.selectedCityId == selectedCityId)&&const DeepCollectionEquality().equals(other._cities, _cities)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCityId,const DeepCollectionEquality().hash(_cities),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MarketLocationState(selectedCityId: $selectedCityId, cities: $cities, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MarketLocationStateCopyWith<$Res> implements $MarketLocationStateCopyWith<$Res> {
  factory _$MarketLocationStateCopyWith(_MarketLocationState value, $Res Function(_MarketLocationState) _then) = __$MarketLocationStateCopyWithImpl;
@override @useResult
$Res call({
 int? selectedCityId, List<MarketCity> cities, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$MarketLocationStateCopyWithImpl<$Res>
    implements _$MarketLocationStateCopyWith<$Res> {
  __$MarketLocationStateCopyWithImpl(this._self, this._then);

  final _MarketLocationState _self;
  final $Res Function(_MarketLocationState) _then;

/// Create a copy of MarketLocationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedCityId = freezed,Object? cities = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_MarketLocationState(
selectedCityId: freezed == selectedCityId ? _self.selectedCityId : selectedCityId // ignore: cast_nullable_to_non_nullable
as int?,cities: null == cities ? _self._cities : cities // ignore: cast_nullable_to_non_nullable
as List<MarketCity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
