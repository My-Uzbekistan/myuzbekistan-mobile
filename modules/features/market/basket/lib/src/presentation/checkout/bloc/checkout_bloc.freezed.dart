// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent()';
}


}

/// @nodoc
class $CheckoutEventCopyWith<$Res>  {
$CheckoutEventCopyWith(CheckoutEvent _, $Res Function(CheckoutEvent) __);
}


/// Adds pattern-matching-related methods to [CheckoutEvent].
extension CheckoutEventPatterns on CheckoutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckoutLoadDataEvent value)?  loadData,TResult Function( _CheckoutChangeQuantityEvent value)?  changeQuantity,TResult Function( _CheckoutRemoveItemEvent value)?  removeItem,TResult Function( _CheckoutReloadItemsEvent value)?  reloadItems,TResult Function( _CheckoutSelectDeliveryEvent value)?  selectDelivery,TResult Function( _CheckoutLoadPickupPointsEvent value)?  loadPickupPoints,TResult Function( _CheckoutSelectPickupPointEvent value)?  selectPickupPoint,TResult Function( _CheckoutLoadAddressesEvent value)?  loadAddresses,TResult Function( _CheckoutSelectAddressEvent value)?  selectAddress,TResult Function( _CheckoutChangePhoneEvent value)?  changePhone,TResult Function( _CheckoutCreateOrderEvent value)?  createOrder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutLoadDataEvent() when loadData != null:
return loadData(_that);case _CheckoutChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that);case _CheckoutRemoveItemEvent() when removeItem != null:
return removeItem(_that);case _CheckoutReloadItemsEvent() when reloadItems != null:
return reloadItems(_that);case _CheckoutSelectDeliveryEvent() when selectDelivery != null:
return selectDelivery(_that);case _CheckoutLoadPickupPointsEvent() when loadPickupPoints != null:
return loadPickupPoints(_that);case _CheckoutSelectPickupPointEvent() when selectPickupPoint != null:
return selectPickupPoint(_that);case _CheckoutLoadAddressesEvent() when loadAddresses != null:
return loadAddresses(_that);case _CheckoutSelectAddressEvent() when selectAddress != null:
return selectAddress(_that);case _CheckoutChangePhoneEvent() when changePhone != null:
return changePhone(_that);case _CheckoutCreateOrderEvent() when createOrder != null:
return createOrder(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckoutLoadDataEvent value)  loadData,required TResult Function( _CheckoutChangeQuantityEvent value)  changeQuantity,required TResult Function( _CheckoutRemoveItemEvent value)  removeItem,required TResult Function( _CheckoutReloadItemsEvent value)  reloadItems,required TResult Function( _CheckoutSelectDeliveryEvent value)  selectDelivery,required TResult Function( _CheckoutLoadPickupPointsEvent value)  loadPickupPoints,required TResult Function( _CheckoutSelectPickupPointEvent value)  selectPickupPoint,required TResult Function( _CheckoutLoadAddressesEvent value)  loadAddresses,required TResult Function( _CheckoutSelectAddressEvent value)  selectAddress,required TResult Function( _CheckoutChangePhoneEvent value)  changePhone,required TResult Function( _CheckoutCreateOrderEvent value)  createOrder,}){
final _that = this;
switch (_that) {
case _CheckoutLoadDataEvent():
return loadData(_that);case _CheckoutChangeQuantityEvent():
return changeQuantity(_that);case _CheckoutRemoveItemEvent():
return removeItem(_that);case _CheckoutReloadItemsEvent():
return reloadItems(_that);case _CheckoutSelectDeliveryEvent():
return selectDelivery(_that);case _CheckoutLoadPickupPointsEvent():
return loadPickupPoints(_that);case _CheckoutSelectPickupPointEvent():
return selectPickupPoint(_that);case _CheckoutLoadAddressesEvent():
return loadAddresses(_that);case _CheckoutSelectAddressEvent():
return selectAddress(_that);case _CheckoutChangePhoneEvent():
return changePhone(_that);case _CheckoutCreateOrderEvent():
return createOrder(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckoutLoadDataEvent value)?  loadData,TResult? Function( _CheckoutChangeQuantityEvent value)?  changeQuantity,TResult? Function( _CheckoutRemoveItemEvent value)?  removeItem,TResult? Function( _CheckoutReloadItemsEvent value)?  reloadItems,TResult? Function( _CheckoutSelectDeliveryEvent value)?  selectDelivery,TResult? Function( _CheckoutLoadPickupPointsEvent value)?  loadPickupPoints,TResult? Function( _CheckoutSelectPickupPointEvent value)?  selectPickupPoint,TResult? Function( _CheckoutLoadAddressesEvent value)?  loadAddresses,TResult? Function( _CheckoutSelectAddressEvent value)?  selectAddress,TResult? Function( _CheckoutChangePhoneEvent value)?  changePhone,TResult? Function( _CheckoutCreateOrderEvent value)?  createOrder,}){
final _that = this;
switch (_that) {
case _CheckoutLoadDataEvent() when loadData != null:
return loadData(_that);case _CheckoutChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that);case _CheckoutRemoveItemEvent() when removeItem != null:
return removeItem(_that);case _CheckoutReloadItemsEvent() when reloadItems != null:
return reloadItems(_that);case _CheckoutSelectDeliveryEvent() when selectDelivery != null:
return selectDelivery(_that);case _CheckoutLoadPickupPointsEvent() when loadPickupPoints != null:
return loadPickupPoints(_that);case _CheckoutSelectPickupPointEvent() when selectPickupPoint != null:
return selectPickupPoint(_that);case _CheckoutLoadAddressesEvent() when loadAddresses != null:
return loadAddresses(_that);case _CheckoutSelectAddressEvent() when selectAddress != null:
return selectAddress(_that);case _CheckoutChangePhoneEvent() when changePhone != null:
return changePhone(_that);case _CheckoutCreateOrderEvent() when createOrder != null:
return createOrder(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadData,TResult Function( CartItem item,  int quantity)?  changeQuantity,TResult Function( CartItem item)?  removeItem,TResult Function()?  reloadItems,TResult Function( DeliveryMethod delivery)?  selectDelivery,TResult Function()?  loadPickupPoints,TResult Function( MarketPickupPoint point)?  selectPickupPoint,TResult Function()?  loadAddresses,TResult Function( MarketAddress address)?  selectAddress,TResult Function( String phone)?  changePhone,TResult Function( String paymentId)?  createOrder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutLoadDataEvent() when loadData != null:
return loadData();case _CheckoutChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that.item,_that.quantity);case _CheckoutRemoveItemEvent() when removeItem != null:
return removeItem(_that.item);case _CheckoutReloadItemsEvent() when reloadItems != null:
return reloadItems();case _CheckoutSelectDeliveryEvent() when selectDelivery != null:
return selectDelivery(_that.delivery);case _CheckoutLoadPickupPointsEvent() when loadPickupPoints != null:
return loadPickupPoints();case _CheckoutSelectPickupPointEvent() when selectPickupPoint != null:
return selectPickupPoint(_that.point);case _CheckoutLoadAddressesEvent() when loadAddresses != null:
return loadAddresses();case _CheckoutSelectAddressEvent() when selectAddress != null:
return selectAddress(_that.address);case _CheckoutChangePhoneEvent() when changePhone != null:
return changePhone(_that.phone);case _CheckoutCreateOrderEvent() when createOrder != null:
return createOrder(_that.paymentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadData,required TResult Function( CartItem item,  int quantity)  changeQuantity,required TResult Function( CartItem item)  removeItem,required TResult Function()  reloadItems,required TResult Function( DeliveryMethod delivery)  selectDelivery,required TResult Function()  loadPickupPoints,required TResult Function( MarketPickupPoint point)  selectPickupPoint,required TResult Function()  loadAddresses,required TResult Function( MarketAddress address)  selectAddress,required TResult Function( String phone)  changePhone,required TResult Function( String paymentId)  createOrder,}) {final _that = this;
switch (_that) {
case _CheckoutLoadDataEvent():
return loadData();case _CheckoutChangeQuantityEvent():
return changeQuantity(_that.item,_that.quantity);case _CheckoutRemoveItemEvent():
return removeItem(_that.item);case _CheckoutReloadItemsEvent():
return reloadItems();case _CheckoutSelectDeliveryEvent():
return selectDelivery(_that.delivery);case _CheckoutLoadPickupPointsEvent():
return loadPickupPoints();case _CheckoutSelectPickupPointEvent():
return selectPickupPoint(_that.point);case _CheckoutLoadAddressesEvent():
return loadAddresses();case _CheckoutSelectAddressEvent():
return selectAddress(_that.address);case _CheckoutChangePhoneEvent():
return changePhone(_that.phone);case _CheckoutCreateOrderEvent():
return createOrder(_that.paymentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadData,TResult? Function( CartItem item,  int quantity)?  changeQuantity,TResult? Function( CartItem item)?  removeItem,TResult? Function()?  reloadItems,TResult? Function( DeliveryMethod delivery)?  selectDelivery,TResult? Function()?  loadPickupPoints,TResult? Function( MarketPickupPoint point)?  selectPickupPoint,TResult? Function()?  loadAddresses,TResult? Function( MarketAddress address)?  selectAddress,TResult? Function( String phone)?  changePhone,TResult? Function( String paymentId)?  createOrder,}) {final _that = this;
switch (_that) {
case _CheckoutLoadDataEvent() when loadData != null:
return loadData();case _CheckoutChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that.item,_that.quantity);case _CheckoutRemoveItemEvent() when removeItem != null:
return removeItem(_that.item);case _CheckoutReloadItemsEvent() when reloadItems != null:
return reloadItems();case _CheckoutSelectDeliveryEvent() when selectDelivery != null:
return selectDelivery(_that.delivery);case _CheckoutLoadPickupPointsEvent() when loadPickupPoints != null:
return loadPickupPoints();case _CheckoutSelectPickupPointEvent() when selectPickupPoint != null:
return selectPickupPoint(_that.point);case _CheckoutLoadAddressesEvent() when loadAddresses != null:
return loadAddresses();case _CheckoutSelectAddressEvent() when selectAddress != null:
return selectAddress(_that.address);case _CheckoutChangePhoneEvent() when changePhone != null:
return changePhone(_that.phone);case _CheckoutCreateOrderEvent() when createOrder != null:
return createOrder(_that.paymentId);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutLoadDataEvent implements CheckoutEvent {
   _CheckoutLoadDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutLoadDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent.loadData()';
}


}




/// @nodoc


class _CheckoutChangeQuantityEvent implements CheckoutEvent {
   _CheckoutChangeQuantityEvent({required this.item, required this.quantity});
  

 final  CartItem item;
 final  int quantity;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutChangeQuantityEventCopyWith<_CheckoutChangeQuantityEvent> get copyWith => __$CheckoutChangeQuantityEventCopyWithImpl<_CheckoutChangeQuantityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutChangeQuantityEvent&&(identical(other.item, item) || other.item == item)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,item,quantity);

@override
String toString() {
  return 'CheckoutEvent.changeQuantity(item: $item, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CheckoutChangeQuantityEventCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory _$CheckoutChangeQuantityEventCopyWith(_CheckoutChangeQuantityEvent value, $Res Function(_CheckoutChangeQuantityEvent) _then) = __$CheckoutChangeQuantityEventCopyWithImpl;
@useResult
$Res call({
 CartItem item, int quantity
});




}
/// @nodoc
class __$CheckoutChangeQuantityEventCopyWithImpl<$Res>
    implements _$CheckoutChangeQuantityEventCopyWith<$Res> {
  __$CheckoutChangeQuantityEventCopyWithImpl(this._self, this._then);

  final _CheckoutChangeQuantityEvent _self;
  final $Res Function(_CheckoutChangeQuantityEvent) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,Object? quantity = null,}) {
  return _then(_CheckoutChangeQuantityEvent(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as CartItem,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CheckoutRemoveItemEvent implements CheckoutEvent {
   _CheckoutRemoveItemEvent({required this.item});
  

 final  CartItem item;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutRemoveItemEventCopyWith<_CheckoutRemoveItemEvent> get copyWith => __$CheckoutRemoveItemEventCopyWithImpl<_CheckoutRemoveItemEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutRemoveItemEvent&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'CheckoutEvent.removeItem(item: $item)';
}


}

/// @nodoc
abstract mixin class _$CheckoutRemoveItemEventCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory _$CheckoutRemoveItemEventCopyWith(_CheckoutRemoveItemEvent value, $Res Function(_CheckoutRemoveItemEvent) _then) = __$CheckoutRemoveItemEventCopyWithImpl;
@useResult
$Res call({
 CartItem item
});




}
/// @nodoc
class __$CheckoutRemoveItemEventCopyWithImpl<$Res>
    implements _$CheckoutRemoveItemEventCopyWith<$Res> {
  __$CheckoutRemoveItemEventCopyWithImpl(this._self, this._then);

  final _CheckoutRemoveItemEvent _self;
  final $Res Function(_CheckoutRemoveItemEvent) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_CheckoutRemoveItemEvent(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as CartItem,
  ));
}


}

/// @nodoc


class _CheckoutReloadItemsEvent implements CheckoutEvent {
   _CheckoutReloadItemsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutReloadItemsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent.reloadItems()';
}


}




/// @nodoc


class _CheckoutSelectDeliveryEvent implements CheckoutEvent {
   _CheckoutSelectDeliveryEvent({required this.delivery});
  

 final  DeliveryMethod delivery;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutSelectDeliveryEventCopyWith<_CheckoutSelectDeliveryEvent> get copyWith => __$CheckoutSelectDeliveryEventCopyWithImpl<_CheckoutSelectDeliveryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutSelectDeliveryEvent&&(identical(other.delivery, delivery) || other.delivery == delivery));
}


@override
int get hashCode => Object.hash(runtimeType,delivery);

@override
String toString() {
  return 'CheckoutEvent.selectDelivery(delivery: $delivery)';
}


}

/// @nodoc
abstract mixin class _$CheckoutSelectDeliveryEventCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory _$CheckoutSelectDeliveryEventCopyWith(_CheckoutSelectDeliveryEvent value, $Res Function(_CheckoutSelectDeliveryEvent) _then) = __$CheckoutSelectDeliveryEventCopyWithImpl;
@useResult
$Res call({
 DeliveryMethod delivery
});




}
/// @nodoc
class __$CheckoutSelectDeliveryEventCopyWithImpl<$Res>
    implements _$CheckoutSelectDeliveryEventCopyWith<$Res> {
  __$CheckoutSelectDeliveryEventCopyWithImpl(this._self, this._then);

  final _CheckoutSelectDeliveryEvent _self;
  final $Res Function(_CheckoutSelectDeliveryEvent) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? delivery = null,}) {
  return _then(_CheckoutSelectDeliveryEvent(
delivery: null == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as DeliveryMethod,
  ));
}


}

/// @nodoc


class _CheckoutLoadPickupPointsEvent implements CheckoutEvent {
   _CheckoutLoadPickupPointsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutLoadPickupPointsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent.loadPickupPoints()';
}


}




/// @nodoc


class _CheckoutSelectPickupPointEvent implements CheckoutEvent {
   _CheckoutSelectPickupPointEvent({required this.point});
  

 final  MarketPickupPoint point;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutSelectPickupPointEventCopyWith<_CheckoutSelectPickupPointEvent> get copyWith => __$CheckoutSelectPickupPointEventCopyWithImpl<_CheckoutSelectPickupPointEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutSelectPickupPointEvent&&(identical(other.point, point) || other.point == point));
}


@override
int get hashCode => Object.hash(runtimeType,point);

@override
String toString() {
  return 'CheckoutEvent.selectPickupPoint(point: $point)';
}


}

/// @nodoc
abstract mixin class _$CheckoutSelectPickupPointEventCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory _$CheckoutSelectPickupPointEventCopyWith(_CheckoutSelectPickupPointEvent value, $Res Function(_CheckoutSelectPickupPointEvent) _then) = __$CheckoutSelectPickupPointEventCopyWithImpl;
@useResult
$Res call({
 MarketPickupPoint point
});




}
/// @nodoc
class __$CheckoutSelectPickupPointEventCopyWithImpl<$Res>
    implements _$CheckoutSelectPickupPointEventCopyWith<$Res> {
  __$CheckoutSelectPickupPointEventCopyWithImpl(this._self, this._then);

  final _CheckoutSelectPickupPointEvent _self;
  final $Res Function(_CheckoutSelectPickupPointEvent) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? point = null,}) {
  return _then(_CheckoutSelectPickupPointEvent(
point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as MarketPickupPoint,
  ));
}


}

/// @nodoc


class _CheckoutLoadAddressesEvent implements CheckoutEvent {
   _CheckoutLoadAddressesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutLoadAddressesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent.loadAddresses()';
}


}




/// @nodoc


class _CheckoutSelectAddressEvent implements CheckoutEvent {
   _CheckoutSelectAddressEvent({required this.address});
  

 final  MarketAddress address;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutSelectAddressEventCopyWith<_CheckoutSelectAddressEvent> get copyWith => __$CheckoutSelectAddressEventCopyWithImpl<_CheckoutSelectAddressEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutSelectAddressEvent&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'CheckoutEvent.selectAddress(address: $address)';
}


}

/// @nodoc
abstract mixin class _$CheckoutSelectAddressEventCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory _$CheckoutSelectAddressEventCopyWith(_CheckoutSelectAddressEvent value, $Res Function(_CheckoutSelectAddressEvent) _then) = __$CheckoutSelectAddressEventCopyWithImpl;
@useResult
$Res call({
 MarketAddress address
});




}
/// @nodoc
class __$CheckoutSelectAddressEventCopyWithImpl<$Res>
    implements _$CheckoutSelectAddressEventCopyWith<$Res> {
  __$CheckoutSelectAddressEventCopyWithImpl(this._self, this._then);

  final _CheckoutSelectAddressEvent _self;
  final $Res Function(_CheckoutSelectAddressEvent) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(_CheckoutSelectAddressEvent(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as MarketAddress,
  ));
}


}

/// @nodoc


class _CheckoutChangePhoneEvent implements CheckoutEvent {
   _CheckoutChangePhoneEvent({required this.phone});
  

 final  String phone;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutChangePhoneEventCopyWith<_CheckoutChangePhoneEvent> get copyWith => __$CheckoutChangePhoneEventCopyWithImpl<_CheckoutChangePhoneEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutChangePhoneEvent&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'CheckoutEvent.changePhone(phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$CheckoutChangePhoneEventCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory _$CheckoutChangePhoneEventCopyWith(_CheckoutChangePhoneEvent value, $Res Function(_CheckoutChangePhoneEvent) _then) = __$CheckoutChangePhoneEventCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class __$CheckoutChangePhoneEventCopyWithImpl<$Res>
    implements _$CheckoutChangePhoneEventCopyWith<$Res> {
  __$CheckoutChangePhoneEventCopyWithImpl(this._self, this._then);

  final _CheckoutChangePhoneEvent _self;
  final $Res Function(_CheckoutChangePhoneEvent) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(_CheckoutChangePhoneEvent(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CheckoutCreateOrderEvent implements CheckoutEvent {
   _CheckoutCreateOrderEvent({required this.paymentId});
  

 final  String paymentId;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutCreateOrderEventCopyWith<_CheckoutCreateOrderEvent> get copyWith => __$CheckoutCreateOrderEventCopyWithImpl<_CheckoutCreateOrderEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutCreateOrderEvent&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,paymentId);

@override
String toString() {
  return 'CheckoutEvent.createOrder(paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class _$CheckoutCreateOrderEventCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory _$CheckoutCreateOrderEventCopyWith(_CheckoutCreateOrderEvent value, $Res Function(_CheckoutCreateOrderEvent) _then) = __$CheckoutCreateOrderEventCopyWithImpl;
@useResult
$Res call({
 String paymentId
});




}
/// @nodoc
class __$CheckoutCreateOrderEventCopyWithImpl<$Res>
    implements _$CheckoutCreateOrderEventCopyWith<$Res> {
  __$CheckoutCreateOrderEventCopyWithImpl(this._self, this._then);

  final _CheckoutCreateOrderEvent _self;
  final $Res Function(_CheckoutCreateOrderEvent) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paymentId = null,}) {
  return _then(_CheckoutCreateOrderEvent(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CheckoutState {

 DeliveryMethod? get delivery; MarketAddress? get address; MarketRegion? get region; MarketPickupPoint? get pickupPoint; String? get phone; List<CartItem> get items; List<DeliveryMethod> get deliveryMethods; List<MarketAddress> get addresses; List<MarketPickupPoint> get pickupPoints; CheckoutPrice? get price; MarketPriceDetails? get priceDetails; DateTime? get freeCancellationUntil; String? get paymentId; bool get isLoading; bool get isAddressesLoading; bool get isPickupPointsLoading; bool get isOrdering; bool get isOrderCreated; bool get loadFailed; String? get errorMessage;
/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutStateCopyWith<CheckoutState> get copyWith => _$CheckoutStateCopyWithImpl<CheckoutState>(this as CheckoutState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutState&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.address, address) || other.address == address)&&(identical(other.region, region) || other.region == region)&&(identical(other.pickupPoint, pickupPoint) || other.pickupPoint == pickupPoint)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.deliveryMethods, deliveryMethods)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&const DeepCollectionEquality().equals(other.pickupPoints, pickupPoints)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceDetails, priceDetails) || other.priceDetails == priceDetails)&&(identical(other.freeCancellationUntil, freeCancellationUntil) || other.freeCancellationUntil == freeCancellationUntil)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isAddressesLoading, isAddressesLoading) || other.isAddressesLoading == isAddressesLoading)&&(identical(other.isPickupPointsLoading, isPickupPointsLoading) || other.isPickupPointsLoading == isPickupPointsLoading)&&(identical(other.isOrdering, isOrdering) || other.isOrdering == isOrdering)&&(identical(other.isOrderCreated, isOrderCreated) || other.isOrderCreated == isOrderCreated)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hashAll([runtimeType,delivery,address,region,pickupPoint,phone,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(deliveryMethods),const DeepCollectionEquality().hash(addresses),const DeepCollectionEquality().hash(pickupPoints),price,priceDetails,freeCancellationUntil,paymentId,isLoading,isAddressesLoading,isPickupPointsLoading,isOrdering,isOrderCreated,loadFailed,errorMessage]);

@override
String toString() {
  return 'CheckoutState(delivery: $delivery, address: $address, region: $region, pickupPoint: $pickupPoint, phone: $phone, items: $items, deliveryMethods: $deliveryMethods, addresses: $addresses, pickupPoints: $pickupPoints, price: $price, priceDetails: $priceDetails, freeCancellationUntil: $freeCancellationUntil, paymentId: $paymentId, isLoading: $isLoading, isAddressesLoading: $isAddressesLoading, isPickupPointsLoading: $isPickupPointsLoading, isOrdering: $isOrdering, isOrderCreated: $isOrderCreated, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CheckoutStateCopyWith<$Res>  {
  factory $CheckoutStateCopyWith(CheckoutState value, $Res Function(CheckoutState) _then) = _$CheckoutStateCopyWithImpl;
@useResult
$Res call({
 DeliveryMethod? delivery, MarketAddress? address, MarketRegion? region, MarketPickupPoint? pickupPoint, String? phone, List<CartItem> items, List<DeliveryMethod> deliveryMethods, List<MarketAddress> addresses, List<MarketPickupPoint> pickupPoints, CheckoutPrice? price, MarketPriceDetails? priceDetails, DateTime? freeCancellationUntil, String? paymentId, bool isLoading, bool isAddressesLoading, bool isPickupPointsLoading, bool isOrdering, bool isOrderCreated, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._self, this._then);

  final CheckoutState _self;
  final $Res Function(CheckoutState) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? delivery = freezed,Object? address = freezed,Object? region = freezed,Object? pickupPoint = freezed,Object? phone = freezed,Object? items = null,Object? deliveryMethods = null,Object? addresses = null,Object? pickupPoints = null,Object? price = freezed,Object? priceDetails = freezed,Object? freeCancellationUntil = freezed,Object? paymentId = freezed,Object? isLoading = null,Object? isAddressesLoading = null,Object? isPickupPointsLoading = null,Object? isOrdering = null,Object? isOrderCreated = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as DeliveryMethod?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as MarketAddress?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as MarketRegion?,pickupPoint: freezed == pickupPoint ? _self.pickupPoint : pickupPoint // ignore: cast_nullable_to_non_nullable
as MarketPickupPoint?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItem>,deliveryMethods: null == deliveryMethods ? _self.deliveryMethods : deliveryMethods // ignore: cast_nullable_to_non_nullable
as List<DeliveryMethod>,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<MarketAddress>,pickupPoints: null == pickupPoints ? _self.pickupPoints : pickupPoints // ignore: cast_nullable_to_non_nullable
as List<MarketPickupPoint>,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as CheckoutPrice?,priceDetails: freezed == priceDetails ? _self.priceDetails : priceDetails // ignore: cast_nullable_to_non_nullable
as MarketPriceDetails?,freeCancellationUntil: freezed == freeCancellationUntil ? _self.freeCancellationUntil : freeCancellationUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isAddressesLoading: null == isAddressesLoading ? _self.isAddressesLoading : isAddressesLoading // ignore: cast_nullable_to_non_nullable
as bool,isPickupPointsLoading: null == isPickupPointsLoading ? _self.isPickupPointsLoading : isPickupPointsLoading // ignore: cast_nullable_to_non_nullable
as bool,isOrdering: null == isOrdering ? _self.isOrdering : isOrdering // ignore: cast_nullable_to_non_nullable
as bool,isOrderCreated: null == isOrderCreated ? _self.isOrderCreated : isOrderCreated // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutState].
extension CheckoutStatePatterns on CheckoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutState value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutState value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DeliveryMethod? delivery,  MarketAddress? address,  MarketRegion? region,  MarketPickupPoint? pickupPoint,  String? phone,  List<CartItem> items,  List<DeliveryMethod> deliveryMethods,  List<MarketAddress> addresses,  List<MarketPickupPoint> pickupPoints,  CheckoutPrice? price,  MarketPriceDetails? priceDetails,  DateTime? freeCancellationUntil,  String? paymentId,  bool isLoading,  bool isAddressesLoading,  bool isPickupPointsLoading,  bool isOrdering,  bool isOrderCreated,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that.delivery,_that.address,_that.region,_that.pickupPoint,_that.phone,_that.items,_that.deliveryMethods,_that.addresses,_that.pickupPoints,_that.price,_that.priceDetails,_that.freeCancellationUntil,_that.paymentId,_that.isLoading,_that.isAddressesLoading,_that.isPickupPointsLoading,_that.isOrdering,_that.isOrderCreated,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DeliveryMethod? delivery,  MarketAddress? address,  MarketRegion? region,  MarketPickupPoint? pickupPoint,  String? phone,  List<CartItem> items,  List<DeliveryMethod> deliveryMethods,  List<MarketAddress> addresses,  List<MarketPickupPoint> pickupPoints,  CheckoutPrice? price,  MarketPriceDetails? priceDetails,  DateTime? freeCancellationUntil,  String? paymentId,  bool isLoading,  bool isAddressesLoading,  bool isPickupPointsLoading,  bool isOrdering,  bool isOrderCreated,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CheckoutState():
return $default(_that.delivery,_that.address,_that.region,_that.pickupPoint,_that.phone,_that.items,_that.deliveryMethods,_that.addresses,_that.pickupPoints,_that.price,_that.priceDetails,_that.freeCancellationUntil,_that.paymentId,_that.isLoading,_that.isAddressesLoading,_that.isPickupPointsLoading,_that.isOrdering,_that.isOrderCreated,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DeliveryMethod? delivery,  MarketAddress? address,  MarketRegion? region,  MarketPickupPoint? pickupPoint,  String? phone,  List<CartItem> items,  List<DeliveryMethod> deliveryMethods,  List<MarketAddress> addresses,  List<MarketPickupPoint> pickupPoints,  CheckoutPrice? price,  MarketPriceDetails? priceDetails,  DateTime? freeCancellationUntil,  String? paymentId,  bool isLoading,  bool isAddressesLoading,  bool isPickupPointsLoading,  bool isOrdering,  bool isOrderCreated,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that.delivery,_that.address,_that.region,_that.pickupPoint,_that.phone,_that.items,_that.deliveryMethods,_that.addresses,_that.pickupPoints,_that.price,_that.priceDetails,_that.freeCancellationUntil,_that.paymentId,_that.isLoading,_that.isAddressesLoading,_that.isPickupPointsLoading,_that.isOrdering,_that.isOrderCreated,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutState extends CheckoutState {
   _CheckoutState({this.delivery, this.address, this.region, this.pickupPoint, this.phone, final  List<CartItem> items = const [], final  List<DeliveryMethod> deliveryMethods = const [], final  List<MarketAddress> addresses = const [], final  List<MarketPickupPoint> pickupPoints = const [], this.price, this.priceDetails, this.freeCancellationUntil, this.paymentId, this.isLoading = false, this.isAddressesLoading = false, this.isPickupPointsLoading = false, this.isOrdering = false, this.isOrderCreated = false, this.loadFailed = false, this.errorMessage}): _items = items,_deliveryMethods = deliveryMethods,_addresses = addresses,_pickupPoints = pickupPoints,super._();
  

@override final  DeliveryMethod? delivery;
@override final  MarketAddress? address;
@override final  MarketRegion? region;
@override final  MarketPickupPoint? pickupPoint;
@override final  String? phone;
 final  List<CartItem> _items;
@override@JsonKey() List<CartItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<DeliveryMethod> _deliveryMethods;
@override@JsonKey() List<DeliveryMethod> get deliveryMethods {
  if (_deliveryMethods is EqualUnmodifiableListView) return _deliveryMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deliveryMethods);
}

 final  List<MarketAddress> _addresses;
@override@JsonKey() List<MarketAddress> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

 final  List<MarketPickupPoint> _pickupPoints;
@override@JsonKey() List<MarketPickupPoint> get pickupPoints {
  if (_pickupPoints is EqualUnmodifiableListView) return _pickupPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pickupPoints);
}

@override final  CheckoutPrice? price;
@override final  MarketPriceDetails? priceDetails;
@override final  DateTime? freeCancellationUntil;
@override final  String? paymentId;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isAddressesLoading;
@override@JsonKey() final  bool isPickupPointsLoading;
@override@JsonKey() final  bool isOrdering;
@override@JsonKey() final  bool isOrderCreated;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutStateCopyWith<_CheckoutState> get copyWith => __$CheckoutStateCopyWithImpl<_CheckoutState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutState&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.address, address) || other.address == address)&&(identical(other.region, region) || other.region == region)&&(identical(other.pickupPoint, pickupPoint) || other.pickupPoint == pickupPoint)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._deliveryMethods, _deliveryMethods)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&const DeepCollectionEquality().equals(other._pickupPoints, _pickupPoints)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceDetails, priceDetails) || other.priceDetails == priceDetails)&&(identical(other.freeCancellationUntil, freeCancellationUntil) || other.freeCancellationUntil == freeCancellationUntil)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isAddressesLoading, isAddressesLoading) || other.isAddressesLoading == isAddressesLoading)&&(identical(other.isPickupPointsLoading, isPickupPointsLoading) || other.isPickupPointsLoading == isPickupPointsLoading)&&(identical(other.isOrdering, isOrdering) || other.isOrdering == isOrdering)&&(identical(other.isOrderCreated, isOrderCreated) || other.isOrderCreated == isOrderCreated)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hashAll([runtimeType,delivery,address,region,pickupPoint,phone,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_deliveryMethods),const DeepCollectionEquality().hash(_addresses),const DeepCollectionEquality().hash(_pickupPoints),price,priceDetails,freeCancellationUntil,paymentId,isLoading,isAddressesLoading,isPickupPointsLoading,isOrdering,isOrderCreated,loadFailed,errorMessage]);

@override
String toString() {
  return 'CheckoutState(delivery: $delivery, address: $address, region: $region, pickupPoint: $pickupPoint, phone: $phone, items: $items, deliveryMethods: $deliveryMethods, addresses: $addresses, pickupPoints: $pickupPoints, price: $price, priceDetails: $priceDetails, freeCancellationUntil: $freeCancellationUntil, paymentId: $paymentId, isLoading: $isLoading, isAddressesLoading: $isAddressesLoading, isPickupPointsLoading: $isPickupPointsLoading, isOrdering: $isOrdering, isOrderCreated: $isOrderCreated, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CheckoutStateCopyWith<$Res> implements $CheckoutStateCopyWith<$Res> {
  factory _$CheckoutStateCopyWith(_CheckoutState value, $Res Function(_CheckoutState) _then) = __$CheckoutStateCopyWithImpl;
@override @useResult
$Res call({
 DeliveryMethod? delivery, MarketAddress? address, MarketRegion? region, MarketPickupPoint? pickupPoint, String? phone, List<CartItem> items, List<DeliveryMethod> deliveryMethods, List<MarketAddress> addresses, List<MarketPickupPoint> pickupPoints, CheckoutPrice? price, MarketPriceDetails? priceDetails, DateTime? freeCancellationUntil, String? paymentId, bool isLoading, bool isAddressesLoading, bool isPickupPointsLoading, bool isOrdering, bool isOrderCreated, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$CheckoutStateCopyWithImpl<$Res>
    implements _$CheckoutStateCopyWith<$Res> {
  __$CheckoutStateCopyWithImpl(this._self, this._then);

  final _CheckoutState _self;
  final $Res Function(_CheckoutState) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? delivery = freezed,Object? address = freezed,Object? region = freezed,Object? pickupPoint = freezed,Object? phone = freezed,Object? items = null,Object? deliveryMethods = null,Object? addresses = null,Object? pickupPoints = null,Object? price = freezed,Object? priceDetails = freezed,Object? freeCancellationUntil = freezed,Object? paymentId = freezed,Object? isLoading = null,Object? isAddressesLoading = null,Object? isPickupPointsLoading = null,Object? isOrdering = null,Object? isOrderCreated = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_CheckoutState(
delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as DeliveryMethod?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as MarketAddress?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as MarketRegion?,pickupPoint: freezed == pickupPoint ? _self.pickupPoint : pickupPoint // ignore: cast_nullable_to_non_nullable
as MarketPickupPoint?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItem>,deliveryMethods: null == deliveryMethods ? _self._deliveryMethods : deliveryMethods // ignore: cast_nullable_to_non_nullable
as List<DeliveryMethod>,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<MarketAddress>,pickupPoints: null == pickupPoints ? _self._pickupPoints : pickupPoints // ignore: cast_nullable_to_non_nullable
as List<MarketPickupPoint>,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as CheckoutPrice?,priceDetails: freezed == priceDetails ? _self.priceDetails : priceDetails // ignore: cast_nullable_to_non_nullable
as MarketPriceDetails?,freeCancellationUntil: freezed == freeCancellationUntil ? _self.freeCancellationUntil : freeCancellationUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isAddressesLoading: null == isAddressesLoading ? _self.isAddressesLoading : isAddressesLoading // ignore: cast_nullable_to_non_nullable
as bool,isPickupPointsLoading: null == isPickupPointsLoading ? _self.isPickupPointsLoading : isPickupPointsLoading // ignore: cast_nullable_to_non_nullable
as bool,isOrdering: null == isOrdering ? _self.isOrdering : isOrdering // ignore: cast_nullable_to_non_nullable
as bool,isOrderCreated: null == isOrderCreated ? _self.isOrderCreated : isOrderCreated // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
