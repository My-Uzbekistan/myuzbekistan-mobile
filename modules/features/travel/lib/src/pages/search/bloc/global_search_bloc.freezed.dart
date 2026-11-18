// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GlobalSearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GlobalSearchEvent()';
}


}

/// @nodoc
class $GlobalSearchEventCopyWith<$Res>  {
$GlobalSearchEventCopyWith(GlobalSearchEvent _, $Res Function(GlobalSearchEvent) __);
}


/// Adds pattern-matching-related methods to [GlobalSearchEvent].
extension GlobalSearchEventPatterns on GlobalSearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GlobalSearchLoadDataEvent value)?  loadData,TResult Function( _GlobalSearchQueryChangedEvent value)?  queryChanged,TResult Function( _GlobalSearchSuggestEvent value)?  suggest,TResult Function( _GlobalSearchClearHistoryEvent value)?  clearHistory,TResult Function( _GlobalSearchRemoveHistoryEvent value)?  removeHistory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GlobalSearchLoadDataEvent() when loadData != null:
return loadData(_that);case _GlobalSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that);case _GlobalSearchSuggestEvent() when suggest != null:
return suggest(_that);case _GlobalSearchClearHistoryEvent() when clearHistory != null:
return clearHistory(_that);case _GlobalSearchRemoveHistoryEvent() when removeHistory != null:
return removeHistory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GlobalSearchLoadDataEvent value)  loadData,required TResult Function( _GlobalSearchQueryChangedEvent value)  queryChanged,required TResult Function( _GlobalSearchSuggestEvent value)  suggest,required TResult Function( _GlobalSearchClearHistoryEvent value)  clearHistory,required TResult Function( _GlobalSearchRemoveHistoryEvent value)  removeHistory,}){
final _that = this;
switch (_that) {
case _GlobalSearchLoadDataEvent():
return loadData(_that);case _GlobalSearchQueryChangedEvent():
return queryChanged(_that);case _GlobalSearchSuggestEvent():
return suggest(_that);case _GlobalSearchClearHistoryEvent():
return clearHistory(_that);case _GlobalSearchRemoveHistoryEvent():
return removeHistory(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GlobalSearchLoadDataEvent value)?  loadData,TResult? Function( _GlobalSearchQueryChangedEvent value)?  queryChanged,TResult? Function( _GlobalSearchSuggestEvent value)?  suggest,TResult? Function( _GlobalSearchClearHistoryEvent value)?  clearHistory,TResult? Function( _GlobalSearchRemoveHistoryEvent value)?  removeHistory,}){
final _that = this;
switch (_that) {
case _GlobalSearchLoadDataEvent() when loadData != null:
return loadData(_that);case _GlobalSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that);case _GlobalSearchSuggestEvent() when suggest != null:
return suggest(_that);case _GlobalSearchClearHistoryEvent() when clearHistory != null:
return clearHistory(_that);case _GlobalSearchRemoveHistoryEvent() when removeHistory != null:
return removeHistory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? query)?  loadData,TResult Function( String query)?  queryChanged,TResult Function()?  suggest,TResult Function()?  clearHistory,TResult Function( int historyId)?  removeHistory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GlobalSearchLoadDataEvent() when loadData != null:
return loadData(_that.query);case _GlobalSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that.query);case _GlobalSearchSuggestEvent() when suggest != null:
return suggest();case _GlobalSearchClearHistoryEvent() when clearHistory != null:
return clearHistory();case _GlobalSearchRemoveHistoryEvent() when removeHistory != null:
return removeHistory(_that.historyId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? query)  loadData,required TResult Function( String query)  queryChanged,required TResult Function()  suggest,required TResult Function()  clearHistory,required TResult Function( int historyId)  removeHistory,}) {final _that = this;
switch (_that) {
case _GlobalSearchLoadDataEvent():
return loadData(_that.query);case _GlobalSearchQueryChangedEvent():
return queryChanged(_that.query);case _GlobalSearchSuggestEvent():
return suggest();case _GlobalSearchClearHistoryEvent():
return clearHistory();case _GlobalSearchRemoveHistoryEvent():
return removeHistory(_that.historyId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? query)?  loadData,TResult? Function( String query)?  queryChanged,TResult? Function()?  suggest,TResult? Function()?  clearHistory,TResult? Function( int historyId)?  removeHistory,}) {final _that = this;
switch (_that) {
case _GlobalSearchLoadDataEvent() when loadData != null:
return loadData(_that.query);case _GlobalSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that.query);case _GlobalSearchSuggestEvent() when suggest != null:
return suggest();case _GlobalSearchClearHistoryEvent() when clearHistory != null:
return clearHistory();case _GlobalSearchRemoveHistoryEvent() when removeHistory != null:
return removeHistory(_that.historyId);case _:
  return null;

}
}

}

/// @nodoc


class _GlobalSearchLoadDataEvent implements GlobalSearchEvent {
   _GlobalSearchLoadDataEvent({this.query});
  

 final  String? query;

/// Create a copy of GlobalSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalSearchLoadDataEventCopyWith<_GlobalSearchLoadDataEvent> get copyWith => __$GlobalSearchLoadDataEventCopyWithImpl<_GlobalSearchLoadDataEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalSearchLoadDataEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'GlobalSearchEvent.loadData(query: $query)';
}


}

/// @nodoc
abstract mixin class _$GlobalSearchLoadDataEventCopyWith<$Res> implements $GlobalSearchEventCopyWith<$Res> {
  factory _$GlobalSearchLoadDataEventCopyWith(_GlobalSearchLoadDataEvent value, $Res Function(_GlobalSearchLoadDataEvent) _then) = __$GlobalSearchLoadDataEventCopyWithImpl;
@useResult
$Res call({
 String? query
});




}
/// @nodoc
class __$GlobalSearchLoadDataEventCopyWithImpl<$Res>
    implements _$GlobalSearchLoadDataEventCopyWith<$Res> {
  __$GlobalSearchLoadDataEventCopyWithImpl(this._self, this._then);

  final _GlobalSearchLoadDataEvent _self;
  final $Res Function(_GlobalSearchLoadDataEvent) _then;

/// Create a copy of GlobalSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = freezed,}) {
  return _then(_GlobalSearchLoadDataEvent(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _GlobalSearchQueryChangedEvent implements GlobalSearchEvent {
   _GlobalSearchQueryChangedEvent(this.query);
  

 final  String query;

/// Create a copy of GlobalSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalSearchQueryChangedEventCopyWith<_GlobalSearchQueryChangedEvent> get copyWith => __$GlobalSearchQueryChangedEventCopyWithImpl<_GlobalSearchQueryChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalSearchQueryChangedEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'GlobalSearchEvent.queryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class _$GlobalSearchQueryChangedEventCopyWith<$Res> implements $GlobalSearchEventCopyWith<$Res> {
  factory _$GlobalSearchQueryChangedEventCopyWith(_GlobalSearchQueryChangedEvent value, $Res Function(_GlobalSearchQueryChangedEvent) _then) = __$GlobalSearchQueryChangedEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$GlobalSearchQueryChangedEventCopyWithImpl<$Res>
    implements _$GlobalSearchQueryChangedEventCopyWith<$Res> {
  __$GlobalSearchQueryChangedEventCopyWithImpl(this._self, this._then);

  final _GlobalSearchQueryChangedEvent _self;
  final $Res Function(_GlobalSearchQueryChangedEvent) _then;

/// Create a copy of GlobalSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_GlobalSearchQueryChangedEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GlobalSearchSuggestEvent implements GlobalSearchEvent {
   _GlobalSearchSuggestEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalSearchSuggestEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GlobalSearchEvent.suggest()';
}


}




/// @nodoc


class _GlobalSearchClearHistoryEvent implements GlobalSearchEvent {
   _GlobalSearchClearHistoryEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalSearchClearHistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GlobalSearchEvent.clearHistory()';
}


}




/// @nodoc


class _GlobalSearchRemoveHistoryEvent implements GlobalSearchEvent {
   _GlobalSearchRemoveHistoryEvent({required this.historyId});
  

 final  int historyId;

/// Create a copy of GlobalSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalSearchRemoveHistoryEventCopyWith<_GlobalSearchRemoveHistoryEvent> get copyWith => __$GlobalSearchRemoveHistoryEventCopyWithImpl<_GlobalSearchRemoveHistoryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalSearchRemoveHistoryEvent&&(identical(other.historyId, historyId) || other.historyId == historyId));
}


@override
int get hashCode => Object.hash(runtimeType,historyId);

@override
String toString() {
  return 'GlobalSearchEvent.removeHistory(historyId: $historyId)';
}


}

/// @nodoc
abstract mixin class _$GlobalSearchRemoveHistoryEventCopyWith<$Res> implements $GlobalSearchEventCopyWith<$Res> {
  factory _$GlobalSearchRemoveHistoryEventCopyWith(_GlobalSearchRemoveHistoryEvent value, $Res Function(_GlobalSearchRemoveHistoryEvent) _then) = __$GlobalSearchRemoveHistoryEventCopyWithImpl;
@useResult
$Res call({
 int historyId
});




}
/// @nodoc
class __$GlobalSearchRemoveHistoryEventCopyWithImpl<$Res>
    implements _$GlobalSearchRemoveHistoryEventCopyWith<$Res> {
  __$GlobalSearchRemoveHistoryEventCopyWithImpl(this._self, this._then);

  final _GlobalSearchRemoveHistoryEvent _self;
  final $Res Function(_GlobalSearchRemoveHistoryEvent) _then;

/// Create a copy of GlobalSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? historyId = null,}) {
  return _then(_GlobalSearchRemoveHistoryEvent(
historyId: null == historyId ? _self.historyId : historyId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$GlobalSearchState {

 String get query; List<String> get popular; List<SearchHistoryItem> get history; List<SearchSuggestion> get suggestions; bool get isLoading; String? get errorMessage;
/// Create a copy of GlobalSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlobalSearchStateCopyWith<GlobalSearchState> get copyWith => _$GlobalSearchStateCopyWithImpl<GlobalSearchState>(this as GlobalSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalSearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.popular, popular)&&const DeepCollectionEquality().equals(other.history, history)&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(popular),const DeepCollectionEquality().hash(history),const DeepCollectionEquality().hash(suggestions),isLoading,errorMessage);

@override
String toString() {
  return 'GlobalSearchState(query: $query, popular: $popular, history: $history, suggestions: $suggestions, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $GlobalSearchStateCopyWith<$Res>  {
  factory $GlobalSearchStateCopyWith(GlobalSearchState value, $Res Function(GlobalSearchState) _then) = _$GlobalSearchStateCopyWithImpl;
@useResult
$Res call({
 String query, List<String> popular, List<SearchHistoryItem> history, List<SearchSuggestion> suggestions, bool isLoading, String? errorMessage
});




}
/// @nodoc
class _$GlobalSearchStateCopyWithImpl<$Res>
    implements $GlobalSearchStateCopyWith<$Res> {
  _$GlobalSearchStateCopyWithImpl(this._self, this._then);

  final GlobalSearchState _self;
  final $Res Function(GlobalSearchState) _then;

/// Create a copy of GlobalSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? popular = null,Object? history = null,Object? suggestions = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,popular: null == popular ? _self.popular : popular // ignore: cast_nullable_to_non_nullable
as List<String>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<SearchHistoryItem>,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<SearchSuggestion>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GlobalSearchState].
extension GlobalSearchStatePatterns on GlobalSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GlobalSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GlobalSearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GlobalSearchState value)  $default,){
final _that = this;
switch (_that) {
case _GlobalSearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GlobalSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _GlobalSearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<String> popular,  List<SearchHistoryItem> history,  List<SearchSuggestion> suggestions,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GlobalSearchState() when $default != null:
return $default(_that.query,_that.popular,_that.history,_that.suggestions,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<String> popular,  List<SearchHistoryItem> history,  List<SearchSuggestion> suggestions,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _GlobalSearchState():
return $default(_that.query,_that.popular,_that.history,_that.suggestions,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<String> popular,  List<SearchHistoryItem> history,  List<SearchSuggestion> suggestions,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _GlobalSearchState() when $default != null:
return $default(_that.query,_that.popular,_that.history,_that.suggestions,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _GlobalSearchState extends GlobalSearchState {
   _GlobalSearchState({this.query = "", final  List<String> popular = const [], final  List<SearchHistoryItem> history = const [], final  List<SearchSuggestion> suggestions = const [], this.isLoading = false, this.errorMessage}): _popular = popular,_history = history,_suggestions = suggestions,super._();
  

@override@JsonKey() final  String query;
 final  List<String> _popular;
@override@JsonKey() List<String> get popular {
  if (_popular is EqualUnmodifiableListView) return _popular;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popular);
}

 final  List<SearchHistoryItem> _history;
@override@JsonKey() List<SearchHistoryItem> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

 final  List<SearchSuggestion> _suggestions;
@override@JsonKey() List<SearchSuggestion> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of GlobalSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlobalSearchStateCopyWith<_GlobalSearchState> get copyWith => __$GlobalSearchStateCopyWithImpl<_GlobalSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GlobalSearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._popular, _popular)&&const DeepCollectionEquality().equals(other._history, _history)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_popular),const DeepCollectionEquality().hash(_history),const DeepCollectionEquality().hash(_suggestions),isLoading,errorMessage);

@override
String toString() {
  return 'GlobalSearchState(query: $query, popular: $popular, history: $history, suggestions: $suggestions, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$GlobalSearchStateCopyWith<$Res> implements $GlobalSearchStateCopyWith<$Res> {
  factory _$GlobalSearchStateCopyWith(_GlobalSearchState value, $Res Function(_GlobalSearchState) _then) = __$GlobalSearchStateCopyWithImpl;
@override @useResult
$Res call({
 String query, List<String> popular, List<SearchHistoryItem> history, List<SearchSuggestion> suggestions, bool isLoading, String? errorMessage
});




}
/// @nodoc
class __$GlobalSearchStateCopyWithImpl<$Res>
    implements _$GlobalSearchStateCopyWith<$Res> {
  __$GlobalSearchStateCopyWithImpl(this._self, this._then);

  final _GlobalSearchState _self;
  final $Res Function(_GlobalSearchState) _then;

/// Create a copy of GlobalSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? popular = null,Object? history = null,Object? suggestions = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_GlobalSearchState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,popular: null == popular ? _self._popular : popular // ignore: cast_nullable_to_non_nullable
as List<String>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<SearchHistoryItem>,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<SearchSuggestion>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
