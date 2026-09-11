// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketHomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketHomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketHomeEvent()';
}


}

/// @nodoc
class $MarketHomeEventCopyWith<$Res>  {
$MarketHomeEventCopyWith(MarketHomeEvent _, $Res Function(MarketHomeEvent) __);
}


/// Adds pattern-matching-related methods to [MarketHomeEvent].
extension MarketHomeEventPatterns on MarketHomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MarketHomeLoadDataEvent value)?  loadData,TResult Function( _MarketHomeLoadCartEvent value)?  loadCart,TResult Function( _MarketHomeSelectCityEvent value)?  selectCity,TResult Function( _MarketHomeToggleFavoriteEvent value)?  toggleFavorite,TResult Function( _MarketHomeProductChangedEvent value)?  productChanged,TResult Function( _MarketHomeChangeCartQuantityEvent value)?  changeCartQuantity,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketHomeLoadDataEvent() when loadData != null:
return loadData(_that);case _MarketHomeLoadCartEvent() when loadCart != null:
return loadCart(_that);case _MarketHomeSelectCityEvent() when selectCity != null:
return selectCity(_that);case _MarketHomeToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _MarketHomeProductChangedEvent() when productChanged != null:
return productChanged(_that);case _MarketHomeChangeCartQuantityEvent() when changeCartQuantity != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MarketHomeLoadDataEvent value)  loadData,required TResult Function( _MarketHomeLoadCartEvent value)  loadCart,required TResult Function( _MarketHomeSelectCityEvent value)  selectCity,required TResult Function( _MarketHomeToggleFavoriteEvent value)  toggleFavorite,required TResult Function( _MarketHomeProductChangedEvent value)  productChanged,required TResult Function( _MarketHomeChangeCartQuantityEvent value)  changeCartQuantity,}){
final _that = this;
switch (_that) {
case _MarketHomeLoadDataEvent():
return loadData(_that);case _MarketHomeLoadCartEvent():
return loadCart(_that);case _MarketHomeSelectCityEvent():
return selectCity(_that);case _MarketHomeToggleFavoriteEvent():
return toggleFavorite(_that);case _MarketHomeProductChangedEvent():
return productChanged(_that);case _MarketHomeChangeCartQuantityEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MarketHomeLoadDataEvent value)?  loadData,TResult? Function( _MarketHomeLoadCartEvent value)?  loadCart,TResult? Function( _MarketHomeSelectCityEvent value)?  selectCity,TResult? Function( _MarketHomeToggleFavoriteEvent value)?  toggleFavorite,TResult? Function( _MarketHomeProductChangedEvent value)?  productChanged,TResult? Function( _MarketHomeChangeCartQuantityEvent value)?  changeCartQuantity,}){
final _that = this;
switch (_that) {
case _MarketHomeLoadDataEvent() when loadData != null:
return loadData(_that);case _MarketHomeLoadCartEvent() when loadCart != null:
return loadCart(_that);case _MarketHomeSelectCityEvent() when selectCity != null:
return selectCity(_that);case _MarketHomeToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _MarketHomeProductChangedEvent() when productChanged != null:
return productChanged(_that);case _MarketHomeChangeCartQuantityEvent() when changeCartQuantity != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadData,TResult Function()?  loadCart,TResult Function( MarketCity city)?  selectCity,TResult Function( MarketProduct product)?  toggleFavorite,TResult Function( ItemChange change)?  productChanged,TResult Function( MarketProduct product,  int quantity)?  changeCartQuantity,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketHomeLoadDataEvent() when loadData != null:
return loadData();case _MarketHomeLoadCartEvent() when loadCart != null:
return loadCart();case _MarketHomeSelectCityEvent() when selectCity != null:
return selectCity(_that.city);case _MarketHomeToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.product);case _MarketHomeProductChangedEvent() when productChanged != null:
return productChanged(_that.change);case _MarketHomeChangeCartQuantityEvent() when changeCartQuantity != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadData,required TResult Function()  loadCart,required TResult Function( MarketCity city)  selectCity,required TResult Function( MarketProduct product)  toggleFavorite,required TResult Function( ItemChange change)  productChanged,required TResult Function( MarketProduct product,  int quantity)  changeCartQuantity,}) {final _that = this;
switch (_that) {
case _MarketHomeLoadDataEvent():
return loadData();case _MarketHomeLoadCartEvent():
return loadCart();case _MarketHomeSelectCityEvent():
return selectCity(_that.city);case _MarketHomeToggleFavoriteEvent():
return toggleFavorite(_that.product);case _MarketHomeProductChangedEvent():
return productChanged(_that.change);case _MarketHomeChangeCartQuantityEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadData,TResult? Function()?  loadCart,TResult? Function( MarketCity city)?  selectCity,TResult? Function( MarketProduct product)?  toggleFavorite,TResult? Function( ItemChange change)?  productChanged,TResult? Function( MarketProduct product,  int quantity)?  changeCartQuantity,}) {final _that = this;
switch (_that) {
case _MarketHomeLoadDataEvent() when loadData != null:
return loadData();case _MarketHomeLoadCartEvent() when loadCart != null:
return loadCart();case _MarketHomeSelectCityEvent() when selectCity != null:
return selectCity(_that.city);case _MarketHomeToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.product);case _MarketHomeProductChangedEvent() when productChanged != null:
return productChanged(_that.change);case _MarketHomeChangeCartQuantityEvent() when changeCartQuantity != null:
return changeCartQuantity(_that.product,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _MarketHomeLoadDataEvent implements MarketHomeEvent {
   _MarketHomeLoadDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketHomeLoadDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketHomeEvent.loadData()';
}


}




/// @nodoc


class _MarketHomeLoadCartEvent implements MarketHomeEvent {
   _MarketHomeLoadCartEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketHomeLoadCartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketHomeEvent.loadCart()';
}


}




/// @nodoc


class _MarketHomeSelectCityEvent implements MarketHomeEvent {
   _MarketHomeSelectCityEvent({required this.city});
  

 final  MarketCity city;

/// Create a copy of MarketHomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketHomeSelectCityEventCopyWith<_MarketHomeSelectCityEvent> get copyWith => __$MarketHomeSelectCityEventCopyWithImpl<_MarketHomeSelectCityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketHomeSelectCityEvent&&(identical(other.city, city) || other.city == city));
}


@override
int get hashCode => Object.hash(runtimeType,city);

@override
String toString() {
  return 'MarketHomeEvent.selectCity(city: $city)';
}


}

/// @nodoc
abstract mixin class _$MarketHomeSelectCityEventCopyWith<$Res> implements $MarketHomeEventCopyWith<$Res> {
  factory _$MarketHomeSelectCityEventCopyWith(_MarketHomeSelectCityEvent value, $Res Function(_MarketHomeSelectCityEvent) _then) = __$MarketHomeSelectCityEventCopyWithImpl;
@useResult
$Res call({
 MarketCity city
});




}
/// @nodoc
class __$MarketHomeSelectCityEventCopyWithImpl<$Res>
    implements _$MarketHomeSelectCityEventCopyWith<$Res> {
  __$MarketHomeSelectCityEventCopyWithImpl(this._self, this._then);

  final _MarketHomeSelectCityEvent _self;
  final $Res Function(_MarketHomeSelectCityEvent) _then;

/// Create a copy of MarketHomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? city = null,}) {
  return _then(_MarketHomeSelectCityEvent(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as MarketCity,
  ));
}


}

/// @nodoc


class _MarketHomeToggleFavoriteEvent implements MarketHomeEvent {
   _MarketHomeToggleFavoriteEvent({required this.product});
  

 final  MarketProduct product;

/// Create a copy of MarketHomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketHomeToggleFavoriteEventCopyWith<_MarketHomeToggleFavoriteEvent> get copyWith => __$MarketHomeToggleFavoriteEventCopyWithImpl<_MarketHomeToggleFavoriteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketHomeToggleFavoriteEvent&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'MarketHomeEvent.toggleFavorite(product: $product)';
}


}

/// @nodoc
abstract mixin class _$MarketHomeToggleFavoriteEventCopyWith<$Res> implements $MarketHomeEventCopyWith<$Res> {
  factory _$MarketHomeToggleFavoriteEventCopyWith(_MarketHomeToggleFavoriteEvent value, $Res Function(_MarketHomeToggleFavoriteEvent) _then) = __$MarketHomeToggleFavoriteEventCopyWithImpl;
@useResult
$Res call({
 MarketProduct product
});




}
/// @nodoc
class __$MarketHomeToggleFavoriteEventCopyWithImpl<$Res>
    implements _$MarketHomeToggleFavoriteEventCopyWith<$Res> {
  __$MarketHomeToggleFavoriteEventCopyWithImpl(this._self, this._then);

  final _MarketHomeToggleFavoriteEvent _self;
  final $Res Function(_MarketHomeToggleFavoriteEvent) _then;

/// Create a copy of MarketHomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_MarketHomeToggleFavoriteEvent(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketProduct,
  ));
}


}

/// @nodoc


class _MarketHomeProductChangedEvent implements MarketHomeEvent {
   _MarketHomeProductChangedEvent({required this.change});
  

 final  ItemChange change;

/// Create a copy of MarketHomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketHomeProductChangedEventCopyWith<_MarketHomeProductChangedEvent> get copyWith => __$MarketHomeProductChangedEventCopyWithImpl<_MarketHomeProductChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketHomeProductChangedEvent&&(identical(other.change, change) || other.change == change));
}


@override
int get hashCode => Object.hash(runtimeType,change);

@override
String toString() {
  return 'MarketHomeEvent.productChanged(change: $change)';
}


}

/// @nodoc
abstract mixin class _$MarketHomeProductChangedEventCopyWith<$Res> implements $MarketHomeEventCopyWith<$Res> {
  factory _$MarketHomeProductChangedEventCopyWith(_MarketHomeProductChangedEvent value, $Res Function(_MarketHomeProductChangedEvent) _then) = __$MarketHomeProductChangedEventCopyWithImpl;
@useResult
$Res call({
 ItemChange change
});




}
/// @nodoc
class __$MarketHomeProductChangedEventCopyWithImpl<$Res>
    implements _$MarketHomeProductChangedEventCopyWith<$Res> {
  __$MarketHomeProductChangedEventCopyWithImpl(this._self, this._then);

  final _MarketHomeProductChangedEvent _self;
  final $Res Function(_MarketHomeProductChangedEvent) _then;

/// Create a copy of MarketHomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? change = null,}) {
  return _then(_MarketHomeProductChangedEvent(
change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as ItemChange,
  ));
}


}

/// @nodoc


class _MarketHomeChangeCartQuantityEvent implements MarketHomeEvent {
   _MarketHomeChangeCartQuantityEvent({required this.product, required this.quantity});
  

 final  MarketProduct product;
 final  int quantity;

/// Create a copy of MarketHomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketHomeChangeCartQuantityEventCopyWith<_MarketHomeChangeCartQuantityEvent> get copyWith => __$MarketHomeChangeCartQuantityEventCopyWithImpl<_MarketHomeChangeCartQuantityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketHomeChangeCartQuantityEvent&&(identical(other.product, product) || other.product == product)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,product,quantity);

@override
String toString() {
  return 'MarketHomeEvent.changeCartQuantity(product: $product, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$MarketHomeChangeCartQuantityEventCopyWith<$Res> implements $MarketHomeEventCopyWith<$Res> {
  factory _$MarketHomeChangeCartQuantityEventCopyWith(_MarketHomeChangeCartQuantityEvent value, $Res Function(_MarketHomeChangeCartQuantityEvent) _then) = __$MarketHomeChangeCartQuantityEventCopyWithImpl;
@useResult
$Res call({
 MarketProduct product, int quantity
});




}
/// @nodoc
class __$MarketHomeChangeCartQuantityEventCopyWithImpl<$Res>
    implements _$MarketHomeChangeCartQuantityEventCopyWith<$Res> {
  __$MarketHomeChangeCartQuantityEventCopyWithImpl(this._self, this._then);

  final _MarketHomeChangeCartQuantityEvent _self;
  final $Res Function(_MarketHomeChangeCartQuantityEvent) _then;

/// Create a copy of MarketHomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,Object? quantity = null,}) {
  return _then(_MarketHomeChangeCartQuantityEvent(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketProduct,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MarketHomeState {

 MarketCity? get city; List<MarketCategory> get categories; List<MarketBlock> get blocks; int get cartCount; String get cartTitle; bool get isLoading; bool get loadFailed; String? get errorMessage;
/// Create a copy of MarketHomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketHomeStateCopyWith<MarketHomeState> get copyWith => _$MarketHomeStateCopyWithImpl<MarketHomeState>(this as MarketHomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketHomeState&&(identical(other.city, city) || other.city == city)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.blocks, blocks)&&(identical(other.cartCount, cartCount) || other.cartCount == cartCount)&&(identical(other.cartTitle, cartTitle) || other.cartTitle == cartTitle)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,city,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(blocks),cartCount,cartTitle,isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MarketHomeState(city: $city, categories: $categories, blocks: $blocks, cartCount: $cartCount, cartTitle: $cartTitle, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MarketHomeStateCopyWith<$Res>  {
  factory $MarketHomeStateCopyWith(MarketHomeState value, $Res Function(MarketHomeState) _then) = _$MarketHomeStateCopyWithImpl;
@useResult
$Res call({
 MarketCity? city, List<MarketCategory> categories, List<MarketBlock> blocks, int cartCount, String cartTitle, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$MarketHomeStateCopyWithImpl<$Res>
    implements $MarketHomeStateCopyWith<$Res> {
  _$MarketHomeStateCopyWithImpl(this._self, this._then);

  final MarketHomeState _self;
  final $Res Function(MarketHomeState) _then;

/// Create a copy of MarketHomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = freezed,Object? categories = null,Object? blocks = null,Object? cartCount = null,Object? cartTitle = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as MarketCity?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<MarketCategory>,blocks: null == blocks ? _self.blocks : blocks // ignore: cast_nullable_to_non_nullable
as List<MarketBlock>,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,cartTitle: null == cartTitle ? _self.cartTitle : cartTitle // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketHomeState].
extension MarketHomeStatePatterns on MarketHomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketHomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketHomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketHomeState value)  $default,){
final _that = this;
switch (_that) {
case _MarketHomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketHomeState value)?  $default,){
final _that = this;
switch (_that) {
case _MarketHomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MarketCity? city,  List<MarketCategory> categories,  List<MarketBlock> blocks,  int cartCount,  String cartTitle,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketHomeState() when $default != null:
return $default(_that.city,_that.categories,_that.blocks,_that.cartCount,_that.cartTitle,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MarketCity? city,  List<MarketCategory> categories,  List<MarketBlock> blocks,  int cartCount,  String cartTitle,  bool isLoading,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MarketHomeState():
return $default(_that.city,_that.categories,_that.blocks,_that.cartCount,_that.cartTitle,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MarketCity? city,  List<MarketCategory> categories,  List<MarketBlock> blocks,  int cartCount,  String cartTitle,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MarketHomeState() when $default != null:
return $default(_that.city,_that.categories,_that.blocks,_that.cartCount,_that.cartTitle,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MarketHomeState implements MarketHomeState {
   _MarketHomeState({this.city, final  List<MarketCategory> categories = const [], final  List<MarketBlock> blocks = const [], this.cartCount = 0, this.cartTitle = "", this.isLoading = false, this.loadFailed = false, this.errorMessage}): _categories = categories,_blocks = blocks;
  

@override final  MarketCity? city;
 final  List<MarketCategory> _categories;
@override@JsonKey() List<MarketCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<MarketBlock> _blocks;
@override@JsonKey() List<MarketBlock> get blocks {
  if (_blocks is EqualUnmodifiableListView) return _blocks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blocks);
}

@override@JsonKey() final  int cartCount;
@override@JsonKey() final  String cartTitle;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of MarketHomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketHomeStateCopyWith<_MarketHomeState> get copyWith => __$MarketHomeStateCopyWithImpl<_MarketHomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketHomeState&&(identical(other.city, city) || other.city == city)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._blocks, _blocks)&&(identical(other.cartCount, cartCount) || other.cartCount == cartCount)&&(identical(other.cartTitle, cartTitle) || other.cartTitle == cartTitle)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,city,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_blocks),cartCount,cartTitle,isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MarketHomeState(city: $city, categories: $categories, blocks: $blocks, cartCount: $cartCount, cartTitle: $cartTitle, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MarketHomeStateCopyWith<$Res> implements $MarketHomeStateCopyWith<$Res> {
  factory _$MarketHomeStateCopyWith(_MarketHomeState value, $Res Function(_MarketHomeState) _then) = __$MarketHomeStateCopyWithImpl;
@override @useResult
$Res call({
 MarketCity? city, List<MarketCategory> categories, List<MarketBlock> blocks, int cartCount, String cartTitle, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$MarketHomeStateCopyWithImpl<$Res>
    implements _$MarketHomeStateCopyWith<$Res> {
  __$MarketHomeStateCopyWithImpl(this._self, this._then);

  final _MarketHomeState _self;
  final $Res Function(_MarketHomeState) _then;

/// Create a copy of MarketHomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = freezed,Object? categories = null,Object? blocks = null,Object? cartCount = null,Object? cartTitle = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_MarketHomeState(
city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as MarketCity?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MarketCategory>,blocks: null == blocks ? _self._blocks : blocks // ignore: cast_nullable_to_non_nullable
as List<MarketBlock>,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,cartTitle: null == cartTitle ? _self.cartTitle : cartTitle // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
