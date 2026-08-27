// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'museum_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MuseumSearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumSearchEvent()';
}


}

/// @nodoc
class $MuseumSearchEventCopyWith<$Res>  {
$MuseumSearchEventCopyWith(MuseumSearchEvent _, $Res Function(MuseumSearchEvent) __);
}


/// Adds pattern-matching-related methods to [MuseumSearchEvent].
extension MuseumSearchEventPatterns on MuseumSearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MuseumSearchLoadDataEvent value)?  loadData,TResult Function( _MuseumSearchQueryChangedEvent value)?  queryChanged,TResult Function( _MuseumSearchSelectCityEvent value)?  selectCity,TResult Function( _MuseumSearchClearHistoryEvent value)?  clearHistory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumSearchLoadDataEvent() when loadData != null:
return loadData(_that);case _MuseumSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that);case _MuseumSearchSelectCityEvent() when selectCity != null:
return selectCity(_that);case _MuseumSearchClearHistoryEvent() when clearHistory != null:
return clearHistory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MuseumSearchLoadDataEvent value)  loadData,required TResult Function( _MuseumSearchQueryChangedEvent value)  queryChanged,required TResult Function( _MuseumSearchSelectCityEvent value)  selectCity,required TResult Function( _MuseumSearchClearHistoryEvent value)  clearHistory,}){
final _that = this;
switch (_that) {
case _MuseumSearchLoadDataEvent():
return loadData(_that);case _MuseumSearchQueryChangedEvent():
return queryChanged(_that);case _MuseumSearchSelectCityEvent():
return selectCity(_that);case _MuseumSearchClearHistoryEvent():
return clearHistory(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MuseumSearchLoadDataEvent value)?  loadData,TResult? Function( _MuseumSearchQueryChangedEvent value)?  queryChanged,TResult? Function( _MuseumSearchSelectCityEvent value)?  selectCity,TResult? Function( _MuseumSearchClearHistoryEvent value)?  clearHistory,}){
final _that = this;
switch (_that) {
case _MuseumSearchLoadDataEvent() when loadData != null:
return loadData(_that);case _MuseumSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that);case _MuseumSearchSelectCityEvent() when selectCity != null:
return selectCity(_that);case _MuseumSearchClearHistoryEvent() when clearHistory != null:
return clearHistory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? query)?  loadData,TResult Function( String query)?  queryChanged,TResult Function( MuseumCity city)?  selectCity,TResult Function()?  clearHistory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumSearchLoadDataEvent() when loadData != null:
return loadData(_that.query);case _MuseumSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that.query);case _MuseumSearchSelectCityEvent() when selectCity != null:
return selectCity(_that.city);case _MuseumSearchClearHistoryEvent() when clearHistory != null:
return clearHistory();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? query)  loadData,required TResult Function( String query)  queryChanged,required TResult Function( MuseumCity city)  selectCity,required TResult Function()  clearHistory,}) {final _that = this;
switch (_that) {
case _MuseumSearchLoadDataEvent():
return loadData(_that.query);case _MuseumSearchQueryChangedEvent():
return queryChanged(_that.query);case _MuseumSearchSelectCityEvent():
return selectCity(_that.city);case _MuseumSearchClearHistoryEvent():
return clearHistory();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? query)?  loadData,TResult? Function( String query)?  queryChanged,TResult? Function( MuseumCity city)?  selectCity,TResult? Function()?  clearHistory,}) {final _that = this;
switch (_that) {
case _MuseumSearchLoadDataEvent() when loadData != null:
return loadData(_that.query);case _MuseumSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that.query);case _MuseumSearchSelectCityEvent() when selectCity != null:
return selectCity(_that.city);case _MuseumSearchClearHistoryEvent() when clearHistory != null:
return clearHistory();case _:
  return null;

}
}

}

/// @nodoc


class _MuseumSearchLoadDataEvent implements MuseumSearchEvent {
   _MuseumSearchLoadDataEvent({this.query});
  

 final  String? query;

/// Create a copy of MuseumSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumSearchLoadDataEventCopyWith<_MuseumSearchLoadDataEvent> get copyWith => __$MuseumSearchLoadDataEventCopyWithImpl<_MuseumSearchLoadDataEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumSearchLoadDataEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'MuseumSearchEvent.loadData(query: $query)';
}


}

/// @nodoc
abstract mixin class _$MuseumSearchLoadDataEventCopyWith<$Res> implements $MuseumSearchEventCopyWith<$Res> {
  factory _$MuseumSearchLoadDataEventCopyWith(_MuseumSearchLoadDataEvent value, $Res Function(_MuseumSearchLoadDataEvent) _then) = __$MuseumSearchLoadDataEventCopyWithImpl;
@useResult
$Res call({
 String? query
});




}
/// @nodoc
class __$MuseumSearchLoadDataEventCopyWithImpl<$Res>
    implements _$MuseumSearchLoadDataEventCopyWith<$Res> {
  __$MuseumSearchLoadDataEventCopyWithImpl(this._self, this._then);

  final _MuseumSearchLoadDataEvent _self;
  final $Res Function(_MuseumSearchLoadDataEvent) _then;

/// Create a copy of MuseumSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = freezed,}) {
  return _then(_MuseumSearchLoadDataEvent(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _MuseumSearchQueryChangedEvent implements MuseumSearchEvent {
   _MuseumSearchQueryChangedEvent(this.query);
  

 final  String query;

/// Create a copy of MuseumSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumSearchQueryChangedEventCopyWith<_MuseumSearchQueryChangedEvent> get copyWith => __$MuseumSearchQueryChangedEventCopyWithImpl<_MuseumSearchQueryChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumSearchQueryChangedEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'MuseumSearchEvent.queryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class _$MuseumSearchQueryChangedEventCopyWith<$Res> implements $MuseumSearchEventCopyWith<$Res> {
  factory _$MuseumSearchQueryChangedEventCopyWith(_MuseumSearchQueryChangedEvent value, $Res Function(_MuseumSearchQueryChangedEvent) _then) = __$MuseumSearchQueryChangedEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$MuseumSearchQueryChangedEventCopyWithImpl<$Res>
    implements _$MuseumSearchQueryChangedEventCopyWith<$Res> {
  __$MuseumSearchQueryChangedEventCopyWithImpl(this._self, this._then);

  final _MuseumSearchQueryChangedEvent _self;
  final $Res Function(_MuseumSearchQueryChangedEvent) _then;

/// Create a copy of MuseumSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_MuseumSearchQueryChangedEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MuseumSearchSelectCityEvent implements MuseumSearchEvent {
   _MuseumSearchSelectCityEvent({required this.city});
  

 final  MuseumCity city;

/// Create a copy of MuseumSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumSearchSelectCityEventCopyWith<_MuseumSearchSelectCityEvent> get copyWith => __$MuseumSearchSelectCityEventCopyWithImpl<_MuseumSearchSelectCityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumSearchSelectCityEvent&&(identical(other.city, city) || other.city == city));
}


@override
int get hashCode => Object.hash(runtimeType,city);

@override
String toString() {
  return 'MuseumSearchEvent.selectCity(city: $city)';
}


}

/// @nodoc
abstract mixin class _$MuseumSearchSelectCityEventCopyWith<$Res> implements $MuseumSearchEventCopyWith<$Res> {
  factory _$MuseumSearchSelectCityEventCopyWith(_MuseumSearchSelectCityEvent value, $Res Function(_MuseumSearchSelectCityEvent) _then) = __$MuseumSearchSelectCityEventCopyWithImpl;
@useResult
$Res call({
 MuseumCity city
});




}
/// @nodoc
class __$MuseumSearchSelectCityEventCopyWithImpl<$Res>
    implements _$MuseumSearchSelectCityEventCopyWith<$Res> {
  __$MuseumSearchSelectCityEventCopyWithImpl(this._self, this._then);

  final _MuseumSearchSelectCityEvent _self;
  final $Res Function(_MuseumSearchSelectCityEvent) _then;

/// Create a copy of MuseumSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? city = null,}) {
  return _then(_MuseumSearchSelectCityEvent(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as MuseumCity,
  ));
}


}

/// @nodoc


class _MuseumSearchClearHistoryEvent implements MuseumSearchEvent {
   _MuseumSearchClearHistoryEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumSearchClearHistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumSearchEvent.clearHistory()';
}


}




/// @nodoc
mixin _$MuseumSearchState {

 String get query; List<MuseumCity> get cities; List<String> get history; MuseumCity? get city; bool get isLoading; String? get errorMessage;
/// Create a copy of MuseumSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuseumSearchStateCopyWith<MuseumSearchState> get copyWith => _$MuseumSearchStateCopyWithImpl<MuseumSearchState>(this as MuseumSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumSearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.cities, cities)&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.city, city) || other.city == city)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(cities),const DeepCollectionEquality().hash(history),city,isLoading,errorMessage);

@override
String toString() {
  return 'MuseumSearchState(query: $query, cities: $cities, history: $history, city: $city, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MuseumSearchStateCopyWith<$Res>  {
  factory $MuseumSearchStateCopyWith(MuseumSearchState value, $Res Function(MuseumSearchState) _then) = _$MuseumSearchStateCopyWithImpl;
@useResult
$Res call({
 String query, List<MuseumCity> cities, List<String> history, MuseumCity? city, bool isLoading, String? errorMessage
});




}
/// @nodoc
class _$MuseumSearchStateCopyWithImpl<$Res>
    implements $MuseumSearchStateCopyWith<$Res> {
  _$MuseumSearchStateCopyWithImpl(this._self, this._then);

  final MuseumSearchState _self;
  final $Res Function(MuseumSearchState) _then;

/// Create a copy of MuseumSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? cities = null,Object? history = null,Object? city = freezed,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,cities: null == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as List<MuseumCity>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<String>,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as MuseumCity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MuseumSearchState].
extension MuseumSearchStatePatterns on MuseumSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuseumSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumSearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuseumSearchState value)  $default,){
final _that = this;
switch (_that) {
case _MuseumSearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuseumSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _MuseumSearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<MuseumCity> cities,  List<String> history,  MuseumCity? city,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumSearchState() when $default != null:
return $default(_that.query,_that.cities,_that.history,_that.city,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<MuseumCity> cities,  List<String> history,  MuseumCity? city,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MuseumSearchState():
return $default(_that.query,_that.cities,_that.history,_that.city,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<MuseumCity> cities,  List<String> history,  MuseumCity? city,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MuseumSearchState() when $default != null:
return $default(_that.query,_that.cities,_that.history,_that.city,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MuseumSearchState extends MuseumSearchState {
   _MuseumSearchState({this.query = "", final  List<MuseumCity> cities = const [], final  List<String> history = const [], this.city, this.isLoading = false, this.errorMessage}): _cities = cities,_history = history,super._();
  

@override@JsonKey() final  String query;
 final  List<MuseumCity> _cities;
@override@JsonKey() List<MuseumCity> get cities {
  if (_cities is EqualUnmodifiableListView) return _cities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cities);
}

 final  List<String> _history;
@override@JsonKey() List<String> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override final  MuseumCity? city;
@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of MuseumSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumSearchStateCopyWith<_MuseumSearchState> get copyWith => __$MuseumSearchStateCopyWithImpl<_MuseumSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumSearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._cities, _cities)&&const DeepCollectionEquality().equals(other._history, _history)&&(identical(other.city, city) || other.city == city)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_cities),const DeepCollectionEquality().hash(_history),city,isLoading,errorMessage);

@override
String toString() {
  return 'MuseumSearchState(query: $query, cities: $cities, history: $history, city: $city, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MuseumSearchStateCopyWith<$Res> implements $MuseumSearchStateCopyWith<$Res> {
  factory _$MuseumSearchStateCopyWith(_MuseumSearchState value, $Res Function(_MuseumSearchState) _then) = __$MuseumSearchStateCopyWithImpl;
@override @useResult
$Res call({
 String query, List<MuseumCity> cities, List<String> history, MuseumCity? city, bool isLoading, String? errorMessage
});




}
/// @nodoc
class __$MuseumSearchStateCopyWithImpl<$Res>
    implements _$MuseumSearchStateCopyWith<$Res> {
  __$MuseumSearchStateCopyWithImpl(this._self, this._then);

  final _MuseumSearchState _self;
  final $Res Function(_MuseumSearchState) _then;

/// Create a copy of MuseumSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? cities = null,Object? history = null,Object? city = freezed,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_MuseumSearchState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,cities: null == cities ? _self._cities : cities // ignore: cast_nullable_to_non_nullable
as List<MuseumCity>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<String>,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as MuseumCity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
