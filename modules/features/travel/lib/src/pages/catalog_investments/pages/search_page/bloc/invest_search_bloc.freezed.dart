// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invest_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InvestmentsSearchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvestmentsSearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InvestmentsSearchState()';
}


}

/// @nodoc
class $InvestmentsSearchStateCopyWith<$Res>  {
$InvestmentsSearchStateCopyWith(InvestmentsSearchState _, $Res Function(InvestmentsSearchState) __);
}


/// Adds pattern-matching-related methods to [InvestmentsSearchState].
extension InvestmentsSearchStatePatterns on InvestmentsSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InvestmentsSearchInitialState value)?  initialState,TResult Function( _InvestmentsSearchLoadingState value)?  loadingState,TResult Function( _InvestmentsNoContentState value)?  noContentState,TResult Function( _InvestmentsSearchDataState value)?  dataState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvestmentsSearchInitialState() when initialState != null:
return initialState(_that);case _InvestmentsSearchLoadingState() when loadingState != null:
return loadingState(_that);case _InvestmentsNoContentState() when noContentState != null:
return noContentState(_that);case _InvestmentsSearchDataState() when dataState != null:
return dataState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InvestmentsSearchInitialState value)  initialState,required TResult Function( _InvestmentsSearchLoadingState value)  loadingState,required TResult Function( _InvestmentsNoContentState value)  noContentState,required TResult Function( _InvestmentsSearchDataState value)  dataState,}){
final _that = this;
switch (_that) {
case _InvestmentsSearchInitialState():
return initialState(_that);case _InvestmentsSearchLoadingState():
return loadingState(_that);case _InvestmentsNoContentState():
return noContentState(_that);case _InvestmentsSearchDataState():
return dataState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InvestmentsSearchInitialState value)?  initialState,TResult? Function( _InvestmentsSearchLoadingState value)?  loadingState,TResult? Function( _InvestmentsNoContentState value)?  noContentState,TResult? Function( _InvestmentsSearchDataState value)?  dataState,}){
final _that = this;
switch (_that) {
case _InvestmentsSearchInitialState() when initialState != null:
return initialState(_that);case _InvestmentsSearchLoadingState() when loadingState != null:
return loadingState(_that);case _InvestmentsNoContentState() when noContentState != null:
return noContentState(_that);case _InvestmentsSearchDataState() when dataState != null:
return dataState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialState,TResult Function()?  loadingState,TResult Function()?  noContentState,TResult Function( List<MainPageContent> contents)?  dataState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvestmentsSearchInitialState() when initialState != null:
return initialState();case _InvestmentsSearchLoadingState() when loadingState != null:
return loadingState();case _InvestmentsNoContentState() when noContentState != null:
return noContentState();case _InvestmentsSearchDataState() when dataState != null:
return dataState(_that.contents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialState,required TResult Function()  loadingState,required TResult Function()  noContentState,required TResult Function( List<MainPageContent> contents)  dataState,}) {final _that = this;
switch (_that) {
case _InvestmentsSearchInitialState():
return initialState();case _InvestmentsSearchLoadingState():
return loadingState();case _InvestmentsNoContentState():
return noContentState();case _InvestmentsSearchDataState():
return dataState(_that.contents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialState,TResult? Function()?  loadingState,TResult? Function()?  noContentState,TResult? Function( List<MainPageContent> contents)?  dataState,}) {final _that = this;
switch (_that) {
case _InvestmentsSearchInitialState() when initialState != null:
return initialState();case _InvestmentsSearchLoadingState() when loadingState != null:
return loadingState();case _InvestmentsNoContentState() when noContentState != null:
return noContentState();case _InvestmentsSearchDataState() when dataState != null:
return dataState(_that.contents);case _:
  return null;

}
}

}

/// @nodoc


class _InvestmentsSearchInitialState implements InvestmentsSearchState {
   _InvestmentsSearchInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvestmentsSearchInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InvestmentsSearchState.initialState()';
}


}




/// @nodoc


class _InvestmentsSearchLoadingState implements InvestmentsSearchState {
   _InvestmentsSearchLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvestmentsSearchLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InvestmentsSearchState.loadingState()';
}


}




/// @nodoc


class _InvestmentsNoContentState implements InvestmentsSearchState {
   _InvestmentsNoContentState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvestmentsNoContentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InvestmentsSearchState.noContentState()';
}


}




/// @nodoc


class _InvestmentsSearchDataState implements InvestmentsSearchState {
   _InvestmentsSearchDataState({required final  List<MainPageContent> contents}): _contents = contents;
  

 final  List<MainPageContent> _contents;
 List<MainPageContent> get contents {
  if (_contents is EqualUnmodifiableListView) return _contents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contents);
}


/// Create a copy of InvestmentsSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvestmentsSearchDataStateCopyWith<_InvestmentsSearchDataState> get copyWith => __$InvestmentsSearchDataStateCopyWithImpl<_InvestmentsSearchDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvestmentsSearchDataState&&const DeepCollectionEquality().equals(other._contents, _contents));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contents));

@override
String toString() {
  return 'InvestmentsSearchState.dataState(contents: $contents)';
}


}

/// @nodoc
abstract mixin class _$InvestmentsSearchDataStateCopyWith<$Res> implements $InvestmentsSearchStateCopyWith<$Res> {
  factory _$InvestmentsSearchDataStateCopyWith(_InvestmentsSearchDataState value, $Res Function(_InvestmentsSearchDataState) _then) = __$InvestmentsSearchDataStateCopyWithImpl;
@useResult
$Res call({
 List<MainPageContent> contents
});




}
/// @nodoc
class __$InvestmentsSearchDataStateCopyWithImpl<$Res>
    implements _$InvestmentsSearchDataStateCopyWith<$Res> {
  __$InvestmentsSearchDataStateCopyWithImpl(this._self, this._then);

  final _InvestmentsSearchDataState _self;
  final $Res Function(_InvestmentsSearchDataState) _then;

/// Create a copy of InvestmentsSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contents = null,}) {
  return _then(_InvestmentsSearchDataState(
contents: null == contents ? _self._contents : contents // ignore: cast_nullable_to_non_nullable
as List<MainPageContent>,
  ));
}


}

/// @nodoc
mixin _$InvestSearchBlocEvent {

 String get query;
/// Create a copy of InvestSearchBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvestSearchBlocEventCopyWith<InvestSearchBlocEvent> get copyWith => _$InvestSearchBlocEventCopyWithImpl<InvestSearchBlocEvent>(this as InvestSearchBlocEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvestSearchBlocEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'InvestSearchBlocEvent(query: $query)';
}


}

/// @nodoc
abstract mixin class $InvestSearchBlocEventCopyWith<$Res>  {
  factory $InvestSearchBlocEventCopyWith(InvestSearchBlocEvent value, $Res Function(InvestSearchBlocEvent) _then) = _$InvestSearchBlocEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$InvestSearchBlocEventCopyWithImpl<$Res>
    implements $InvestSearchBlocEventCopyWith<$Res> {
  _$InvestSearchBlocEventCopyWithImpl(this._self, this._then);

  final InvestSearchBlocEvent _self;
  final $Res Function(InvestSearchBlocEvent) _then;

/// Create a copy of InvestSearchBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InvestSearchBlocEvent].
extension InvestSearchBlocEventPatterns on InvestSearchBlocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InvestSearchEvent value)?  search,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvestSearchEvent() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InvestSearchEvent value)  search,}){
final _that = this;
switch (_that) {
case _InvestSearchEvent():
return search(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InvestSearchEvent value)?  search,}){
final _that = this;
switch (_that) {
case _InvestSearchEvent() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  search,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvestSearchEvent() when search != null:
return search(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  search,}) {final _that = this;
switch (_that) {
case _InvestSearchEvent():
return search(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  search,}) {final _that = this;
switch (_that) {
case _InvestSearchEvent() when search != null:
return search(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _InvestSearchEvent implements InvestSearchBlocEvent {
   _InvestSearchEvent(this.query);
  

@override final  String query;

/// Create a copy of InvestSearchBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvestSearchEventCopyWith<_InvestSearchEvent> get copyWith => __$InvestSearchEventCopyWithImpl<_InvestSearchEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvestSearchEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'InvestSearchBlocEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class _$InvestSearchEventCopyWith<$Res> implements $InvestSearchBlocEventCopyWith<$Res> {
  factory _$InvestSearchEventCopyWith(_InvestSearchEvent value, $Res Function(_InvestSearchEvent) _then) = __$InvestSearchEventCopyWithImpl;
@override @useResult
$Res call({
 String query
});




}
/// @nodoc
class __$InvestSearchEventCopyWithImpl<$Res>
    implements _$InvestSearchEventCopyWith<$Res> {
  __$InvestSearchEventCopyWithImpl(this._self, this._then);

  final _InvestSearchEvent _self;
  final $Res Function(_InvestSearchEvent) _then;

/// Create a copy of InvestSearchBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_InvestSearchEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
