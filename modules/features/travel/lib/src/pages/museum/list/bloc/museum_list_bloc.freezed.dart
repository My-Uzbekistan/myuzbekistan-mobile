// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'museum_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MuseumListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumListEvent()';
}


}

/// @nodoc
class $MuseumListEventCopyWith<$Res>  {
$MuseumListEventCopyWith(MuseumListEvent _, $Res Function(MuseumListEvent) __);
}


/// Adds pattern-matching-related methods to [MuseumListEvent].
extension MuseumListEventPatterns on MuseumListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MuseumListStartEvent value)?  start,TResult Function( _MuseumListApplyQueryEvent value)?  applyQuery,TResult Function( _MuseumListChangeSortEvent value)?  changeSort,TResult Function( _MuseumListLoadMoreEvent value)?  loadMore,TResult Function( _MuseumListFavoriteChangedEvent value)?  favoriteChanged,TResult Function( _MuseumListToggleFavoriteEvent value)?  toggleFavorite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumListStartEvent() when start != null:
return start(_that);case _MuseumListApplyQueryEvent() when applyQuery != null:
return applyQuery(_that);case _MuseumListChangeSortEvent() when changeSort != null:
return changeSort(_that);case _MuseumListLoadMoreEvent() when loadMore != null:
return loadMore(_that);case _MuseumListFavoriteChangedEvent() when favoriteChanged != null:
return favoriteChanged(_that);case _MuseumListToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MuseumListStartEvent value)  start,required TResult Function( _MuseumListApplyQueryEvent value)  applyQuery,required TResult Function( _MuseumListChangeSortEvent value)  changeSort,required TResult Function( _MuseumListLoadMoreEvent value)  loadMore,required TResult Function( _MuseumListFavoriteChangedEvent value)  favoriteChanged,required TResult Function( _MuseumListToggleFavoriteEvent value)  toggleFavorite,}){
final _that = this;
switch (_that) {
case _MuseumListStartEvent():
return start(_that);case _MuseumListApplyQueryEvent():
return applyQuery(_that);case _MuseumListChangeSortEvent():
return changeSort(_that);case _MuseumListLoadMoreEvent():
return loadMore(_that);case _MuseumListFavoriteChangedEvent():
return favoriteChanged(_that);case _MuseumListToggleFavoriteEvent():
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MuseumListStartEvent value)?  start,TResult? Function( _MuseumListApplyQueryEvent value)?  applyQuery,TResult? Function( _MuseumListChangeSortEvent value)?  changeSort,TResult? Function( _MuseumListLoadMoreEvent value)?  loadMore,TResult? Function( _MuseumListFavoriteChangedEvent value)?  favoriteChanged,TResult? Function( _MuseumListToggleFavoriteEvent value)?  toggleFavorite,}){
final _that = this;
switch (_that) {
case _MuseumListStartEvent() when start != null:
return start(_that);case _MuseumListApplyQueryEvent() when applyQuery != null:
return applyQuery(_that);case _MuseumListChangeSortEvent() when changeSort != null:
return changeSort(_that);case _MuseumListLoadMoreEvent() when loadMore != null:
return loadMore(_that);case _MuseumListFavoriteChangedEvent() when favoriteChanged != null:
return favoriteChanged(_that);case _MuseumListToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? search,  String? cityId,  String? cityName)?  start,TResult Function( MuseumSearchQuery query)?  applyQuery,TResult Function( MuseumSort sort)?  changeSort,TResult Function()?  loadMore,TResult Function( ItemChange change)?  favoriteChanged,TResult Function( MuseumCard museum)?  toggleFavorite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumListStartEvent() when start != null:
return start(_that.search,_that.cityId,_that.cityName);case _MuseumListApplyQueryEvent() when applyQuery != null:
return applyQuery(_that.query);case _MuseumListChangeSortEvent() when changeSort != null:
return changeSort(_that.sort);case _MuseumListLoadMoreEvent() when loadMore != null:
return loadMore();case _MuseumListFavoriteChangedEvent() when favoriteChanged != null:
return favoriteChanged(_that.change);case _MuseumListToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.museum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? search,  String? cityId,  String? cityName)  start,required TResult Function( MuseumSearchQuery query)  applyQuery,required TResult Function( MuseumSort sort)  changeSort,required TResult Function()  loadMore,required TResult Function( ItemChange change)  favoriteChanged,required TResult Function( MuseumCard museum)  toggleFavorite,}) {final _that = this;
switch (_that) {
case _MuseumListStartEvent():
return start(_that.search,_that.cityId,_that.cityName);case _MuseumListApplyQueryEvent():
return applyQuery(_that.query);case _MuseumListChangeSortEvent():
return changeSort(_that.sort);case _MuseumListLoadMoreEvent():
return loadMore();case _MuseumListFavoriteChangedEvent():
return favoriteChanged(_that.change);case _MuseumListToggleFavoriteEvent():
return toggleFavorite(_that.museum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? search,  String? cityId,  String? cityName)?  start,TResult? Function( MuseumSearchQuery query)?  applyQuery,TResult? Function( MuseumSort sort)?  changeSort,TResult? Function()?  loadMore,TResult? Function( ItemChange change)?  favoriteChanged,TResult? Function( MuseumCard museum)?  toggleFavorite,}) {final _that = this;
switch (_that) {
case _MuseumListStartEvent() when start != null:
return start(_that.search,_that.cityId,_that.cityName);case _MuseumListApplyQueryEvent() when applyQuery != null:
return applyQuery(_that.query);case _MuseumListChangeSortEvent() when changeSort != null:
return changeSort(_that.sort);case _MuseumListLoadMoreEvent() when loadMore != null:
return loadMore();case _MuseumListFavoriteChangedEvent() when favoriteChanged != null:
return favoriteChanged(_that.change);case _MuseumListToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.museum);case _:
  return null;

}
}

}

/// @nodoc


class _MuseumListStartEvent implements MuseumListEvent {
   _MuseumListStartEvent({this.search, this.cityId, this.cityName});
  

 final  String? search;
 final  String? cityId;
 final  String? cityName;

/// Create a copy of MuseumListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumListStartEventCopyWith<_MuseumListStartEvent> get copyWith => __$MuseumListStartEventCopyWithImpl<_MuseumListStartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumListStartEvent&&(identical(other.search, search) || other.search == search)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityName, cityName) || other.cityName == cityName));
}


@override
int get hashCode => Object.hash(runtimeType,search,cityId,cityName);

@override
String toString() {
  return 'MuseumListEvent.start(search: $search, cityId: $cityId, cityName: $cityName)';
}


}

/// @nodoc
abstract mixin class _$MuseumListStartEventCopyWith<$Res> implements $MuseumListEventCopyWith<$Res> {
  factory _$MuseumListStartEventCopyWith(_MuseumListStartEvent value, $Res Function(_MuseumListStartEvent) _then) = __$MuseumListStartEventCopyWithImpl;
@useResult
$Res call({
 String? search, String? cityId, String? cityName
});




}
/// @nodoc
class __$MuseumListStartEventCopyWithImpl<$Res>
    implements _$MuseumListStartEventCopyWith<$Res> {
  __$MuseumListStartEventCopyWithImpl(this._self, this._then);

  final _MuseumListStartEvent _self;
  final $Res Function(_MuseumListStartEvent) _then;

/// Create a copy of MuseumListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? search = freezed,Object? cityId = freezed,Object? cityName = freezed,}) {
  return _then(_MuseumListStartEvent(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _MuseumListApplyQueryEvent implements MuseumListEvent {
   _MuseumListApplyQueryEvent({required this.query});
  

 final  MuseumSearchQuery query;

/// Create a copy of MuseumListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumListApplyQueryEventCopyWith<_MuseumListApplyQueryEvent> get copyWith => __$MuseumListApplyQueryEventCopyWithImpl<_MuseumListApplyQueryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumListApplyQueryEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'MuseumListEvent.applyQuery(query: $query)';
}


}

/// @nodoc
abstract mixin class _$MuseumListApplyQueryEventCopyWith<$Res> implements $MuseumListEventCopyWith<$Res> {
  factory _$MuseumListApplyQueryEventCopyWith(_MuseumListApplyQueryEvent value, $Res Function(_MuseumListApplyQueryEvent) _then) = __$MuseumListApplyQueryEventCopyWithImpl;
@useResult
$Res call({
 MuseumSearchQuery query
});




}
/// @nodoc
class __$MuseumListApplyQueryEventCopyWithImpl<$Res>
    implements _$MuseumListApplyQueryEventCopyWith<$Res> {
  __$MuseumListApplyQueryEventCopyWithImpl(this._self, this._then);

  final _MuseumListApplyQueryEvent _self;
  final $Res Function(_MuseumListApplyQueryEvent) _then;

/// Create a copy of MuseumListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_MuseumListApplyQueryEvent(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as MuseumSearchQuery,
  ));
}


}

/// @nodoc


class _MuseumListChangeSortEvent implements MuseumListEvent {
   _MuseumListChangeSortEvent({required this.sort});
  

 final  MuseumSort sort;

/// Create a copy of MuseumListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumListChangeSortEventCopyWith<_MuseumListChangeSortEvent> get copyWith => __$MuseumListChangeSortEventCopyWithImpl<_MuseumListChangeSortEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumListChangeSortEvent&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,sort);

@override
String toString() {
  return 'MuseumListEvent.changeSort(sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$MuseumListChangeSortEventCopyWith<$Res> implements $MuseumListEventCopyWith<$Res> {
  factory _$MuseumListChangeSortEventCopyWith(_MuseumListChangeSortEvent value, $Res Function(_MuseumListChangeSortEvent) _then) = __$MuseumListChangeSortEventCopyWithImpl;
@useResult
$Res call({
 MuseumSort sort
});




}
/// @nodoc
class __$MuseumListChangeSortEventCopyWithImpl<$Res>
    implements _$MuseumListChangeSortEventCopyWith<$Res> {
  __$MuseumListChangeSortEventCopyWithImpl(this._self, this._then);

  final _MuseumListChangeSortEvent _self;
  final $Res Function(_MuseumListChangeSortEvent) _then;

/// Create a copy of MuseumListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sort = null,}) {
  return _then(_MuseumListChangeSortEvent(
sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as MuseumSort,
  ));
}


}

/// @nodoc


class _MuseumListLoadMoreEvent implements MuseumListEvent {
   _MuseumListLoadMoreEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumListLoadMoreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumListEvent.loadMore()';
}


}




/// @nodoc


class _MuseumListFavoriteChangedEvent implements MuseumListEvent {
   _MuseumListFavoriteChangedEvent({required this.change});
  

 final  ItemChange change;

/// Create a copy of MuseumListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumListFavoriteChangedEventCopyWith<_MuseumListFavoriteChangedEvent> get copyWith => __$MuseumListFavoriteChangedEventCopyWithImpl<_MuseumListFavoriteChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumListFavoriteChangedEvent&&(identical(other.change, change) || other.change == change));
}


@override
int get hashCode => Object.hash(runtimeType,change);

@override
String toString() {
  return 'MuseumListEvent.favoriteChanged(change: $change)';
}


}

/// @nodoc
abstract mixin class _$MuseumListFavoriteChangedEventCopyWith<$Res> implements $MuseumListEventCopyWith<$Res> {
  factory _$MuseumListFavoriteChangedEventCopyWith(_MuseumListFavoriteChangedEvent value, $Res Function(_MuseumListFavoriteChangedEvent) _then) = __$MuseumListFavoriteChangedEventCopyWithImpl;
@useResult
$Res call({
 ItemChange change
});




}
/// @nodoc
class __$MuseumListFavoriteChangedEventCopyWithImpl<$Res>
    implements _$MuseumListFavoriteChangedEventCopyWith<$Res> {
  __$MuseumListFavoriteChangedEventCopyWithImpl(this._self, this._then);

  final _MuseumListFavoriteChangedEvent _self;
  final $Res Function(_MuseumListFavoriteChangedEvent) _then;

/// Create a copy of MuseumListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? change = null,}) {
  return _then(_MuseumListFavoriteChangedEvent(
change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as ItemChange,
  ));
}


}

/// @nodoc


class _MuseumListToggleFavoriteEvent implements MuseumListEvent {
   _MuseumListToggleFavoriteEvent({required this.museum});
  

 final  MuseumCard museum;

/// Create a copy of MuseumListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumListToggleFavoriteEventCopyWith<_MuseumListToggleFavoriteEvent> get copyWith => __$MuseumListToggleFavoriteEventCopyWithImpl<_MuseumListToggleFavoriteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumListToggleFavoriteEvent&&(identical(other.museum, museum) || other.museum == museum));
}


@override
int get hashCode => Object.hash(runtimeType,museum);

@override
String toString() {
  return 'MuseumListEvent.toggleFavorite(museum: $museum)';
}


}

/// @nodoc
abstract mixin class _$MuseumListToggleFavoriteEventCopyWith<$Res> implements $MuseumListEventCopyWith<$Res> {
  factory _$MuseumListToggleFavoriteEventCopyWith(_MuseumListToggleFavoriteEvent value, $Res Function(_MuseumListToggleFavoriteEvent) _then) = __$MuseumListToggleFavoriteEventCopyWithImpl;
@useResult
$Res call({
 MuseumCard museum
});




}
/// @nodoc
class __$MuseumListToggleFavoriteEventCopyWithImpl<$Res>
    implements _$MuseumListToggleFavoriteEventCopyWith<$Res> {
  __$MuseumListToggleFavoriteEventCopyWithImpl(this._self, this._then);

  final _MuseumListToggleFavoriteEvent _self;
  final $Res Function(_MuseumListToggleFavoriteEvent) _then;

/// Create a copy of MuseumListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? museum = null,}) {
  return _then(_MuseumListToggleFavoriteEvent(
museum: null == museum ? _self.museum : museum // ignore: cast_nullable_to_non_nullable
as MuseumCard,
  ));
}


}

/// @nodoc
mixin _$MuseumListState {

 String? get search; String? get cityId; String? get cityName; MuseumSort get sort; List<MuseumCard> get items; int get totalItems; int get page; bool get isLast; bool get isLoading; bool get isFirstLoading; String? get errorMessage;
/// Create a copy of MuseumListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuseumListStateCopyWith<MuseumListState> get copyWith => _$MuseumListStateCopyWithImpl<MuseumListState>(this as MuseumListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumListState&&(identical(other.search, search) || other.search == search)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.sort, sort) || other.sort == sort)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.page, page) || other.page == page)&&(identical(other.isLast, isLast) || other.isLast == isLast)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFirstLoading, isFirstLoading) || other.isFirstLoading == isFirstLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,search,cityId,cityName,sort,const DeepCollectionEquality().hash(items),totalItems,page,isLast,isLoading,isFirstLoading,errorMessage);

@override
String toString() {
  return 'MuseumListState(search: $search, cityId: $cityId, cityName: $cityName, sort: $sort, items: $items, totalItems: $totalItems, page: $page, isLast: $isLast, isLoading: $isLoading, isFirstLoading: $isFirstLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MuseumListStateCopyWith<$Res>  {
  factory $MuseumListStateCopyWith(MuseumListState value, $Res Function(MuseumListState) _then) = _$MuseumListStateCopyWithImpl;
@useResult
$Res call({
 String? search, String? cityId, String? cityName, MuseumSort sort, List<MuseumCard> items, int totalItems, int page, bool isLast, bool isLoading, bool isFirstLoading, String? errorMessage
});




}
/// @nodoc
class _$MuseumListStateCopyWithImpl<$Res>
    implements $MuseumListStateCopyWith<$Res> {
  _$MuseumListStateCopyWithImpl(this._self, this._then);

  final MuseumListState _self;
  final $Res Function(MuseumListState) _then;

/// Create a copy of MuseumListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? search = freezed,Object? cityId = freezed,Object? cityName = freezed,Object? sort = null,Object? items = null,Object? totalItems = null,Object? page = null,Object? isLast = null,Object? isLoading = null,Object? isFirstLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as MuseumSort,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MuseumCard>,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLast: null == isLast ? _self.isLast : isLast // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFirstLoading: null == isFirstLoading ? _self.isFirstLoading : isFirstLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MuseumListState].
extension MuseumListStatePatterns on MuseumListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuseumListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuseumListState value)  $default,){
final _that = this;
switch (_that) {
case _MuseumListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuseumListState value)?  $default,){
final _that = this;
switch (_that) {
case _MuseumListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? search,  String? cityId,  String? cityName,  MuseumSort sort,  List<MuseumCard> items,  int totalItems,  int page,  bool isLast,  bool isLoading,  bool isFirstLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumListState() when $default != null:
return $default(_that.search,_that.cityId,_that.cityName,_that.sort,_that.items,_that.totalItems,_that.page,_that.isLast,_that.isLoading,_that.isFirstLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? search,  String? cityId,  String? cityName,  MuseumSort sort,  List<MuseumCard> items,  int totalItems,  int page,  bool isLast,  bool isLoading,  bool isFirstLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MuseumListState():
return $default(_that.search,_that.cityId,_that.cityName,_that.sort,_that.items,_that.totalItems,_that.page,_that.isLast,_that.isLoading,_that.isFirstLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? search,  String? cityId,  String? cityName,  MuseumSort sort,  List<MuseumCard> items,  int totalItems,  int page,  bool isLast,  bool isLoading,  bool isFirstLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MuseumListState() when $default != null:
return $default(_that.search,_that.cityId,_that.cityName,_that.sort,_that.items,_that.totalItems,_that.page,_that.isLast,_that.isLoading,_that.isFirstLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MuseumListState extends MuseumListState {
   _MuseumListState({this.search, this.cityId, this.cityName, this.sort = MuseumSort.popular, final  List<MuseumCard> items = const [], this.totalItems = 0, this.page = 1, this.isLast = false, this.isLoading = false, this.isFirstLoading = false, this.errorMessage}): _items = items,super._();
  

@override final  String? search;
@override final  String? cityId;
@override final  String? cityName;
@override@JsonKey() final  MuseumSort sort;
 final  List<MuseumCard> _items;
@override@JsonKey() List<MuseumCard> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  int totalItems;
@override@JsonKey() final  int page;
@override@JsonKey() final  bool isLast;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isFirstLoading;
@override final  String? errorMessage;

/// Create a copy of MuseumListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumListStateCopyWith<_MuseumListState> get copyWith => __$MuseumListStateCopyWithImpl<_MuseumListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumListState&&(identical(other.search, search) || other.search == search)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.sort, sort) || other.sort == sort)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.page, page) || other.page == page)&&(identical(other.isLast, isLast) || other.isLast == isLast)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFirstLoading, isFirstLoading) || other.isFirstLoading == isFirstLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,search,cityId,cityName,sort,const DeepCollectionEquality().hash(_items),totalItems,page,isLast,isLoading,isFirstLoading,errorMessage);

@override
String toString() {
  return 'MuseumListState(search: $search, cityId: $cityId, cityName: $cityName, sort: $sort, items: $items, totalItems: $totalItems, page: $page, isLast: $isLast, isLoading: $isLoading, isFirstLoading: $isFirstLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MuseumListStateCopyWith<$Res> implements $MuseumListStateCopyWith<$Res> {
  factory _$MuseumListStateCopyWith(_MuseumListState value, $Res Function(_MuseumListState) _then) = __$MuseumListStateCopyWithImpl;
@override @useResult
$Res call({
 String? search, String? cityId, String? cityName, MuseumSort sort, List<MuseumCard> items, int totalItems, int page, bool isLast, bool isLoading, bool isFirstLoading, String? errorMessage
});




}
/// @nodoc
class __$MuseumListStateCopyWithImpl<$Res>
    implements _$MuseumListStateCopyWith<$Res> {
  __$MuseumListStateCopyWithImpl(this._self, this._then);

  final _MuseumListState _self;
  final $Res Function(_MuseumListState) _then;

/// Create a copy of MuseumListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? search = freezed,Object? cityId = freezed,Object? cityName = freezed,Object? sort = null,Object? items = null,Object? totalItems = null,Object? page = null,Object? isLast = null,Object? isLoading = null,Object? isFirstLoading = null,Object? errorMessage = freezed,}) {
  return _then(_MuseumListState(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as MuseumSort,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MuseumCard>,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLast: null == isLast ? _self.isLast : isLast // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFirstLoading: null == isFirstLoading ? _self.isFirstLoading : isFirstLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
