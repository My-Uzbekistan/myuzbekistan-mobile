// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketCategoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketCategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketCategoryEvent()';
}


}

/// @nodoc
class $MarketCategoryEventCopyWith<$Res>  {
$MarketCategoryEventCopyWith(MarketCategoryEvent _, $Res Function(MarketCategoryEvent) __);
}


/// Adds pattern-matching-related methods to [MarketCategoryEvent].
extension MarketCategoryEventPatterns on MarketCategoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MarketCategoryStartEvent value)?  start,TResult Function( _MarketCategoryRefreshEvent value)?  refresh,TResult Function( _MarketCategoryProductChangedEvent value)?  productChanged,TResult Function( _MarketCategoryLoadCartSummaryEvent value)?  loadCartSummary,TResult Function( _MarketCategoryLoadMoreEvent value)?  loadMore,TResult Function( _MarketCategoryChangeSortEvent value)?  changeSort,TResult Function( _MarketCategoryToggleFavoriteEvent value)?  toggleFavorite,TResult Function( _MarketCategoryChangeCartQuantityEvent value)?  changeCartQuantity,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketCategoryStartEvent() when start != null:
return start(_that);case _MarketCategoryRefreshEvent() when refresh != null:
return refresh(_that);case _MarketCategoryProductChangedEvent() when productChanged != null:
return productChanged(_that);case _MarketCategoryLoadCartSummaryEvent() when loadCartSummary != null:
return loadCartSummary(_that);case _MarketCategoryLoadMoreEvent() when loadMore != null:
return loadMore(_that);case _MarketCategoryChangeSortEvent() when changeSort != null:
return changeSort(_that);case _MarketCategoryToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _MarketCategoryChangeCartQuantityEvent() when changeCartQuantity != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MarketCategoryStartEvent value)  start,required TResult Function( _MarketCategoryRefreshEvent value)  refresh,required TResult Function( _MarketCategoryProductChangedEvent value)  productChanged,required TResult Function( _MarketCategoryLoadCartSummaryEvent value)  loadCartSummary,required TResult Function( _MarketCategoryLoadMoreEvent value)  loadMore,required TResult Function( _MarketCategoryChangeSortEvent value)  changeSort,required TResult Function( _MarketCategoryToggleFavoriteEvent value)  toggleFavorite,required TResult Function( _MarketCategoryChangeCartQuantityEvent value)  changeCartQuantity,}){
final _that = this;
switch (_that) {
case _MarketCategoryStartEvent():
return start(_that);case _MarketCategoryRefreshEvent():
return refresh(_that);case _MarketCategoryProductChangedEvent():
return productChanged(_that);case _MarketCategoryLoadCartSummaryEvent():
return loadCartSummary(_that);case _MarketCategoryLoadMoreEvent():
return loadMore(_that);case _MarketCategoryChangeSortEvent():
return changeSort(_that);case _MarketCategoryToggleFavoriteEvent():
return toggleFavorite(_that);case _MarketCategoryChangeCartQuantityEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MarketCategoryStartEvent value)?  start,TResult? Function( _MarketCategoryRefreshEvent value)?  refresh,TResult? Function( _MarketCategoryProductChangedEvent value)?  productChanged,TResult? Function( _MarketCategoryLoadCartSummaryEvent value)?  loadCartSummary,TResult? Function( _MarketCategoryLoadMoreEvent value)?  loadMore,TResult? Function( _MarketCategoryChangeSortEvent value)?  changeSort,TResult? Function( _MarketCategoryToggleFavoriteEvent value)?  toggleFavorite,TResult? Function( _MarketCategoryChangeCartQuantityEvent value)?  changeCartQuantity,}){
final _that = this;
switch (_that) {
case _MarketCategoryStartEvent() when start != null:
return start(_that);case _MarketCategoryRefreshEvent() when refresh != null:
return refresh(_that);case _MarketCategoryProductChangedEvent() when productChanged != null:
return productChanged(_that);case _MarketCategoryLoadCartSummaryEvent() when loadCartSummary != null:
return loadCartSummary(_that);case _MarketCategoryLoadMoreEvent() when loadMore != null:
return loadMore(_that);case _MarketCategoryChangeSortEvent() when changeSort != null:
return changeSort(_that);case _MarketCategoryToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _MarketCategoryChangeCartQuantityEvent() when changeCartQuantity != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? categoryId,  String? block,  String categoryName,  int productCount)?  start,TResult Function()?  refresh,TResult Function( ItemChange change)?  productChanged,TResult Function()?  loadCartSummary,TResult Function()?  loadMore,TResult Function( MarketProductSort sort)?  changeSort,TResult Function( MarketProduct product)?  toggleFavorite,TResult Function( MarketProduct product,  int quantity)?  changeCartQuantity,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketCategoryStartEvent() when start != null:
return start(_that.categoryId,_that.block,_that.categoryName,_that.productCount);case _MarketCategoryRefreshEvent() when refresh != null:
return refresh();case _MarketCategoryProductChangedEvent() when productChanged != null:
return productChanged(_that.change);case _MarketCategoryLoadCartSummaryEvent() when loadCartSummary != null:
return loadCartSummary();case _MarketCategoryLoadMoreEvent() when loadMore != null:
return loadMore();case _MarketCategoryChangeSortEvent() when changeSort != null:
return changeSort(_that.sort);case _MarketCategoryToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.product);case _MarketCategoryChangeCartQuantityEvent() when changeCartQuantity != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? categoryId,  String? block,  String categoryName,  int productCount)  start,required TResult Function()  refresh,required TResult Function( ItemChange change)  productChanged,required TResult Function()  loadCartSummary,required TResult Function()  loadMore,required TResult Function( MarketProductSort sort)  changeSort,required TResult Function( MarketProduct product)  toggleFavorite,required TResult Function( MarketProduct product,  int quantity)  changeCartQuantity,}) {final _that = this;
switch (_that) {
case _MarketCategoryStartEvent():
return start(_that.categoryId,_that.block,_that.categoryName,_that.productCount);case _MarketCategoryRefreshEvent():
return refresh();case _MarketCategoryProductChangedEvent():
return productChanged(_that.change);case _MarketCategoryLoadCartSummaryEvent():
return loadCartSummary();case _MarketCategoryLoadMoreEvent():
return loadMore();case _MarketCategoryChangeSortEvent():
return changeSort(_that.sort);case _MarketCategoryToggleFavoriteEvent():
return toggleFavorite(_that.product);case _MarketCategoryChangeCartQuantityEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? categoryId,  String? block,  String categoryName,  int productCount)?  start,TResult? Function()?  refresh,TResult? Function( ItemChange change)?  productChanged,TResult? Function()?  loadCartSummary,TResult? Function()?  loadMore,TResult? Function( MarketProductSort sort)?  changeSort,TResult? Function( MarketProduct product)?  toggleFavorite,TResult? Function( MarketProduct product,  int quantity)?  changeCartQuantity,}) {final _that = this;
switch (_that) {
case _MarketCategoryStartEvent() when start != null:
return start(_that.categoryId,_that.block,_that.categoryName,_that.productCount);case _MarketCategoryRefreshEvent() when refresh != null:
return refresh();case _MarketCategoryProductChangedEvent() when productChanged != null:
return productChanged(_that.change);case _MarketCategoryLoadCartSummaryEvent() when loadCartSummary != null:
return loadCartSummary();case _MarketCategoryLoadMoreEvent() when loadMore != null:
return loadMore();case _MarketCategoryChangeSortEvent() when changeSort != null:
return changeSort(_that.sort);case _MarketCategoryToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.product);case _MarketCategoryChangeCartQuantityEvent() when changeCartQuantity != null:
return changeCartQuantity(_that.product,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _MarketCategoryStartEvent implements MarketCategoryEvent {
   _MarketCategoryStartEvent({this.categoryId, this.block, this.categoryName = "", this.productCount = 0});
  

 final  int? categoryId;
 final  String? block;
@JsonKey() final  String categoryName;
@JsonKey() final  int productCount;

/// Create a copy of MarketCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCategoryStartEventCopyWith<_MarketCategoryStartEvent> get copyWith => __$MarketCategoryStartEventCopyWithImpl<_MarketCategoryStartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCategoryStartEvent&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.block, block) || other.block == block)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.productCount, productCount) || other.productCount == productCount));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,block,categoryName,productCount);

@override
String toString() {
  return 'MarketCategoryEvent.start(categoryId: $categoryId, block: $block, categoryName: $categoryName, productCount: $productCount)';
}


}

/// @nodoc
abstract mixin class _$MarketCategoryStartEventCopyWith<$Res> implements $MarketCategoryEventCopyWith<$Res> {
  factory _$MarketCategoryStartEventCopyWith(_MarketCategoryStartEvent value, $Res Function(_MarketCategoryStartEvent) _then) = __$MarketCategoryStartEventCopyWithImpl;
@useResult
$Res call({
 int? categoryId, String? block, String categoryName, int productCount
});




}
/// @nodoc
class __$MarketCategoryStartEventCopyWithImpl<$Res>
    implements _$MarketCategoryStartEventCopyWith<$Res> {
  __$MarketCategoryStartEventCopyWithImpl(this._self, this._then);

  final _MarketCategoryStartEvent _self;
  final $Res Function(_MarketCategoryStartEvent) _then;

/// Create a copy of MarketCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,Object? block = freezed,Object? categoryName = null,Object? productCount = null,}) {
  return _then(_MarketCategoryStartEvent(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,block: freezed == block ? _self.block : block // ignore: cast_nullable_to_non_nullable
as String?,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,productCount: null == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _MarketCategoryRefreshEvent implements MarketCategoryEvent {
   _MarketCategoryRefreshEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCategoryRefreshEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketCategoryEvent.refresh()';
}


}




/// @nodoc


class _MarketCategoryProductChangedEvent implements MarketCategoryEvent {
   _MarketCategoryProductChangedEvent({required this.change});
  

 final  ItemChange change;

/// Create a copy of MarketCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCategoryProductChangedEventCopyWith<_MarketCategoryProductChangedEvent> get copyWith => __$MarketCategoryProductChangedEventCopyWithImpl<_MarketCategoryProductChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCategoryProductChangedEvent&&(identical(other.change, change) || other.change == change));
}


@override
int get hashCode => Object.hash(runtimeType,change);

@override
String toString() {
  return 'MarketCategoryEvent.productChanged(change: $change)';
}


}

/// @nodoc
abstract mixin class _$MarketCategoryProductChangedEventCopyWith<$Res> implements $MarketCategoryEventCopyWith<$Res> {
  factory _$MarketCategoryProductChangedEventCopyWith(_MarketCategoryProductChangedEvent value, $Res Function(_MarketCategoryProductChangedEvent) _then) = __$MarketCategoryProductChangedEventCopyWithImpl;
@useResult
$Res call({
 ItemChange change
});




}
/// @nodoc
class __$MarketCategoryProductChangedEventCopyWithImpl<$Res>
    implements _$MarketCategoryProductChangedEventCopyWith<$Res> {
  __$MarketCategoryProductChangedEventCopyWithImpl(this._self, this._then);

  final _MarketCategoryProductChangedEvent _self;
  final $Res Function(_MarketCategoryProductChangedEvent) _then;

/// Create a copy of MarketCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? change = null,}) {
  return _then(_MarketCategoryProductChangedEvent(
change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as ItemChange,
  ));
}


}

/// @nodoc


class _MarketCategoryLoadCartSummaryEvent implements MarketCategoryEvent {
   _MarketCategoryLoadCartSummaryEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCategoryLoadCartSummaryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketCategoryEvent.loadCartSummary()';
}


}




/// @nodoc


class _MarketCategoryLoadMoreEvent implements MarketCategoryEvent {
   _MarketCategoryLoadMoreEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCategoryLoadMoreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketCategoryEvent.loadMore()';
}


}




/// @nodoc


class _MarketCategoryChangeSortEvent implements MarketCategoryEvent {
   _MarketCategoryChangeSortEvent(this.sort);
  

 final  MarketProductSort sort;

/// Create a copy of MarketCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCategoryChangeSortEventCopyWith<_MarketCategoryChangeSortEvent> get copyWith => __$MarketCategoryChangeSortEventCopyWithImpl<_MarketCategoryChangeSortEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCategoryChangeSortEvent&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,sort);

@override
String toString() {
  return 'MarketCategoryEvent.changeSort(sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$MarketCategoryChangeSortEventCopyWith<$Res> implements $MarketCategoryEventCopyWith<$Res> {
  factory _$MarketCategoryChangeSortEventCopyWith(_MarketCategoryChangeSortEvent value, $Res Function(_MarketCategoryChangeSortEvent) _then) = __$MarketCategoryChangeSortEventCopyWithImpl;
@useResult
$Res call({
 MarketProductSort sort
});




}
/// @nodoc
class __$MarketCategoryChangeSortEventCopyWithImpl<$Res>
    implements _$MarketCategoryChangeSortEventCopyWith<$Res> {
  __$MarketCategoryChangeSortEventCopyWithImpl(this._self, this._then);

  final _MarketCategoryChangeSortEvent _self;
  final $Res Function(_MarketCategoryChangeSortEvent) _then;

/// Create a copy of MarketCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sort = null,}) {
  return _then(_MarketCategoryChangeSortEvent(
null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as MarketProductSort,
  ));
}


}

/// @nodoc


class _MarketCategoryToggleFavoriteEvent implements MarketCategoryEvent {
   _MarketCategoryToggleFavoriteEvent({required this.product});
  

 final  MarketProduct product;

/// Create a copy of MarketCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCategoryToggleFavoriteEventCopyWith<_MarketCategoryToggleFavoriteEvent> get copyWith => __$MarketCategoryToggleFavoriteEventCopyWithImpl<_MarketCategoryToggleFavoriteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCategoryToggleFavoriteEvent&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'MarketCategoryEvent.toggleFavorite(product: $product)';
}


}

/// @nodoc
abstract mixin class _$MarketCategoryToggleFavoriteEventCopyWith<$Res> implements $MarketCategoryEventCopyWith<$Res> {
  factory _$MarketCategoryToggleFavoriteEventCopyWith(_MarketCategoryToggleFavoriteEvent value, $Res Function(_MarketCategoryToggleFavoriteEvent) _then) = __$MarketCategoryToggleFavoriteEventCopyWithImpl;
@useResult
$Res call({
 MarketProduct product
});




}
/// @nodoc
class __$MarketCategoryToggleFavoriteEventCopyWithImpl<$Res>
    implements _$MarketCategoryToggleFavoriteEventCopyWith<$Res> {
  __$MarketCategoryToggleFavoriteEventCopyWithImpl(this._self, this._then);

  final _MarketCategoryToggleFavoriteEvent _self;
  final $Res Function(_MarketCategoryToggleFavoriteEvent) _then;

/// Create a copy of MarketCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_MarketCategoryToggleFavoriteEvent(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketProduct,
  ));
}


}

/// @nodoc


class _MarketCategoryChangeCartQuantityEvent implements MarketCategoryEvent {
   _MarketCategoryChangeCartQuantityEvent({required this.product, required this.quantity});
  

 final  MarketProduct product;
 final  int quantity;

/// Create a copy of MarketCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCategoryChangeCartQuantityEventCopyWith<_MarketCategoryChangeCartQuantityEvent> get copyWith => __$MarketCategoryChangeCartQuantityEventCopyWithImpl<_MarketCategoryChangeCartQuantityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCategoryChangeCartQuantityEvent&&(identical(other.product, product) || other.product == product)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,product,quantity);

@override
String toString() {
  return 'MarketCategoryEvent.changeCartQuantity(product: $product, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$MarketCategoryChangeCartQuantityEventCopyWith<$Res> implements $MarketCategoryEventCopyWith<$Res> {
  factory _$MarketCategoryChangeCartQuantityEventCopyWith(_MarketCategoryChangeCartQuantityEvent value, $Res Function(_MarketCategoryChangeCartQuantityEvent) _then) = __$MarketCategoryChangeCartQuantityEventCopyWithImpl;
@useResult
$Res call({
 MarketProduct product, int quantity
});




}
/// @nodoc
class __$MarketCategoryChangeCartQuantityEventCopyWithImpl<$Res>
    implements _$MarketCategoryChangeCartQuantityEventCopyWith<$Res> {
  __$MarketCategoryChangeCartQuantityEventCopyWithImpl(this._self, this._then);

  final _MarketCategoryChangeCartQuantityEvent _self;
  final $Res Function(_MarketCategoryChangeCartQuantityEvent) _then;

/// Create a copy of MarketCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,Object? quantity = null,}) {
  return _then(_MarketCategoryChangeCartQuantityEvent(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketProduct,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MarketCategoryState {

 int? get categoryId; String? get block; String get categoryName; int get productCount; List<MarketProduct> get products; MarketProductSort get sort; int get page; bool get isLast; bool get isFirstLoading; bool get isLoadingMore; bool get isRefreshing; bool get loadFailed; int get cartCount; int get cartTotal; String? get errorMessage;
/// Create a copy of MarketCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketCategoryStateCopyWith<MarketCategoryState> get copyWith => _$MarketCategoryStateCopyWithImpl<MarketCategoryState>(this as MarketCategoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketCategoryState&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.block, block) || other.block == block)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.page, page) || other.page == page)&&(identical(other.isLast, isLast) || other.isLast == isLast)&&(identical(other.isFirstLoading, isFirstLoading) || other.isFirstLoading == isFirstLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.cartCount, cartCount) || other.cartCount == cartCount)&&(identical(other.cartTotal, cartTotal) || other.cartTotal == cartTotal)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,block,categoryName,productCount,const DeepCollectionEquality().hash(products),sort,page,isLast,isFirstLoading,isLoadingMore,isRefreshing,loadFailed,cartCount,cartTotal,errorMessage);

@override
String toString() {
  return 'MarketCategoryState(categoryId: $categoryId, block: $block, categoryName: $categoryName, productCount: $productCount, products: $products, sort: $sort, page: $page, isLast: $isLast, isFirstLoading: $isFirstLoading, isLoadingMore: $isLoadingMore, isRefreshing: $isRefreshing, loadFailed: $loadFailed, cartCount: $cartCount, cartTotal: $cartTotal, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MarketCategoryStateCopyWith<$Res>  {
  factory $MarketCategoryStateCopyWith(MarketCategoryState value, $Res Function(MarketCategoryState) _then) = _$MarketCategoryStateCopyWithImpl;
@useResult
$Res call({
 int? categoryId, String? block, String categoryName, int productCount, List<MarketProduct> products, MarketProductSort sort, int page, bool isLast, bool isFirstLoading, bool isLoadingMore, bool isRefreshing, bool loadFailed, int cartCount, int cartTotal, String? errorMessage
});




}
/// @nodoc
class _$MarketCategoryStateCopyWithImpl<$Res>
    implements $MarketCategoryStateCopyWith<$Res> {
  _$MarketCategoryStateCopyWithImpl(this._self, this._then);

  final MarketCategoryState _self;
  final $Res Function(MarketCategoryState) _then;

/// Create a copy of MarketCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = freezed,Object? block = freezed,Object? categoryName = null,Object? productCount = null,Object? products = null,Object? sort = null,Object? page = null,Object? isLast = null,Object? isFirstLoading = null,Object? isLoadingMore = null,Object? isRefreshing = null,Object? loadFailed = null,Object? cartCount = null,Object? cartTotal = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,block: freezed == block ? _self.block : block // ignore: cast_nullable_to_non_nullable
as String?,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,productCount: null == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<MarketProduct>,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as MarketProductSort,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLast: null == isLast ? _self.isLast : isLast // ignore: cast_nullable_to_non_nullable
as bool,isFirstLoading: null == isFirstLoading ? _self.isFirstLoading : isFirstLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,cartTotal: null == cartTotal ? _self.cartTotal : cartTotal // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketCategoryState].
extension MarketCategoryStatePatterns on MarketCategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketCategoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketCategoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketCategoryState value)  $default,){
final _that = this;
switch (_that) {
case _MarketCategoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketCategoryState value)?  $default,){
final _that = this;
switch (_that) {
case _MarketCategoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? categoryId,  String? block,  String categoryName,  int productCount,  List<MarketProduct> products,  MarketProductSort sort,  int page,  bool isLast,  bool isFirstLoading,  bool isLoadingMore,  bool isRefreshing,  bool loadFailed,  int cartCount,  int cartTotal,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketCategoryState() when $default != null:
return $default(_that.categoryId,_that.block,_that.categoryName,_that.productCount,_that.products,_that.sort,_that.page,_that.isLast,_that.isFirstLoading,_that.isLoadingMore,_that.isRefreshing,_that.loadFailed,_that.cartCount,_that.cartTotal,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? categoryId,  String? block,  String categoryName,  int productCount,  List<MarketProduct> products,  MarketProductSort sort,  int page,  bool isLast,  bool isFirstLoading,  bool isLoadingMore,  bool isRefreshing,  bool loadFailed,  int cartCount,  int cartTotal,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MarketCategoryState():
return $default(_that.categoryId,_that.block,_that.categoryName,_that.productCount,_that.products,_that.sort,_that.page,_that.isLast,_that.isFirstLoading,_that.isLoadingMore,_that.isRefreshing,_that.loadFailed,_that.cartCount,_that.cartTotal,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? categoryId,  String? block,  String categoryName,  int productCount,  List<MarketProduct> products,  MarketProductSort sort,  int page,  bool isLast,  bool isFirstLoading,  bool isLoadingMore,  bool isRefreshing,  bool loadFailed,  int cartCount,  int cartTotal,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MarketCategoryState() when $default != null:
return $default(_that.categoryId,_that.block,_that.categoryName,_that.productCount,_that.products,_that.sort,_that.page,_that.isLast,_that.isFirstLoading,_that.isLoadingMore,_that.isRefreshing,_that.loadFailed,_that.cartCount,_that.cartTotal,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MarketCategoryState implements MarketCategoryState {
   _MarketCategoryState({this.categoryId, this.block, this.categoryName = "", this.productCount = 0, final  List<MarketProduct> products = const [], this.sort = MarketProductSort.popular, this.page = 1, this.isLast = false, this.isFirstLoading = false, this.isLoadingMore = false, this.isRefreshing = false, this.loadFailed = false, this.cartCount = 0, this.cartTotal = 0, this.errorMessage}): _products = products;
  

@override final  int? categoryId;
@override final  String? block;
@override@JsonKey() final  String categoryName;
@override@JsonKey() final  int productCount;
 final  List<MarketProduct> _products;
@override@JsonKey() List<MarketProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override@JsonKey() final  MarketProductSort sort;
@override@JsonKey() final  int page;
@override@JsonKey() final  bool isLast;
@override@JsonKey() final  bool isFirstLoading;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool isRefreshing;
@override@JsonKey() final  bool loadFailed;
@override@JsonKey() final  int cartCount;
@override@JsonKey() final  int cartTotal;
@override final  String? errorMessage;

/// Create a copy of MarketCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCategoryStateCopyWith<_MarketCategoryState> get copyWith => __$MarketCategoryStateCopyWithImpl<_MarketCategoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCategoryState&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.block, block) || other.block == block)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.page, page) || other.page == page)&&(identical(other.isLast, isLast) || other.isLast == isLast)&&(identical(other.isFirstLoading, isFirstLoading) || other.isFirstLoading == isFirstLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.cartCount, cartCount) || other.cartCount == cartCount)&&(identical(other.cartTotal, cartTotal) || other.cartTotal == cartTotal)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,block,categoryName,productCount,const DeepCollectionEquality().hash(_products),sort,page,isLast,isFirstLoading,isLoadingMore,isRefreshing,loadFailed,cartCount,cartTotal,errorMessage);

@override
String toString() {
  return 'MarketCategoryState(categoryId: $categoryId, block: $block, categoryName: $categoryName, productCount: $productCount, products: $products, sort: $sort, page: $page, isLast: $isLast, isFirstLoading: $isFirstLoading, isLoadingMore: $isLoadingMore, isRefreshing: $isRefreshing, loadFailed: $loadFailed, cartCount: $cartCount, cartTotal: $cartTotal, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MarketCategoryStateCopyWith<$Res> implements $MarketCategoryStateCopyWith<$Res> {
  factory _$MarketCategoryStateCopyWith(_MarketCategoryState value, $Res Function(_MarketCategoryState) _then) = __$MarketCategoryStateCopyWithImpl;
@override @useResult
$Res call({
 int? categoryId, String? block, String categoryName, int productCount, List<MarketProduct> products, MarketProductSort sort, int page, bool isLast, bool isFirstLoading, bool isLoadingMore, bool isRefreshing, bool loadFailed, int cartCount, int cartTotal, String? errorMessage
});




}
/// @nodoc
class __$MarketCategoryStateCopyWithImpl<$Res>
    implements _$MarketCategoryStateCopyWith<$Res> {
  __$MarketCategoryStateCopyWithImpl(this._self, this._then);

  final _MarketCategoryState _self;
  final $Res Function(_MarketCategoryState) _then;

/// Create a copy of MarketCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,Object? block = freezed,Object? categoryName = null,Object? productCount = null,Object? products = null,Object? sort = null,Object? page = null,Object? isLast = null,Object? isFirstLoading = null,Object? isLoadingMore = null,Object? isRefreshing = null,Object? loadFailed = null,Object? cartCount = null,Object? cartTotal = null,Object? errorMessage = freezed,}) {
  return _then(_MarketCategoryState(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,block: freezed == block ? _self.block : block // ignore: cast_nullable_to_non_nullable
as String?,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,productCount: null == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<MarketProduct>,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as MarketProductSort,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLast: null == isLast ? _self.isLast : isLast // ignore: cast_nullable_to_non_nullable
as bool,isFirstLoading: null == isFirstLoading ? _self.isFirstLoading : isFirstLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,cartTotal: null == cartTotal ? _self.cartTotal : cartTotal // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
