// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketSearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketSearchEvent()';
}


}

/// @nodoc
class $MarketSearchEventCopyWith<$Res>  {
$MarketSearchEventCopyWith(MarketSearchEvent _, $Res Function(MarketSearchEvent) __);
}


/// Adds pattern-matching-related methods to [MarketSearchEvent].
extension MarketSearchEventPatterns on MarketSearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MarketSearchLoadInitialEvent value)?  loadInitial,TResult Function( _MarketSearchQueryChangedEvent value)?  queryChanged,TResult Function( _MarketSearchSearchEvent value)?  search,TResult Function( _MarketSearchSubmitEvent value)?  submit,TResult Function( _MarketSearchLoadMoreEvent value)?  loadMore,TResult Function( _MarketSearchProductChangedEvent value)?  productChanged,TResult Function( _MarketSearchChangeSortEvent value)?  changeSort,TResult Function( _MarketSearchRemoveHistoryEvent value)?  removeHistory,TResult Function( _MarketSearchToggleFavoriteEvent value)?  toggleFavorite,TResult Function( _MarketSearchChangeCartQuantityEvent value)?  changeCartQuantity,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketSearchLoadInitialEvent() when loadInitial != null:
return loadInitial(_that);case _MarketSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that);case _MarketSearchSearchEvent() when search != null:
return search(_that);case _MarketSearchSubmitEvent() when submit != null:
return submit(_that);case _MarketSearchLoadMoreEvent() when loadMore != null:
return loadMore(_that);case _MarketSearchProductChangedEvent() when productChanged != null:
return productChanged(_that);case _MarketSearchChangeSortEvent() when changeSort != null:
return changeSort(_that);case _MarketSearchRemoveHistoryEvent() when removeHistory != null:
return removeHistory(_that);case _MarketSearchToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _MarketSearchChangeCartQuantityEvent() when changeCartQuantity != null:
return changeCartQuantity(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MarketSearchLoadInitialEvent value)  loadInitial,required TResult Function( _MarketSearchQueryChangedEvent value)  queryChanged,required TResult Function( _MarketSearchSearchEvent value)  search,required TResult Function( _MarketSearchSubmitEvent value)  submit,required TResult Function( _MarketSearchLoadMoreEvent value)  loadMore,required TResult Function( _MarketSearchProductChangedEvent value)  productChanged,required TResult Function( _MarketSearchChangeSortEvent value)  changeSort,required TResult Function( _MarketSearchRemoveHistoryEvent value)  removeHistory,required TResult Function( _MarketSearchToggleFavoriteEvent value)  toggleFavorite,required TResult Function( _MarketSearchChangeCartQuantityEvent value)  changeCartQuantity,}){
final _that = this;
switch (_that) {
case _MarketSearchLoadInitialEvent():
return loadInitial(_that);case _MarketSearchQueryChangedEvent():
return queryChanged(_that);case _MarketSearchSearchEvent():
return search(_that);case _MarketSearchSubmitEvent():
return submit(_that);case _MarketSearchLoadMoreEvent():
return loadMore(_that);case _MarketSearchProductChangedEvent():
return productChanged(_that);case _MarketSearchChangeSortEvent():
return changeSort(_that);case _MarketSearchRemoveHistoryEvent():
return removeHistory(_that);case _MarketSearchToggleFavoriteEvent():
return toggleFavorite(_that);case _MarketSearchChangeCartQuantityEvent():
return changeCartQuantity(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MarketSearchLoadInitialEvent value)?  loadInitial,TResult? Function( _MarketSearchQueryChangedEvent value)?  queryChanged,TResult? Function( _MarketSearchSearchEvent value)?  search,TResult? Function( _MarketSearchSubmitEvent value)?  submit,TResult? Function( _MarketSearchLoadMoreEvent value)?  loadMore,TResult? Function( _MarketSearchProductChangedEvent value)?  productChanged,TResult? Function( _MarketSearchChangeSortEvent value)?  changeSort,TResult? Function( _MarketSearchRemoveHistoryEvent value)?  removeHistory,TResult? Function( _MarketSearchToggleFavoriteEvent value)?  toggleFavorite,TResult? Function( _MarketSearchChangeCartQuantityEvent value)?  changeCartQuantity,}){
final _that = this;
switch (_that) {
case _MarketSearchLoadInitialEvent() when loadInitial != null:
return loadInitial(_that);case _MarketSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that);case _MarketSearchSearchEvent() when search != null:
return search(_that);case _MarketSearchSubmitEvent() when submit != null:
return submit(_that);case _MarketSearchLoadMoreEvent() when loadMore != null:
return loadMore(_that);case _MarketSearchProductChangedEvent() when productChanged != null:
return productChanged(_that);case _MarketSearchChangeSortEvent() when changeSort != null:
return changeSort(_that);case _MarketSearchRemoveHistoryEvent() when removeHistory != null:
return removeHistory(_that);case _MarketSearchToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _MarketSearchChangeCartQuantityEvent() when changeCartQuantity != null:
return changeCartQuantity(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadInitial,TResult Function( String query)?  queryChanged,TResult Function()?  search,TResult Function( String query)?  submit,TResult Function()?  loadMore,TResult Function( ItemChange change)?  productChanged,TResult Function( MarketProductSort sort)?  changeSort,TResult Function( int searchId)?  removeHistory,TResult Function( MarketProduct product)?  toggleFavorite,TResult Function( MarketProduct product,  int quantity)?  changeCartQuantity,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketSearchLoadInitialEvent() when loadInitial != null:
return loadInitial();case _MarketSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that.query);case _MarketSearchSearchEvent() when search != null:
return search();case _MarketSearchSubmitEvent() when submit != null:
return submit(_that.query);case _MarketSearchLoadMoreEvent() when loadMore != null:
return loadMore();case _MarketSearchProductChangedEvent() when productChanged != null:
return productChanged(_that.change);case _MarketSearchChangeSortEvent() when changeSort != null:
return changeSort(_that.sort);case _MarketSearchRemoveHistoryEvent() when removeHistory != null:
return removeHistory(_that.searchId);case _MarketSearchToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.product);case _MarketSearchChangeCartQuantityEvent() when changeCartQuantity != null:
return changeCartQuantity(_that.product,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadInitial,required TResult Function( String query)  queryChanged,required TResult Function()  search,required TResult Function( String query)  submit,required TResult Function()  loadMore,required TResult Function( ItemChange change)  productChanged,required TResult Function( MarketProductSort sort)  changeSort,required TResult Function( int searchId)  removeHistory,required TResult Function( MarketProduct product)  toggleFavorite,required TResult Function( MarketProduct product,  int quantity)  changeCartQuantity,}) {final _that = this;
switch (_that) {
case _MarketSearchLoadInitialEvent():
return loadInitial();case _MarketSearchQueryChangedEvent():
return queryChanged(_that.query);case _MarketSearchSearchEvent():
return search();case _MarketSearchSubmitEvent():
return submit(_that.query);case _MarketSearchLoadMoreEvent():
return loadMore();case _MarketSearchProductChangedEvent():
return productChanged(_that.change);case _MarketSearchChangeSortEvent():
return changeSort(_that.sort);case _MarketSearchRemoveHistoryEvent():
return removeHistory(_that.searchId);case _MarketSearchToggleFavoriteEvent():
return toggleFavorite(_that.product);case _MarketSearchChangeCartQuantityEvent():
return changeCartQuantity(_that.product,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadInitial,TResult? Function( String query)?  queryChanged,TResult? Function()?  search,TResult? Function( String query)?  submit,TResult? Function()?  loadMore,TResult? Function( ItemChange change)?  productChanged,TResult? Function( MarketProductSort sort)?  changeSort,TResult? Function( int searchId)?  removeHistory,TResult? Function( MarketProduct product)?  toggleFavorite,TResult? Function( MarketProduct product,  int quantity)?  changeCartQuantity,}) {final _that = this;
switch (_that) {
case _MarketSearchLoadInitialEvent() when loadInitial != null:
return loadInitial();case _MarketSearchQueryChangedEvent() when queryChanged != null:
return queryChanged(_that.query);case _MarketSearchSearchEvent() when search != null:
return search();case _MarketSearchSubmitEvent() when submit != null:
return submit(_that.query);case _MarketSearchLoadMoreEvent() when loadMore != null:
return loadMore();case _MarketSearchProductChangedEvent() when productChanged != null:
return productChanged(_that.change);case _MarketSearchChangeSortEvent() when changeSort != null:
return changeSort(_that.sort);case _MarketSearchRemoveHistoryEvent() when removeHistory != null:
return removeHistory(_that.searchId);case _MarketSearchToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.product);case _MarketSearchChangeCartQuantityEvent() when changeCartQuantity != null:
return changeCartQuantity(_that.product,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _MarketSearchLoadInitialEvent implements MarketSearchEvent {
   _MarketSearchLoadInitialEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketSearchLoadInitialEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketSearchEvent.loadInitial()';
}


}




/// @nodoc


class _MarketSearchQueryChangedEvent implements MarketSearchEvent {
   _MarketSearchQueryChangedEvent(this.query);
  

 final  String query;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketSearchQueryChangedEventCopyWith<_MarketSearchQueryChangedEvent> get copyWith => __$MarketSearchQueryChangedEventCopyWithImpl<_MarketSearchQueryChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketSearchQueryChangedEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'MarketSearchEvent.queryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class _$MarketSearchQueryChangedEventCopyWith<$Res> implements $MarketSearchEventCopyWith<$Res> {
  factory _$MarketSearchQueryChangedEventCopyWith(_MarketSearchQueryChangedEvent value, $Res Function(_MarketSearchQueryChangedEvent) _then) = __$MarketSearchQueryChangedEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$MarketSearchQueryChangedEventCopyWithImpl<$Res>
    implements _$MarketSearchQueryChangedEventCopyWith<$Res> {
  __$MarketSearchQueryChangedEventCopyWithImpl(this._self, this._then);

  final _MarketSearchQueryChangedEvent _self;
  final $Res Function(_MarketSearchQueryChangedEvent) _then;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_MarketSearchQueryChangedEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MarketSearchSearchEvent implements MarketSearchEvent {
   _MarketSearchSearchEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketSearchSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketSearchEvent.search()';
}


}




/// @nodoc


class _MarketSearchSubmitEvent implements MarketSearchEvent {
   _MarketSearchSubmitEvent(this.query);
  

 final  String query;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketSearchSubmitEventCopyWith<_MarketSearchSubmitEvent> get copyWith => __$MarketSearchSubmitEventCopyWithImpl<_MarketSearchSubmitEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketSearchSubmitEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'MarketSearchEvent.submit(query: $query)';
}


}

/// @nodoc
abstract mixin class _$MarketSearchSubmitEventCopyWith<$Res> implements $MarketSearchEventCopyWith<$Res> {
  factory _$MarketSearchSubmitEventCopyWith(_MarketSearchSubmitEvent value, $Res Function(_MarketSearchSubmitEvent) _then) = __$MarketSearchSubmitEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$MarketSearchSubmitEventCopyWithImpl<$Res>
    implements _$MarketSearchSubmitEventCopyWith<$Res> {
  __$MarketSearchSubmitEventCopyWithImpl(this._self, this._then);

  final _MarketSearchSubmitEvent _self;
  final $Res Function(_MarketSearchSubmitEvent) _then;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_MarketSearchSubmitEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MarketSearchLoadMoreEvent implements MarketSearchEvent {
   _MarketSearchLoadMoreEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketSearchLoadMoreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketSearchEvent.loadMore()';
}


}




/// @nodoc


class _MarketSearchProductChangedEvent implements MarketSearchEvent {
   _MarketSearchProductChangedEvent({required this.change});
  

 final  ItemChange change;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketSearchProductChangedEventCopyWith<_MarketSearchProductChangedEvent> get copyWith => __$MarketSearchProductChangedEventCopyWithImpl<_MarketSearchProductChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketSearchProductChangedEvent&&(identical(other.change, change) || other.change == change));
}


@override
int get hashCode => Object.hash(runtimeType,change);

@override
String toString() {
  return 'MarketSearchEvent.productChanged(change: $change)';
}


}

/// @nodoc
abstract mixin class _$MarketSearchProductChangedEventCopyWith<$Res> implements $MarketSearchEventCopyWith<$Res> {
  factory _$MarketSearchProductChangedEventCopyWith(_MarketSearchProductChangedEvent value, $Res Function(_MarketSearchProductChangedEvent) _then) = __$MarketSearchProductChangedEventCopyWithImpl;
@useResult
$Res call({
 ItemChange change
});




}
/// @nodoc
class __$MarketSearchProductChangedEventCopyWithImpl<$Res>
    implements _$MarketSearchProductChangedEventCopyWith<$Res> {
  __$MarketSearchProductChangedEventCopyWithImpl(this._self, this._then);

  final _MarketSearchProductChangedEvent _self;
  final $Res Function(_MarketSearchProductChangedEvent) _then;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? change = null,}) {
  return _then(_MarketSearchProductChangedEvent(
change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as ItemChange,
  ));
}


}

/// @nodoc


class _MarketSearchChangeSortEvent implements MarketSearchEvent {
   _MarketSearchChangeSortEvent(this.sort);
  

 final  MarketProductSort sort;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketSearchChangeSortEventCopyWith<_MarketSearchChangeSortEvent> get copyWith => __$MarketSearchChangeSortEventCopyWithImpl<_MarketSearchChangeSortEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketSearchChangeSortEvent&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,sort);

@override
String toString() {
  return 'MarketSearchEvent.changeSort(sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$MarketSearchChangeSortEventCopyWith<$Res> implements $MarketSearchEventCopyWith<$Res> {
  factory _$MarketSearchChangeSortEventCopyWith(_MarketSearchChangeSortEvent value, $Res Function(_MarketSearchChangeSortEvent) _then) = __$MarketSearchChangeSortEventCopyWithImpl;
@useResult
$Res call({
 MarketProductSort sort
});




}
/// @nodoc
class __$MarketSearchChangeSortEventCopyWithImpl<$Res>
    implements _$MarketSearchChangeSortEventCopyWith<$Res> {
  __$MarketSearchChangeSortEventCopyWithImpl(this._self, this._then);

  final _MarketSearchChangeSortEvent _self;
  final $Res Function(_MarketSearchChangeSortEvent) _then;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sort = null,}) {
  return _then(_MarketSearchChangeSortEvent(
null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as MarketProductSort,
  ));
}


}

/// @nodoc


class _MarketSearchRemoveHistoryEvent implements MarketSearchEvent {
   _MarketSearchRemoveHistoryEvent(this.searchId);
  

 final  int searchId;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketSearchRemoveHistoryEventCopyWith<_MarketSearchRemoveHistoryEvent> get copyWith => __$MarketSearchRemoveHistoryEventCopyWithImpl<_MarketSearchRemoveHistoryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketSearchRemoveHistoryEvent&&(identical(other.searchId, searchId) || other.searchId == searchId));
}


@override
int get hashCode => Object.hash(runtimeType,searchId);

@override
String toString() {
  return 'MarketSearchEvent.removeHistory(searchId: $searchId)';
}


}

/// @nodoc
abstract mixin class _$MarketSearchRemoveHistoryEventCopyWith<$Res> implements $MarketSearchEventCopyWith<$Res> {
  factory _$MarketSearchRemoveHistoryEventCopyWith(_MarketSearchRemoveHistoryEvent value, $Res Function(_MarketSearchRemoveHistoryEvent) _then) = __$MarketSearchRemoveHistoryEventCopyWithImpl;
@useResult
$Res call({
 int searchId
});




}
/// @nodoc
class __$MarketSearchRemoveHistoryEventCopyWithImpl<$Res>
    implements _$MarketSearchRemoveHistoryEventCopyWith<$Res> {
  __$MarketSearchRemoveHistoryEventCopyWithImpl(this._self, this._then);

  final _MarketSearchRemoveHistoryEvent _self;
  final $Res Function(_MarketSearchRemoveHistoryEvent) _then;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchId = null,}) {
  return _then(_MarketSearchRemoveHistoryEvent(
null == searchId ? _self.searchId : searchId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _MarketSearchToggleFavoriteEvent implements MarketSearchEvent {
   _MarketSearchToggleFavoriteEvent({required this.product});
  

 final  MarketProduct product;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketSearchToggleFavoriteEventCopyWith<_MarketSearchToggleFavoriteEvent> get copyWith => __$MarketSearchToggleFavoriteEventCopyWithImpl<_MarketSearchToggleFavoriteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketSearchToggleFavoriteEvent&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'MarketSearchEvent.toggleFavorite(product: $product)';
}


}

/// @nodoc
abstract mixin class _$MarketSearchToggleFavoriteEventCopyWith<$Res> implements $MarketSearchEventCopyWith<$Res> {
  factory _$MarketSearchToggleFavoriteEventCopyWith(_MarketSearchToggleFavoriteEvent value, $Res Function(_MarketSearchToggleFavoriteEvent) _then) = __$MarketSearchToggleFavoriteEventCopyWithImpl;
@useResult
$Res call({
 MarketProduct product
});




}
/// @nodoc
class __$MarketSearchToggleFavoriteEventCopyWithImpl<$Res>
    implements _$MarketSearchToggleFavoriteEventCopyWith<$Res> {
  __$MarketSearchToggleFavoriteEventCopyWithImpl(this._self, this._then);

  final _MarketSearchToggleFavoriteEvent _self;
  final $Res Function(_MarketSearchToggleFavoriteEvent) _then;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_MarketSearchToggleFavoriteEvent(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketProduct,
  ));
}


}

/// @nodoc


class _MarketSearchChangeCartQuantityEvent implements MarketSearchEvent {
   _MarketSearchChangeCartQuantityEvent({required this.product, required this.quantity});
  

 final  MarketProduct product;
 final  int quantity;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketSearchChangeCartQuantityEventCopyWith<_MarketSearchChangeCartQuantityEvent> get copyWith => __$MarketSearchChangeCartQuantityEventCopyWithImpl<_MarketSearchChangeCartQuantityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketSearchChangeCartQuantityEvent&&(identical(other.product, product) || other.product == product)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,product,quantity);

@override
String toString() {
  return 'MarketSearchEvent.changeCartQuantity(product: $product, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$MarketSearchChangeCartQuantityEventCopyWith<$Res> implements $MarketSearchEventCopyWith<$Res> {
  factory _$MarketSearchChangeCartQuantityEventCopyWith(_MarketSearchChangeCartQuantityEvent value, $Res Function(_MarketSearchChangeCartQuantityEvent) _then) = __$MarketSearchChangeCartQuantityEventCopyWithImpl;
@useResult
$Res call({
 MarketProduct product, int quantity
});




}
/// @nodoc
class __$MarketSearchChangeCartQuantityEventCopyWithImpl<$Res>
    implements _$MarketSearchChangeCartQuantityEventCopyWith<$Res> {
  __$MarketSearchChangeCartQuantityEventCopyWithImpl(this._self, this._then);

  final _MarketSearchChangeCartQuantityEvent _self;
  final $Res Function(_MarketSearchChangeCartQuantityEvent) _then;

/// Create a copy of MarketSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,Object? quantity = null,}) {
  return _then(_MarketSearchChangeCartQuantityEvent(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketProduct,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MarketSearchState {

 String get query; List<MarketSearchHistory> get history; List<String> get suggestions; List<MarketProduct> get products; int get totalItems; MarketProductSort get sort; int get page; bool get isLast; bool get isLoading; bool get isFirstLoading; bool get isHintsLoading; String? get errorMessage;
/// Create a copy of MarketSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketSearchStateCopyWith<MarketSearchState> get copyWith => _$MarketSearchStateCopyWithImpl<MarketSearchState>(this as MarketSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketSearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.history, history)&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.page, page) || other.page == page)&&(identical(other.isLast, isLast) || other.isLast == isLast)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFirstLoading, isFirstLoading) || other.isFirstLoading == isFirstLoading)&&(identical(other.isHintsLoading, isHintsLoading) || other.isHintsLoading == isHintsLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(history),const DeepCollectionEquality().hash(suggestions),const DeepCollectionEquality().hash(products),totalItems,sort,page,isLast,isLoading,isFirstLoading,isHintsLoading,errorMessage);

@override
String toString() {
  return 'MarketSearchState(query: $query, history: $history, suggestions: $suggestions, products: $products, totalItems: $totalItems, sort: $sort, page: $page, isLast: $isLast, isLoading: $isLoading, isFirstLoading: $isFirstLoading, isHintsLoading: $isHintsLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MarketSearchStateCopyWith<$Res>  {
  factory $MarketSearchStateCopyWith(MarketSearchState value, $Res Function(MarketSearchState) _then) = _$MarketSearchStateCopyWithImpl;
@useResult
$Res call({
 String query, List<MarketSearchHistory> history, List<String> suggestions, List<MarketProduct> products, int totalItems, MarketProductSort sort, int page, bool isLast, bool isLoading, bool isFirstLoading, bool isHintsLoading, String? errorMessage
});




}
/// @nodoc
class _$MarketSearchStateCopyWithImpl<$Res>
    implements $MarketSearchStateCopyWith<$Res> {
  _$MarketSearchStateCopyWithImpl(this._self, this._then);

  final MarketSearchState _self;
  final $Res Function(MarketSearchState) _then;

/// Create a copy of MarketSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? history = null,Object? suggestions = null,Object? products = null,Object? totalItems = null,Object? sort = null,Object? page = null,Object? isLast = null,Object? isLoading = null,Object? isFirstLoading = null,Object? isHintsLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<MarketSearchHistory>,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<MarketProduct>,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as MarketProductSort,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLast: null == isLast ? _self.isLast : isLast // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFirstLoading: null == isFirstLoading ? _self.isFirstLoading : isFirstLoading // ignore: cast_nullable_to_non_nullable
as bool,isHintsLoading: null == isHintsLoading ? _self.isHintsLoading : isHintsLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketSearchState].
extension MarketSearchStatePatterns on MarketSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketSearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketSearchState value)  $default,){
final _that = this;
switch (_that) {
case _MarketSearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _MarketSearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<MarketSearchHistory> history,  List<String> suggestions,  List<MarketProduct> products,  int totalItems,  MarketProductSort sort,  int page,  bool isLast,  bool isLoading,  bool isFirstLoading,  bool isHintsLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketSearchState() when $default != null:
return $default(_that.query,_that.history,_that.suggestions,_that.products,_that.totalItems,_that.sort,_that.page,_that.isLast,_that.isLoading,_that.isFirstLoading,_that.isHintsLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<MarketSearchHistory> history,  List<String> suggestions,  List<MarketProduct> products,  int totalItems,  MarketProductSort sort,  int page,  bool isLast,  bool isLoading,  bool isFirstLoading,  bool isHintsLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MarketSearchState():
return $default(_that.query,_that.history,_that.suggestions,_that.products,_that.totalItems,_that.sort,_that.page,_that.isLast,_that.isLoading,_that.isFirstLoading,_that.isHintsLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<MarketSearchHistory> history,  List<String> suggestions,  List<MarketProduct> products,  int totalItems,  MarketProductSort sort,  int page,  bool isLast,  bool isLoading,  bool isFirstLoading,  bool isHintsLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MarketSearchState() when $default != null:
return $default(_that.query,_that.history,_that.suggestions,_that.products,_that.totalItems,_that.sort,_that.page,_that.isLast,_that.isLoading,_that.isFirstLoading,_that.isHintsLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MarketSearchState extends MarketSearchState {
   _MarketSearchState({this.query = "", final  List<MarketSearchHistory> history = const [], final  List<String> suggestions = const [], final  List<MarketProduct> products = const [], this.totalItems = 0, this.sort = MarketProductSort.popular, this.page = 1, this.isLast = false, this.isLoading = false, this.isFirstLoading = false, this.isHintsLoading = false, this.errorMessage}): _history = history,_suggestions = suggestions,_products = products,super._();
  

@override@JsonKey() final  String query;
 final  List<MarketSearchHistory> _history;
@override@JsonKey() List<MarketSearchHistory> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

 final  List<String> _suggestions;
@override@JsonKey() List<String> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

 final  List<MarketProduct> _products;
@override@JsonKey() List<MarketProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override@JsonKey() final  int totalItems;
@override@JsonKey() final  MarketProductSort sort;
@override@JsonKey() final  int page;
@override@JsonKey() final  bool isLast;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isFirstLoading;
@override@JsonKey() final  bool isHintsLoading;
@override final  String? errorMessage;

/// Create a copy of MarketSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketSearchStateCopyWith<_MarketSearchState> get copyWith => __$MarketSearchStateCopyWithImpl<_MarketSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketSearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._history, _history)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.page, page) || other.page == page)&&(identical(other.isLast, isLast) || other.isLast == isLast)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFirstLoading, isFirstLoading) || other.isFirstLoading == isFirstLoading)&&(identical(other.isHintsLoading, isHintsLoading) || other.isHintsLoading == isHintsLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_history),const DeepCollectionEquality().hash(_suggestions),const DeepCollectionEquality().hash(_products),totalItems,sort,page,isLast,isLoading,isFirstLoading,isHintsLoading,errorMessage);

@override
String toString() {
  return 'MarketSearchState(query: $query, history: $history, suggestions: $suggestions, products: $products, totalItems: $totalItems, sort: $sort, page: $page, isLast: $isLast, isLoading: $isLoading, isFirstLoading: $isFirstLoading, isHintsLoading: $isHintsLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MarketSearchStateCopyWith<$Res> implements $MarketSearchStateCopyWith<$Res> {
  factory _$MarketSearchStateCopyWith(_MarketSearchState value, $Res Function(_MarketSearchState) _then) = __$MarketSearchStateCopyWithImpl;
@override @useResult
$Res call({
 String query, List<MarketSearchHistory> history, List<String> suggestions, List<MarketProduct> products, int totalItems, MarketProductSort sort, int page, bool isLast, bool isLoading, bool isFirstLoading, bool isHintsLoading, String? errorMessage
});




}
/// @nodoc
class __$MarketSearchStateCopyWithImpl<$Res>
    implements _$MarketSearchStateCopyWith<$Res> {
  __$MarketSearchStateCopyWithImpl(this._self, this._then);

  final _MarketSearchState _self;
  final $Res Function(_MarketSearchState) _then;

/// Create a copy of MarketSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? history = null,Object? suggestions = null,Object? products = null,Object? totalItems = null,Object? sort = null,Object? page = null,Object? isLast = null,Object? isLoading = null,Object? isFirstLoading = null,Object? isHintsLoading = null,Object? errorMessage = freezed,}) {
  return _then(_MarketSearchState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<MarketSearchHistory>,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<MarketProduct>,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as MarketProductSort,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLast: null == isLast ? _self.isLast : isLast // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFirstLoading: null == isFirstLoading ? _self.isFirstLoading : isFirstLoading // ignore: cast_nullable_to_non_nullable
as bool,isHintsLoading: null == isHintsLoading ? _self.isHintsLoading : isHintsLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
