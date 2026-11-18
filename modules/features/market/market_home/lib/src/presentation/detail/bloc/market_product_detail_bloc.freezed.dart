// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_product_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketProductDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketProductDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketProductDetailEvent()';
}


}

/// @nodoc
class $MarketProductDetailEventCopyWith<$Res>  {
$MarketProductDetailEventCopyWith(MarketProductDetailEvent _, $Res Function(MarketProductDetailEvent) __);
}


/// Adds pattern-matching-related methods to [MarketProductDetailEvent].
extension MarketProductDetailEventPatterns on MarketProductDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MarketProductDetailStartEvent value)?  start,TResult Function( _MarketProductDetailRefreshEvent value)?  refresh,TResult Function( _MarketProductDetailProductChangedEvent value)?  productChanged,TResult Function( _MarketProductDetailToggleFavoriteEvent value)?  toggleFavorite,TResult Function( _MarketProductDetailChangeCartQuantityEvent value)?  changeCartQuantity,TResult Function( _MarketProductDetailSelectDeliveryEvent value)?  selectDelivery,TResult Function( _MarketProductDetailBuyNowEvent value)?  buyNow,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketProductDetailStartEvent() when start != null:
return start(_that);case _MarketProductDetailRefreshEvent() when refresh != null:
return refresh(_that);case _MarketProductDetailProductChangedEvent() when productChanged != null:
return productChanged(_that);case _MarketProductDetailToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _MarketProductDetailChangeCartQuantityEvent() when changeCartQuantity != null:
return changeCartQuantity(_that);case _MarketProductDetailSelectDeliveryEvent() when selectDelivery != null:
return selectDelivery(_that);case _MarketProductDetailBuyNowEvent() when buyNow != null:
return buyNow(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MarketProductDetailStartEvent value)  start,required TResult Function( _MarketProductDetailRefreshEvent value)  refresh,required TResult Function( _MarketProductDetailProductChangedEvent value)  productChanged,required TResult Function( _MarketProductDetailToggleFavoriteEvent value)  toggleFavorite,required TResult Function( _MarketProductDetailChangeCartQuantityEvent value)  changeCartQuantity,required TResult Function( _MarketProductDetailSelectDeliveryEvent value)  selectDelivery,required TResult Function( _MarketProductDetailBuyNowEvent value)  buyNow,}){
final _that = this;
switch (_that) {
case _MarketProductDetailStartEvent():
return start(_that);case _MarketProductDetailRefreshEvent():
return refresh(_that);case _MarketProductDetailProductChangedEvent():
return productChanged(_that);case _MarketProductDetailToggleFavoriteEvent():
return toggleFavorite(_that);case _MarketProductDetailChangeCartQuantityEvent():
return changeCartQuantity(_that);case _MarketProductDetailSelectDeliveryEvent():
return selectDelivery(_that);case _MarketProductDetailBuyNowEvent():
return buyNow(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MarketProductDetailStartEvent value)?  start,TResult? Function( _MarketProductDetailRefreshEvent value)?  refresh,TResult? Function( _MarketProductDetailProductChangedEvent value)?  productChanged,TResult? Function( _MarketProductDetailToggleFavoriteEvent value)?  toggleFavorite,TResult? Function( _MarketProductDetailChangeCartQuantityEvent value)?  changeCartQuantity,TResult? Function( _MarketProductDetailSelectDeliveryEvent value)?  selectDelivery,TResult? Function( _MarketProductDetailBuyNowEvent value)?  buyNow,}){
final _that = this;
switch (_that) {
case _MarketProductDetailStartEvent() when start != null:
return start(_that);case _MarketProductDetailRefreshEvent() when refresh != null:
return refresh(_that);case _MarketProductDetailProductChangedEvent() when productChanged != null:
return productChanged(_that);case _MarketProductDetailToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _MarketProductDetailChangeCartQuantityEvent() when changeCartQuantity != null:
return changeCartQuantity(_that);case _MarketProductDetailSelectDeliveryEvent() when selectDelivery != null:
return selectDelivery(_that);case _MarketProductDetailBuyNowEvent() when buyNow != null:
return buyNow(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int productId)?  start,TResult Function()?  refresh,TResult Function( ItemChange change)?  productChanged,TResult Function()?  toggleFavorite,TResult Function( int quantity)?  changeCartQuantity,TResult Function( int deliveryId)?  selectDelivery,TResult Function()?  buyNow,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketProductDetailStartEvent() when start != null:
return start(_that.productId);case _MarketProductDetailRefreshEvent() when refresh != null:
return refresh();case _MarketProductDetailProductChangedEvent() when productChanged != null:
return productChanged(_that.change);case _MarketProductDetailToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite();case _MarketProductDetailChangeCartQuantityEvent() when changeCartQuantity != null:
return changeCartQuantity(_that.quantity);case _MarketProductDetailSelectDeliveryEvent() when selectDelivery != null:
return selectDelivery(_that.deliveryId);case _MarketProductDetailBuyNowEvent() when buyNow != null:
return buyNow();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int productId)  start,required TResult Function()  refresh,required TResult Function( ItemChange change)  productChanged,required TResult Function()  toggleFavorite,required TResult Function( int quantity)  changeCartQuantity,required TResult Function( int deliveryId)  selectDelivery,required TResult Function()  buyNow,}) {final _that = this;
switch (_that) {
case _MarketProductDetailStartEvent():
return start(_that.productId);case _MarketProductDetailRefreshEvent():
return refresh();case _MarketProductDetailProductChangedEvent():
return productChanged(_that.change);case _MarketProductDetailToggleFavoriteEvent():
return toggleFavorite();case _MarketProductDetailChangeCartQuantityEvent():
return changeCartQuantity(_that.quantity);case _MarketProductDetailSelectDeliveryEvent():
return selectDelivery(_that.deliveryId);case _MarketProductDetailBuyNowEvent():
return buyNow();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int productId)?  start,TResult? Function()?  refresh,TResult? Function( ItemChange change)?  productChanged,TResult? Function()?  toggleFavorite,TResult? Function( int quantity)?  changeCartQuantity,TResult? Function( int deliveryId)?  selectDelivery,TResult? Function()?  buyNow,}) {final _that = this;
switch (_that) {
case _MarketProductDetailStartEvent() when start != null:
return start(_that.productId);case _MarketProductDetailRefreshEvent() when refresh != null:
return refresh();case _MarketProductDetailProductChangedEvent() when productChanged != null:
return productChanged(_that.change);case _MarketProductDetailToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite();case _MarketProductDetailChangeCartQuantityEvent() when changeCartQuantity != null:
return changeCartQuantity(_that.quantity);case _MarketProductDetailSelectDeliveryEvent() when selectDelivery != null:
return selectDelivery(_that.deliveryId);case _MarketProductDetailBuyNowEvent() when buyNow != null:
return buyNow();case _:
  return null;

}
}

}

/// @nodoc


class _MarketProductDetailStartEvent implements MarketProductDetailEvent {
   _MarketProductDetailStartEvent({required this.productId});
  

 final  int productId;

/// Create a copy of MarketProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketProductDetailStartEventCopyWith<_MarketProductDetailStartEvent> get copyWith => __$MarketProductDetailStartEventCopyWithImpl<_MarketProductDetailStartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketProductDetailStartEvent&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'MarketProductDetailEvent.start(productId: $productId)';
}


}

/// @nodoc
abstract mixin class _$MarketProductDetailStartEventCopyWith<$Res> implements $MarketProductDetailEventCopyWith<$Res> {
  factory _$MarketProductDetailStartEventCopyWith(_MarketProductDetailStartEvent value, $Res Function(_MarketProductDetailStartEvent) _then) = __$MarketProductDetailStartEventCopyWithImpl;
@useResult
$Res call({
 int productId
});




}
/// @nodoc
class __$MarketProductDetailStartEventCopyWithImpl<$Res>
    implements _$MarketProductDetailStartEventCopyWith<$Res> {
  __$MarketProductDetailStartEventCopyWithImpl(this._self, this._then);

  final _MarketProductDetailStartEvent _self;
  final $Res Function(_MarketProductDetailStartEvent) _then;

/// Create a copy of MarketProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(_MarketProductDetailStartEvent(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _MarketProductDetailRefreshEvent implements MarketProductDetailEvent {
   _MarketProductDetailRefreshEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketProductDetailRefreshEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketProductDetailEvent.refresh()';
}


}




/// @nodoc


class _MarketProductDetailProductChangedEvent implements MarketProductDetailEvent {
   _MarketProductDetailProductChangedEvent({required this.change});
  

 final  ItemChange change;

/// Create a copy of MarketProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketProductDetailProductChangedEventCopyWith<_MarketProductDetailProductChangedEvent> get copyWith => __$MarketProductDetailProductChangedEventCopyWithImpl<_MarketProductDetailProductChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketProductDetailProductChangedEvent&&(identical(other.change, change) || other.change == change));
}


@override
int get hashCode => Object.hash(runtimeType,change);

@override
String toString() {
  return 'MarketProductDetailEvent.productChanged(change: $change)';
}


}

/// @nodoc
abstract mixin class _$MarketProductDetailProductChangedEventCopyWith<$Res> implements $MarketProductDetailEventCopyWith<$Res> {
  factory _$MarketProductDetailProductChangedEventCopyWith(_MarketProductDetailProductChangedEvent value, $Res Function(_MarketProductDetailProductChangedEvent) _then) = __$MarketProductDetailProductChangedEventCopyWithImpl;
@useResult
$Res call({
 ItemChange change
});




}
/// @nodoc
class __$MarketProductDetailProductChangedEventCopyWithImpl<$Res>
    implements _$MarketProductDetailProductChangedEventCopyWith<$Res> {
  __$MarketProductDetailProductChangedEventCopyWithImpl(this._self, this._then);

  final _MarketProductDetailProductChangedEvent _self;
  final $Res Function(_MarketProductDetailProductChangedEvent) _then;

/// Create a copy of MarketProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? change = null,}) {
  return _then(_MarketProductDetailProductChangedEvent(
change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as ItemChange,
  ));
}


}

/// @nodoc


class _MarketProductDetailToggleFavoriteEvent implements MarketProductDetailEvent {
   _MarketProductDetailToggleFavoriteEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketProductDetailToggleFavoriteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketProductDetailEvent.toggleFavorite()';
}


}




/// @nodoc


class _MarketProductDetailChangeCartQuantityEvent implements MarketProductDetailEvent {
   _MarketProductDetailChangeCartQuantityEvent({required this.quantity});
  

 final  int quantity;

/// Create a copy of MarketProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketProductDetailChangeCartQuantityEventCopyWith<_MarketProductDetailChangeCartQuantityEvent> get copyWith => __$MarketProductDetailChangeCartQuantityEventCopyWithImpl<_MarketProductDetailChangeCartQuantityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketProductDetailChangeCartQuantityEvent&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,quantity);

@override
String toString() {
  return 'MarketProductDetailEvent.changeCartQuantity(quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$MarketProductDetailChangeCartQuantityEventCopyWith<$Res> implements $MarketProductDetailEventCopyWith<$Res> {
  factory _$MarketProductDetailChangeCartQuantityEventCopyWith(_MarketProductDetailChangeCartQuantityEvent value, $Res Function(_MarketProductDetailChangeCartQuantityEvent) _then) = __$MarketProductDetailChangeCartQuantityEventCopyWithImpl;
@useResult
$Res call({
 int quantity
});




}
/// @nodoc
class __$MarketProductDetailChangeCartQuantityEventCopyWithImpl<$Res>
    implements _$MarketProductDetailChangeCartQuantityEventCopyWith<$Res> {
  __$MarketProductDetailChangeCartQuantityEventCopyWithImpl(this._self, this._then);

  final _MarketProductDetailChangeCartQuantityEvent _self;
  final $Res Function(_MarketProductDetailChangeCartQuantityEvent) _then;

/// Create a copy of MarketProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? quantity = null,}) {
  return _then(_MarketProductDetailChangeCartQuantityEvent(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _MarketProductDetailSelectDeliveryEvent implements MarketProductDetailEvent {
   _MarketProductDetailSelectDeliveryEvent({required this.deliveryId});
  

 final  int deliveryId;

/// Create a copy of MarketProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketProductDetailSelectDeliveryEventCopyWith<_MarketProductDetailSelectDeliveryEvent> get copyWith => __$MarketProductDetailSelectDeliveryEventCopyWithImpl<_MarketProductDetailSelectDeliveryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketProductDetailSelectDeliveryEvent&&(identical(other.deliveryId, deliveryId) || other.deliveryId == deliveryId));
}


@override
int get hashCode => Object.hash(runtimeType,deliveryId);

@override
String toString() {
  return 'MarketProductDetailEvent.selectDelivery(deliveryId: $deliveryId)';
}


}

/// @nodoc
abstract mixin class _$MarketProductDetailSelectDeliveryEventCopyWith<$Res> implements $MarketProductDetailEventCopyWith<$Res> {
  factory _$MarketProductDetailSelectDeliveryEventCopyWith(_MarketProductDetailSelectDeliveryEvent value, $Res Function(_MarketProductDetailSelectDeliveryEvent) _then) = __$MarketProductDetailSelectDeliveryEventCopyWithImpl;
@useResult
$Res call({
 int deliveryId
});




}
/// @nodoc
class __$MarketProductDetailSelectDeliveryEventCopyWithImpl<$Res>
    implements _$MarketProductDetailSelectDeliveryEventCopyWith<$Res> {
  __$MarketProductDetailSelectDeliveryEventCopyWithImpl(this._self, this._then);

  final _MarketProductDetailSelectDeliveryEvent _self;
  final $Res Function(_MarketProductDetailSelectDeliveryEvent) _then;

/// Create a copy of MarketProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deliveryId = null,}) {
  return _then(_MarketProductDetailSelectDeliveryEvent(
deliveryId: null == deliveryId ? _self.deliveryId : deliveryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _MarketProductDetailBuyNowEvent implements MarketProductDetailEvent {
   _MarketProductDetailBuyNowEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketProductDetailBuyNowEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketProductDetailEvent.buyNow()';
}


}




/// @nodoc
mixin _$MarketProductDetailState {

 int get productId; MarketProductDetail? get detail; int? get selectedDeliveryId; bool get isLoading; bool get isRefreshing; bool get loadFailed; bool get isReadyForCheckout; String? get errorMessage;
/// Create a copy of MarketProductDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketProductDetailStateCopyWith<MarketProductDetailState> get copyWith => _$MarketProductDetailStateCopyWithImpl<MarketProductDetailState>(this as MarketProductDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketProductDetailState&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.selectedDeliveryId, selectedDeliveryId) || other.selectedDeliveryId == selectedDeliveryId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.isReadyForCheckout, isReadyForCheckout) || other.isReadyForCheckout == isReadyForCheckout)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,productId,detail,selectedDeliveryId,isLoading,isRefreshing,loadFailed,isReadyForCheckout,errorMessage);

@override
String toString() {
  return 'MarketProductDetailState(productId: $productId, detail: $detail, selectedDeliveryId: $selectedDeliveryId, isLoading: $isLoading, isRefreshing: $isRefreshing, loadFailed: $loadFailed, isReadyForCheckout: $isReadyForCheckout, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MarketProductDetailStateCopyWith<$Res>  {
  factory $MarketProductDetailStateCopyWith(MarketProductDetailState value, $Res Function(MarketProductDetailState) _then) = _$MarketProductDetailStateCopyWithImpl;
@useResult
$Res call({
 int productId, MarketProductDetail? detail, int? selectedDeliveryId, bool isLoading, bool isRefreshing, bool loadFailed, bool isReadyForCheckout, String? errorMessage
});




}
/// @nodoc
class _$MarketProductDetailStateCopyWithImpl<$Res>
    implements $MarketProductDetailStateCopyWith<$Res> {
  _$MarketProductDetailStateCopyWithImpl(this._self, this._then);

  final MarketProductDetailState _self;
  final $Res Function(MarketProductDetailState) _then;

/// Create a copy of MarketProductDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? detail = freezed,Object? selectedDeliveryId = freezed,Object? isLoading = null,Object? isRefreshing = null,Object? loadFailed = null,Object? isReadyForCheckout = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as MarketProductDetail?,selectedDeliveryId: freezed == selectedDeliveryId ? _self.selectedDeliveryId : selectedDeliveryId // ignore: cast_nullable_to_non_nullable
as int?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,isReadyForCheckout: null == isReadyForCheckout ? _self.isReadyForCheckout : isReadyForCheckout // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketProductDetailState].
extension MarketProductDetailStatePatterns on MarketProductDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketProductDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketProductDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketProductDetailState value)  $default,){
final _that = this;
switch (_that) {
case _MarketProductDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketProductDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _MarketProductDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int productId,  MarketProductDetail? detail,  int? selectedDeliveryId,  bool isLoading,  bool isRefreshing,  bool loadFailed,  bool isReadyForCheckout,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketProductDetailState() when $default != null:
return $default(_that.productId,_that.detail,_that.selectedDeliveryId,_that.isLoading,_that.isRefreshing,_that.loadFailed,_that.isReadyForCheckout,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int productId,  MarketProductDetail? detail,  int? selectedDeliveryId,  bool isLoading,  bool isRefreshing,  bool loadFailed,  bool isReadyForCheckout,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MarketProductDetailState():
return $default(_that.productId,_that.detail,_that.selectedDeliveryId,_that.isLoading,_that.isRefreshing,_that.loadFailed,_that.isReadyForCheckout,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int productId,  MarketProductDetail? detail,  int? selectedDeliveryId,  bool isLoading,  bool isRefreshing,  bool loadFailed,  bool isReadyForCheckout,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MarketProductDetailState() when $default != null:
return $default(_that.productId,_that.detail,_that.selectedDeliveryId,_that.isLoading,_that.isRefreshing,_that.loadFailed,_that.isReadyForCheckout,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MarketProductDetailState implements MarketProductDetailState {
   _MarketProductDetailState({this.productId = 0, this.detail, this.selectedDeliveryId, this.isLoading = false, this.isRefreshing = false, this.loadFailed = false, this.isReadyForCheckout = false, this.errorMessage});
  

@override@JsonKey() final  int productId;
@override final  MarketProductDetail? detail;
@override final  int? selectedDeliveryId;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isRefreshing;
@override@JsonKey() final  bool loadFailed;
@override@JsonKey() final  bool isReadyForCheckout;
@override final  String? errorMessage;

/// Create a copy of MarketProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketProductDetailStateCopyWith<_MarketProductDetailState> get copyWith => __$MarketProductDetailStateCopyWithImpl<_MarketProductDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketProductDetailState&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.selectedDeliveryId, selectedDeliveryId) || other.selectedDeliveryId == selectedDeliveryId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.isReadyForCheckout, isReadyForCheckout) || other.isReadyForCheckout == isReadyForCheckout)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,productId,detail,selectedDeliveryId,isLoading,isRefreshing,loadFailed,isReadyForCheckout,errorMessage);

@override
String toString() {
  return 'MarketProductDetailState(productId: $productId, detail: $detail, selectedDeliveryId: $selectedDeliveryId, isLoading: $isLoading, isRefreshing: $isRefreshing, loadFailed: $loadFailed, isReadyForCheckout: $isReadyForCheckout, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MarketProductDetailStateCopyWith<$Res> implements $MarketProductDetailStateCopyWith<$Res> {
  factory _$MarketProductDetailStateCopyWith(_MarketProductDetailState value, $Res Function(_MarketProductDetailState) _then) = __$MarketProductDetailStateCopyWithImpl;
@override @useResult
$Res call({
 int productId, MarketProductDetail? detail, int? selectedDeliveryId, bool isLoading, bool isRefreshing, bool loadFailed, bool isReadyForCheckout, String? errorMessage
});




}
/// @nodoc
class __$MarketProductDetailStateCopyWithImpl<$Res>
    implements _$MarketProductDetailStateCopyWith<$Res> {
  __$MarketProductDetailStateCopyWithImpl(this._self, this._then);

  final _MarketProductDetailState _self;
  final $Res Function(_MarketProductDetailState) _then;

/// Create a copy of MarketProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? detail = freezed,Object? selectedDeliveryId = freezed,Object? isLoading = null,Object? isRefreshing = null,Object? loadFailed = null,Object? isReadyForCheckout = null,Object? errorMessage = freezed,}) {
  return _then(_MarketProductDetailState(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as MarketProductDetail?,selectedDeliveryId: freezed == selectedDeliveryId ? _self.selectedDeliveryId : selectedDeliveryId // ignore: cast_nullable_to_non_nullable
as int?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,isReadyForCheckout: null == isReadyForCheckout ? _self.isReadyForCheckout : isReadyForCheckout // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
