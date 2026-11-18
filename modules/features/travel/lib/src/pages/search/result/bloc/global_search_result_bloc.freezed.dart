// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_search_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GlobalSearchResultEvent {

 String get query;
/// Create a copy of GlobalSearchResultEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlobalSearchResultEventCopyWith<GlobalSearchResultEvent> get copyWith => _$GlobalSearchResultEventCopyWithImpl<GlobalSearchResultEvent>(this as GlobalSearchResultEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalSearchResultEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'GlobalSearchResultEvent(query: $query)';
}


}

/// @nodoc
abstract mixin class $GlobalSearchResultEventCopyWith<$Res>  {
  factory $GlobalSearchResultEventCopyWith(GlobalSearchResultEvent value, $Res Function(GlobalSearchResultEvent) _then) = _$GlobalSearchResultEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$GlobalSearchResultEventCopyWithImpl<$Res>
    implements $GlobalSearchResultEventCopyWith<$Res> {
  _$GlobalSearchResultEventCopyWithImpl(this._self, this._then);

  final GlobalSearchResultEvent _self;
  final $Res Function(GlobalSearchResultEvent) _then;

/// Create a copy of GlobalSearchResultEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GlobalSearchResultEvent].
extension GlobalSearchResultEventPatterns on GlobalSearchResultEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GlobalSearchResultLoadDataEvent value)?  loadData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GlobalSearchResultLoadDataEvent() when loadData != null:
return loadData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GlobalSearchResultLoadDataEvent value)  loadData,}){
final _that = this;
switch (_that) {
case _GlobalSearchResultLoadDataEvent():
return loadData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GlobalSearchResultLoadDataEvent value)?  loadData,}){
final _that = this;
switch (_that) {
case _GlobalSearchResultLoadDataEvent() when loadData != null:
return loadData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  loadData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GlobalSearchResultLoadDataEvent() when loadData != null:
return loadData(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  loadData,}) {final _that = this;
switch (_that) {
case _GlobalSearchResultLoadDataEvent():
return loadData(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  loadData,}) {final _that = this;
switch (_that) {
case _GlobalSearchResultLoadDataEvent() when loadData != null:
return loadData(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _GlobalSearchResultLoadDataEvent implements GlobalSearchResultEvent {
   _GlobalSearchResultLoadDataEvent({required this.query});
  

@override final  String query;

/// Create a copy of GlobalSearchResultEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalSearchResultLoadDataEventCopyWith<_GlobalSearchResultLoadDataEvent> get copyWith => __$GlobalSearchResultLoadDataEventCopyWithImpl<_GlobalSearchResultLoadDataEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalSearchResultLoadDataEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'GlobalSearchResultEvent.loadData(query: $query)';
}


}

/// @nodoc
abstract mixin class _$GlobalSearchResultLoadDataEventCopyWith<$Res> implements $GlobalSearchResultEventCopyWith<$Res> {
  factory _$GlobalSearchResultLoadDataEventCopyWith(_GlobalSearchResultLoadDataEvent value, $Res Function(_GlobalSearchResultLoadDataEvent) _then) = __$GlobalSearchResultLoadDataEventCopyWithImpl;
@override @useResult
$Res call({
 String query
});




}
/// @nodoc
class __$GlobalSearchResultLoadDataEventCopyWithImpl<$Res>
    implements _$GlobalSearchResultLoadDataEventCopyWith<$Res> {
  __$GlobalSearchResultLoadDataEventCopyWithImpl(this._self, this._then);

  final _GlobalSearchResultLoadDataEvent _self;
  final $Res Function(_GlobalSearchResultLoadDataEvent) _then;

/// Create a copy of GlobalSearchResultEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_GlobalSearchResultLoadDataEvent(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GlobalSearchResultState {

 String get query; bool get isLoading; SearchResult? get result; String? get errorMessage;
/// Create a copy of GlobalSearchResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlobalSearchResultStateCopyWith<GlobalSearchResultState> get copyWith => _$GlobalSearchResultStateCopyWithImpl<GlobalSearchResultState>(this as GlobalSearchResultState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalSearchResultState&&(identical(other.query, query) || other.query == query)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.result, result) || other.result == result)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,query,isLoading,result,errorMessage);

@override
String toString() {
  return 'GlobalSearchResultState(query: $query, isLoading: $isLoading, result: $result, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $GlobalSearchResultStateCopyWith<$Res>  {
  factory $GlobalSearchResultStateCopyWith(GlobalSearchResultState value, $Res Function(GlobalSearchResultState) _then) = _$GlobalSearchResultStateCopyWithImpl;
@useResult
$Res call({
 String query, bool isLoading, SearchResult? result, String? errorMessage
});




}
/// @nodoc
class _$GlobalSearchResultStateCopyWithImpl<$Res>
    implements $GlobalSearchResultStateCopyWith<$Res> {
  _$GlobalSearchResultStateCopyWithImpl(this._self, this._then);

  final GlobalSearchResultState _self;
  final $Res Function(GlobalSearchResultState) _then;

/// Create a copy of GlobalSearchResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? isLoading = null,Object? result = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as SearchResult?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GlobalSearchResultState].
extension GlobalSearchResultStatePatterns on GlobalSearchResultState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GlobalSearchResultState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GlobalSearchResultState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GlobalSearchResultState value)  $default,){
final _that = this;
switch (_that) {
case _GlobalSearchResultState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GlobalSearchResultState value)?  $default,){
final _that = this;
switch (_that) {
case _GlobalSearchResultState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  bool isLoading,  SearchResult? result,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GlobalSearchResultState() when $default != null:
return $default(_that.query,_that.isLoading,_that.result,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  bool isLoading,  SearchResult? result,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _GlobalSearchResultState():
return $default(_that.query,_that.isLoading,_that.result,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  bool isLoading,  SearchResult? result,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _GlobalSearchResultState() when $default != null:
return $default(_that.query,_that.isLoading,_that.result,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _GlobalSearchResultState extends GlobalSearchResultState {
   _GlobalSearchResultState({this.query = "", this.isLoading = false, this.result, this.errorMessage}): super._();
  

@override@JsonKey() final  String query;
@override@JsonKey() final  bool isLoading;
@override final  SearchResult? result;
@override final  String? errorMessage;

/// Create a copy of GlobalSearchResultState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalSearchResultStateCopyWith<_GlobalSearchResultState> get copyWith => __$GlobalSearchResultStateCopyWithImpl<_GlobalSearchResultState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalSearchResultState&&(identical(other.query, query) || other.query == query)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.result, result) || other.result == result)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,query,isLoading,result,errorMessage);

@override
String toString() {
  return 'GlobalSearchResultState(query: $query, isLoading: $isLoading, result: $result, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$GlobalSearchResultStateCopyWith<$Res> implements $GlobalSearchResultStateCopyWith<$Res> {
  factory _$GlobalSearchResultStateCopyWith(_GlobalSearchResultState value, $Res Function(_GlobalSearchResultState) _then) = __$GlobalSearchResultStateCopyWithImpl;
@override @useResult
$Res call({
 String query, bool isLoading, SearchResult? result, String? errorMessage
});




}
/// @nodoc
class __$GlobalSearchResultStateCopyWithImpl<$Res>
    implements _$GlobalSearchResultStateCopyWith<$Res> {
  __$GlobalSearchResultStateCopyWithImpl(this._self, this._then);

  final _GlobalSearchResultState _self;
  final $Res Function(_GlobalSearchResultState) _then;

/// Create a copy of GlobalSearchResultState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? isLoading = null,Object? result = freezed,Object? errorMessage = freezed,}) {
  return _then(_GlobalSearchResultState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as SearchResult?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
