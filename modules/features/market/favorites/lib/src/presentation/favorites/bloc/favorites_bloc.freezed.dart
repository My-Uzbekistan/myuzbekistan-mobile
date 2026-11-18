// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoritesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesEvent()';
}


}

/// @nodoc
class $FavoritesEventCopyWith<$Res>  {
$FavoritesEventCopyWith(FavoritesEvent _, $Res Function(FavoritesEvent) __);
}


/// Adds pattern-matching-related methods to [FavoritesEvent].
extension FavoritesEventPatterns on FavoritesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FavoritesLoadDataEvent value)?  loadData,TResult Function( _FavoritesToggleFavoriteEvent value)?  toggleFavorite,TResult Function( _FavoritesProductChangedEvent value)?  productChanged,TResult Function( _FavoritesChangeCartQuantityEvent value)?  changeCartQuantity,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoritesLoadDataEvent() when loadData != null:
return loadData(_that);case _FavoritesToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _FavoritesProductChangedEvent() when productChanged != null:
return productChanged(_that);case _FavoritesChangeCartQuantityEvent() when changeCartQuantity != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FavoritesLoadDataEvent value)  loadData,required TResult Function( _FavoritesToggleFavoriteEvent value)  toggleFavorite,required TResult Function( _FavoritesProductChangedEvent value)  productChanged,required TResult Function( _FavoritesChangeCartQuantityEvent value)  changeCartQuantity,}){
final _that = this;
switch (_that) {
case _FavoritesLoadDataEvent():
return loadData(_that);case _FavoritesToggleFavoriteEvent():
return toggleFavorite(_that);case _FavoritesProductChangedEvent():
return productChanged(_that);case _FavoritesChangeCartQuantityEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FavoritesLoadDataEvent value)?  loadData,TResult? Function( _FavoritesToggleFavoriteEvent value)?  toggleFavorite,TResult? Function( _FavoritesProductChangedEvent value)?  productChanged,TResult? Function( _FavoritesChangeCartQuantityEvent value)?  changeCartQuantity,}){
final _that = this;
switch (_that) {
case _FavoritesLoadDataEvent() when loadData != null:
return loadData(_that);case _FavoritesToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _FavoritesProductChangedEvent() when productChanged != null:
return productChanged(_that);case _FavoritesChangeCartQuantityEvent() when changeCartQuantity != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadData,TResult Function( MarketProduct product)?  toggleFavorite,TResult Function( ItemChange change)?  productChanged,TResult Function( MarketProduct product,  int quantity)?  changeCartQuantity,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoritesLoadDataEvent() when loadData != null:
return loadData();case _FavoritesToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.product);case _FavoritesProductChangedEvent() when productChanged != null:
return productChanged(_that.change);case _FavoritesChangeCartQuantityEvent() when changeCartQuantity != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadData,required TResult Function( MarketProduct product)  toggleFavorite,required TResult Function( ItemChange change)  productChanged,required TResult Function( MarketProduct product,  int quantity)  changeCartQuantity,}) {final _that = this;
switch (_that) {
case _FavoritesLoadDataEvent():
return loadData();case _FavoritesToggleFavoriteEvent():
return toggleFavorite(_that.product);case _FavoritesProductChangedEvent():
return productChanged(_that.change);case _FavoritesChangeCartQuantityEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadData,TResult? Function( MarketProduct product)?  toggleFavorite,TResult? Function( ItemChange change)?  productChanged,TResult? Function( MarketProduct product,  int quantity)?  changeCartQuantity,}) {final _that = this;
switch (_that) {
case _FavoritesLoadDataEvent() when loadData != null:
return loadData();case _FavoritesToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.product);case _FavoritesProductChangedEvent() when productChanged != null:
return productChanged(_that.change);case _FavoritesChangeCartQuantityEvent() when changeCartQuantity != null:
return changeCartQuantity(_that.product,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _FavoritesLoadDataEvent implements FavoritesEvent {
   _FavoritesLoadDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritesLoadDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesEvent.loadData()';
}


}




/// @nodoc


class _FavoritesToggleFavoriteEvent implements FavoritesEvent {
   _FavoritesToggleFavoriteEvent({required this.product});
  

 final  MarketProduct product;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritesToggleFavoriteEventCopyWith<_FavoritesToggleFavoriteEvent> get copyWith => __$FavoritesToggleFavoriteEventCopyWithImpl<_FavoritesToggleFavoriteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritesToggleFavoriteEvent&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'FavoritesEvent.toggleFavorite(product: $product)';
}


}

/// @nodoc
abstract mixin class _$FavoritesToggleFavoriteEventCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory _$FavoritesToggleFavoriteEventCopyWith(_FavoritesToggleFavoriteEvent value, $Res Function(_FavoritesToggleFavoriteEvent) _then) = __$FavoritesToggleFavoriteEventCopyWithImpl;
@useResult
$Res call({
 MarketProduct product
});




}
/// @nodoc
class __$FavoritesToggleFavoriteEventCopyWithImpl<$Res>
    implements _$FavoritesToggleFavoriteEventCopyWith<$Res> {
  __$FavoritesToggleFavoriteEventCopyWithImpl(this._self, this._then);

  final _FavoritesToggleFavoriteEvent _self;
  final $Res Function(_FavoritesToggleFavoriteEvent) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_FavoritesToggleFavoriteEvent(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketProduct,
  ));
}


}

/// @nodoc


class _FavoritesProductChangedEvent implements FavoritesEvent {
   _FavoritesProductChangedEvent({required this.change});
  

 final  ItemChange change;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritesProductChangedEventCopyWith<_FavoritesProductChangedEvent> get copyWith => __$FavoritesProductChangedEventCopyWithImpl<_FavoritesProductChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritesProductChangedEvent&&(identical(other.change, change) || other.change == change));
}


@override
int get hashCode => Object.hash(runtimeType,change);

@override
String toString() {
  return 'FavoritesEvent.productChanged(change: $change)';
}


}

/// @nodoc
abstract mixin class _$FavoritesProductChangedEventCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory _$FavoritesProductChangedEventCopyWith(_FavoritesProductChangedEvent value, $Res Function(_FavoritesProductChangedEvent) _then) = __$FavoritesProductChangedEventCopyWithImpl;
@useResult
$Res call({
 ItemChange change
});




}
/// @nodoc
class __$FavoritesProductChangedEventCopyWithImpl<$Res>
    implements _$FavoritesProductChangedEventCopyWith<$Res> {
  __$FavoritesProductChangedEventCopyWithImpl(this._self, this._then);

  final _FavoritesProductChangedEvent _self;
  final $Res Function(_FavoritesProductChangedEvent) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? change = null,}) {
  return _then(_FavoritesProductChangedEvent(
change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as ItemChange,
  ));
}


}

/// @nodoc


class _FavoritesChangeCartQuantityEvent implements FavoritesEvent {
   _FavoritesChangeCartQuantityEvent({required this.product, required this.quantity});
  

 final  MarketProduct product;
 final  int quantity;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritesChangeCartQuantityEventCopyWith<_FavoritesChangeCartQuantityEvent> get copyWith => __$FavoritesChangeCartQuantityEventCopyWithImpl<_FavoritesChangeCartQuantityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritesChangeCartQuantityEvent&&(identical(other.product, product) || other.product == product)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,product,quantity);

@override
String toString() {
  return 'FavoritesEvent.changeCartQuantity(product: $product, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$FavoritesChangeCartQuantityEventCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory _$FavoritesChangeCartQuantityEventCopyWith(_FavoritesChangeCartQuantityEvent value, $Res Function(_FavoritesChangeCartQuantityEvent) _then) = __$FavoritesChangeCartQuantityEventCopyWithImpl;
@useResult
$Res call({
 MarketProduct product, int quantity
});




}
/// @nodoc
class __$FavoritesChangeCartQuantityEventCopyWithImpl<$Res>
    implements _$FavoritesChangeCartQuantityEventCopyWith<$Res> {
  __$FavoritesChangeCartQuantityEventCopyWithImpl(this._self, this._then);

  final _FavoritesChangeCartQuantityEvent _self;
  final $Res Function(_FavoritesChangeCartQuantityEvent) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,Object? quantity = null,}) {
  return _then(_FavoritesChangeCartQuantityEvent(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketProduct,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$FavoritesState {

 List<MarketProduct> get products; bool get isLoading; bool get loadFailed; String? get errorMessage;
/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesStateCopyWith<FavoritesState> get copyWith => _$FavoritesStateCopyWithImpl<FavoritesState>(this as FavoritesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesState&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'FavoritesState(products: $products, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $FavoritesStateCopyWith<$Res>  {
  factory $FavoritesStateCopyWith(FavoritesState value, $Res Function(FavoritesState) _then) = _$FavoritesStateCopyWithImpl;
@useResult
$Res call({
 List<MarketProduct> products, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._self, this._then);

  final FavoritesState _self;
  final $Res Function(FavoritesState) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<MarketProduct>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoritesState].
extension FavoritesStatePatterns on FavoritesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoritesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoritesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoritesState value)  $default,){
final _that = this;
switch (_that) {
case _FavoritesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoritesState value)?  $default,){
final _that = this;
switch (_that) {
case _FavoritesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MarketProduct> products,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoritesState() when $default != null:
return $default(_that.products,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MarketProduct> products,  bool isLoading,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _FavoritesState():
return $default(_that.products,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MarketProduct> products,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _FavoritesState() when $default != null:
return $default(_that.products,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _FavoritesState extends FavoritesState {
   _FavoritesState({final  List<MarketProduct> products = const [], this.isLoading = false, this.loadFailed = false, this.errorMessage}): _products = products,super._();
  

 final  List<MarketProduct> _products;
@override@JsonKey() List<MarketProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritesStateCopyWith<_FavoritesState> get copyWith => __$FavoritesStateCopyWithImpl<_FavoritesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritesState&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'FavoritesState(products: $products, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$FavoritesStateCopyWith<$Res> implements $FavoritesStateCopyWith<$Res> {
  factory _$FavoritesStateCopyWith(_FavoritesState value, $Res Function(_FavoritesState) _then) = __$FavoritesStateCopyWithImpl;
@override @useResult
$Res call({
 List<MarketProduct> products, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$FavoritesStateCopyWithImpl<$Res>
    implements _$FavoritesStateCopyWith<$Res> {
  __$FavoritesStateCopyWithImpl(this._self, this._then);

  final _FavoritesState _self;
  final $Res Function(_FavoritesState) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_FavoritesState(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<MarketProduct>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
