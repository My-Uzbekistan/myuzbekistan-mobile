// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'museum_purchase_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MuseumPurchaseEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumPurchaseEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumPurchaseEvent()';
}


}

/// @nodoc
class $MuseumPurchaseEventCopyWith<$Res>  {
$MuseumPurchaseEventCopyWith(MuseumPurchaseEvent _, $Res Function(MuseumPurchaseEvent) __);
}


/// Adds pattern-matching-related methods to [MuseumPurchaseEvent].
extension MuseumPurchaseEventPatterns on MuseumPurchaseEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MuseumPurchaseStartEvent value)?  start,TResult Function( _MuseumPurchaseChangeQuantityEvent value)?  changeQuantity,TResult Function( _MuseumPurchasePayEvent value)?  pay,TResult Function( _MuseumPurchaseConfirmEvent value)?  confirm,TResult Function( _MuseumPurchasePollOrderEvent value)?  pollOrder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumPurchaseStartEvent() when start != null:
return start(_that);case _MuseumPurchaseChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that);case _MuseumPurchasePayEvent() when pay != null:
return pay(_that);case _MuseumPurchaseConfirmEvent() when confirm != null:
return confirm(_that);case _MuseumPurchasePollOrderEvent() when pollOrder != null:
return pollOrder(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MuseumPurchaseStartEvent value)  start,required TResult Function( _MuseumPurchaseChangeQuantityEvent value)  changeQuantity,required TResult Function( _MuseumPurchasePayEvent value)  pay,required TResult Function( _MuseumPurchaseConfirmEvent value)  confirm,required TResult Function( _MuseumPurchasePollOrderEvent value)  pollOrder,}){
final _that = this;
switch (_that) {
case _MuseumPurchaseStartEvent():
return start(_that);case _MuseumPurchaseChangeQuantityEvent():
return changeQuantity(_that);case _MuseumPurchasePayEvent():
return pay(_that);case _MuseumPurchaseConfirmEvent():
return confirm(_that);case _MuseumPurchasePollOrderEvent():
return pollOrder(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MuseumPurchaseStartEvent value)?  start,TResult? Function( _MuseumPurchaseChangeQuantityEvent value)?  changeQuantity,TResult? Function( _MuseumPurchasePayEvent value)?  pay,TResult? Function( _MuseumPurchaseConfirmEvent value)?  confirm,TResult? Function( _MuseumPurchasePollOrderEvent value)?  pollOrder,}){
final _that = this;
switch (_that) {
case _MuseumPurchaseStartEvent() when start != null:
return start(_that);case _MuseumPurchaseChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that);case _MuseumPurchasePayEvent() when pay != null:
return pay(_that);case _MuseumPurchaseConfirmEvent() when confirm != null:
return confirm(_that);case _MuseumPurchasePollOrderEvent() when pollOrder != null:
return pollOrder(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String museumId)?  start,TResult Function( String tariffId,  int quantity)?  changeQuantity,TResult Function( int cardId)?  pay,TResult Function()?  confirm,TResult Function()?  pollOrder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumPurchaseStartEvent() when start != null:
return start(_that.museumId);case _MuseumPurchaseChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that.tariffId,_that.quantity);case _MuseumPurchasePayEvent() when pay != null:
return pay(_that.cardId);case _MuseumPurchaseConfirmEvent() when confirm != null:
return confirm();case _MuseumPurchasePollOrderEvent() when pollOrder != null:
return pollOrder();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String museumId)  start,required TResult Function( String tariffId,  int quantity)  changeQuantity,required TResult Function( int cardId)  pay,required TResult Function()  confirm,required TResult Function()  pollOrder,}) {final _that = this;
switch (_that) {
case _MuseumPurchaseStartEvent():
return start(_that.museumId);case _MuseumPurchaseChangeQuantityEvent():
return changeQuantity(_that.tariffId,_that.quantity);case _MuseumPurchasePayEvent():
return pay(_that.cardId);case _MuseumPurchaseConfirmEvent():
return confirm();case _MuseumPurchasePollOrderEvent():
return pollOrder();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String museumId)?  start,TResult? Function( String tariffId,  int quantity)?  changeQuantity,TResult? Function( int cardId)?  pay,TResult? Function()?  confirm,TResult? Function()?  pollOrder,}) {final _that = this;
switch (_that) {
case _MuseumPurchaseStartEvent() when start != null:
return start(_that.museumId);case _MuseumPurchaseChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that.tariffId,_that.quantity);case _MuseumPurchasePayEvent() when pay != null:
return pay(_that.cardId);case _MuseumPurchaseConfirmEvent() when confirm != null:
return confirm();case _MuseumPurchasePollOrderEvent() when pollOrder != null:
return pollOrder();case _:
  return null;

}
}

}

/// @nodoc


class _MuseumPurchaseStartEvent implements MuseumPurchaseEvent {
   _MuseumPurchaseStartEvent({required this.museumId});
  

 final  String museumId;

/// Create a copy of MuseumPurchaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumPurchaseStartEventCopyWith<_MuseumPurchaseStartEvent> get copyWith => __$MuseumPurchaseStartEventCopyWithImpl<_MuseumPurchaseStartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumPurchaseStartEvent&&(identical(other.museumId, museumId) || other.museumId == museumId));
}


@override
int get hashCode => Object.hash(runtimeType,museumId);

@override
String toString() {
  return 'MuseumPurchaseEvent.start(museumId: $museumId)';
}


}

/// @nodoc
abstract mixin class _$MuseumPurchaseStartEventCopyWith<$Res> implements $MuseumPurchaseEventCopyWith<$Res> {
  factory _$MuseumPurchaseStartEventCopyWith(_MuseumPurchaseStartEvent value, $Res Function(_MuseumPurchaseStartEvent) _then) = __$MuseumPurchaseStartEventCopyWithImpl;
@useResult
$Res call({
 String museumId
});




}
/// @nodoc
class __$MuseumPurchaseStartEventCopyWithImpl<$Res>
    implements _$MuseumPurchaseStartEventCopyWith<$Res> {
  __$MuseumPurchaseStartEventCopyWithImpl(this._self, this._then);

  final _MuseumPurchaseStartEvent _self;
  final $Res Function(_MuseumPurchaseStartEvent) _then;

/// Create a copy of MuseumPurchaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? museumId = null,}) {
  return _then(_MuseumPurchaseStartEvent(
museumId: null == museumId ? _self.museumId : museumId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MuseumPurchaseChangeQuantityEvent implements MuseumPurchaseEvent {
   _MuseumPurchaseChangeQuantityEvent({required this.tariffId, required this.quantity});
  

 final  String tariffId;
 final  int quantity;

/// Create a copy of MuseumPurchaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumPurchaseChangeQuantityEventCopyWith<_MuseumPurchaseChangeQuantityEvent> get copyWith => __$MuseumPurchaseChangeQuantityEventCopyWithImpl<_MuseumPurchaseChangeQuantityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumPurchaseChangeQuantityEvent&&(identical(other.tariffId, tariffId) || other.tariffId == tariffId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,tariffId,quantity);

@override
String toString() {
  return 'MuseumPurchaseEvent.changeQuantity(tariffId: $tariffId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$MuseumPurchaseChangeQuantityEventCopyWith<$Res> implements $MuseumPurchaseEventCopyWith<$Res> {
  factory _$MuseumPurchaseChangeQuantityEventCopyWith(_MuseumPurchaseChangeQuantityEvent value, $Res Function(_MuseumPurchaseChangeQuantityEvent) _then) = __$MuseumPurchaseChangeQuantityEventCopyWithImpl;
@useResult
$Res call({
 String tariffId, int quantity
});




}
/// @nodoc
class __$MuseumPurchaseChangeQuantityEventCopyWithImpl<$Res>
    implements _$MuseumPurchaseChangeQuantityEventCopyWith<$Res> {
  __$MuseumPurchaseChangeQuantityEventCopyWithImpl(this._self, this._then);

  final _MuseumPurchaseChangeQuantityEvent _self;
  final $Res Function(_MuseumPurchaseChangeQuantityEvent) _then;

/// Create a copy of MuseumPurchaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tariffId = null,Object? quantity = null,}) {
  return _then(_MuseumPurchaseChangeQuantityEvent(
tariffId: null == tariffId ? _self.tariffId : tariffId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _MuseumPurchasePayEvent implements MuseumPurchaseEvent {
   _MuseumPurchasePayEvent({required this.cardId});
  

 final  int cardId;

/// Create a copy of MuseumPurchaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumPurchasePayEventCopyWith<_MuseumPurchasePayEvent> get copyWith => __$MuseumPurchasePayEventCopyWithImpl<_MuseumPurchasePayEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumPurchasePayEvent&&(identical(other.cardId, cardId) || other.cardId == cardId));
}


@override
int get hashCode => Object.hash(runtimeType,cardId);

@override
String toString() {
  return 'MuseumPurchaseEvent.pay(cardId: $cardId)';
}


}

/// @nodoc
abstract mixin class _$MuseumPurchasePayEventCopyWith<$Res> implements $MuseumPurchaseEventCopyWith<$Res> {
  factory _$MuseumPurchasePayEventCopyWith(_MuseumPurchasePayEvent value, $Res Function(_MuseumPurchasePayEvent) _then) = __$MuseumPurchasePayEventCopyWithImpl;
@useResult
$Res call({
 int cardId
});




}
/// @nodoc
class __$MuseumPurchasePayEventCopyWithImpl<$Res>
    implements _$MuseumPurchasePayEventCopyWith<$Res> {
  __$MuseumPurchasePayEventCopyWithImpl(this._self, this._then);

  final _MuseumPurchasePayEvent _self;
  final $Res Function(_MuseumPurchasePayEvent) _then;

/// Create a copy of MuseumPurchaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cardId = null,}) {
  return _then(_MuseumPurchasePayEvent(
cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _MuseumPurchaseConfirmEvent implements MuseumPurchaseEvent {
   _MuseumPurchaseConfirmEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumPurchaseConfirmEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumPurchaseEvent.confirm()';
}


}




/// @nodoc


class _MuseumPurchasePollOrderEvent implements MuseumPurchaseEvent {
   _MuseumPurchasePollOrderEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumPurchasePollOrderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumPurchaseEvent.pollOrder()';
}


}




/// @nodoc
mixin _$MuseumPurchaseState {

 String get museumId; String get idempotencyKey; MuseumDetail? get detail; List<MuseumTariff> get tariffs; Map<String, int> get quantities; List<CardItem> get cards; MuseumOrder? get order; bool get isLoading; bool get isPaying; bool get isSuccess; bool get loadFailed; String? get errorMessage;
/// Create a copy of MuseumPurchaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuseumPurchaseStateCopyWith<MuseumPurchaseState> get copyWith => _$MuseumPurchaseStateCopyWithImpl<MuseumPurchaseState>(this as MuseumPurchaseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumPurchaseState&&(identical(other.museumId, museumId) || other.museumId == museumId)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.detail, detail) || other.detail == detail)&&const DeepCollectionEquality().equals(other.tariffs, tariffs)&&const DeepCollectionEquality().equals(other.quantities, quantities)&&const DeepCollectionEquality().equals(other.cards, cards)&&(identical(other.order, order) || other.order == order)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isPaying, isPaying) || other.isPaying == isPaying)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,museumId,idempotencyKey,detail,const DeepCollectionEquality().hash(tariffs),const DeepCollectionEquality().hash(quantities),const DeepCollectionEquality().hash(cards),order,isLoading,isPaying,isSuccess,loadFailed,errorMessage);

@override
String toString() {
  return 'MuseumPurchaseState(museumId: $museumId, idempotencyKey: $idempotencyKey, detail: $detail, tariffs: $tariffs, quantities: $quantities, cards: $cards, order: $order, isLoading: $isLoading, isPaying: $isPaying, isSuccess: $isSuccess, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MuseumPurchaseStateCopyWith<$Res>  {
  factory $MuseumPurchaseStateCopyWith(MuseumPurchaseState value, $Res Function(MuseumPurchaseState) _then) = _$MuseumPurchaseStateCopyWithImpl;
@useResult
$Res call({
 String museumId, String idempotencyKey, MuseumDetail? detail, List<MuseumTariff> tariffs, Map<String, int> quantities, List<CardItem> cards, MuseumOrder? order, bool isLoading, bool isPaying, bool isSuccess, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$MuseumPurchaseStateCopyWithImpl<$Res>
    implements $MuseumPurchaseStateCopyWith<$Res> {
  _$MuseumPurchaseStateCopyWithImpl(this._self, this._then);

  final MuseumPurchaseState _self;
  final $Res Function(MuseumPurchaseState) _then;

/// Create a copy of MuseumPurchaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? museumId = null,Object? idempotencyKey = null,Object? detail = freezed,Object? tariffs = null,Object? quantities = null,Object? cards = null,Object? order = freezed,Object? isLoading = null,Object? isPaying = null,Object? isSuccess = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
museumId: null == museumId ? _self.museumId : museumId // ignore: cast_nullable_to_non_nullable
as String,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as MuseumDetail?,tariffs: null == tariffs ? _self.tariffs : tariffs // ignore: cast_nullable_to_non_nullable
as List<MuseumTariff>,quantities: null == quantities ? _self.quantities : quantities // ignore: cast_nullable_to_non_nullable
as Map<String, int>,cards: null == cards ? _self.cards : cards // ignore: cast_nullable_to_non_nullable
as List<CardItem>,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as MuseumOrder?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isPaying: null == isPaying ? _self.isPaying : isPaying // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MuseumPurchaseState].
extension MuseumPurchaseStatePatterns on MuseumPurchaseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuseumPurchaseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumPurchaseState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuseumPurchaseState value)  $default,){
final _that = this;
switch (_that) {
case _MuseumPurchaseState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuseumPurchaseState value)?  $default,){
final _that = this;
switch (_that) {
case _MuseumPurchaseState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String museumId,  String idempotencyKey,  MuseumDetail? detail,  List<MuseumTariff> tariffs,  Map<String, int> quantities,  List<CardItem> cards,  MuseumOrder? order,  bool isLoading,  bool isPaying,  bool isSuccess,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumPurchaseState() when $default != null:
return $default(_that.museumId,_that.idempotencyKey,_that.detail,_that.tariffs,_that.quantities,_that.cards,_that.order,_that.isLoading,_that.isPaying,_that.isSuccess,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String museumId,  String idempotencyKey,  MuseumDetail? detail,  List<MuseumTariff> tariffs,  Map<String, int> quantities,  List<CardItem> cards,  MuseumOrder? order,  bool isLoading,  bool isPaying,  bool isSuccess,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MuseumPurchaseState():
return $default(_that.museumId,_that.idempotencyKey,_that.detail,_that.tariffs,_that.quantities,_that.cards,_that.order,_that.isLoading,_that.isPaying,_that.isSuccess,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String museumId,  String idempotencyKey,  MuseumDetail? detail,  List<MuseumTariff> tariffs,  Map<String, int> quantities,  List<CardItem> cards,  MuseumOrder? order,  bool isLoading,  bool isPaying,  bool isSuccess,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MuseumPurchaseState() when $default != null:
return $default(_that.museumId,_that.idempotencyKey,_that.detail,_that.tariffs,_that.quantities,_that.cards,_that.order,_that.isLoading,_that.isPaying,_that.isSuccess,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MuseumPurchaseState extends MuseumPurchaseState {
   _MuseumPurchaseState({this.museumId = "", this.idempotencyKey = "", this.detail, final  List<MuseumTariff> tariffs = const [], final  Map<String, int> quantities = const {}, final  List<CardItem> cards = const [], this.order, this.isLoading = false, this.isPaying = false, this.isSuccess = false, this.loadFailed = false, this.errorMessage}): _tariffs = tariffs,_quantities = quantities,_cards = cards,super._();
  

@override@JsonKey() final  String museumId;
@override@JsonKey() final  String idempotencyKey;
@override final  MuseumDetail? detail;
 final  List<MuseumTariff> _tariffs;
@override@JsonKey() List<MuseumTariff> get tariffs {
  if (_tariffs is EqualUnmodifiableListView) return _tariffs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tariffs);
}

 final  Map<String, int> _quantities;
@override@JsonKey() Map<String, int> get quantities {
  if (_quantities is EqualUnmodifiableMapView) return _quantities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_quantities);
}

 final  List<CardItem> _cards;
@override@JsonKey() List<CardItem> get cards {
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cards);
}

@override final  MuseumOrder? order;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isPaying;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of MuseumPurchaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumPurchaseStateCopyWith<_MuseumPurchaseState> get copyWith => __$MuseumPurchaseStateCopyWithImpl<_MuseumPurchaseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumPurchaseState&&(identical(other.museumId, museumId) || other.museumId == museumId)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.detail, detail) || other.detail == detail)&&const DeepCollectionEquality().equals(other._tariffs, _tariffs)&&const DeepCollectionEquality().equals(other._quantities, _quantities)&&const DeepCollectionEquality().equals(other._cards, _cards)&&(identical(other.order, order) || other.order == order)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isPaying, isPaying) || other.isPaying == isPaying)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,museumId,idempotencyKey,detail,const DeepCollectionEquality().hash(_tariffs),const DeepCollectionEquality().hash(_quantities),const DeepCollectionEquality().hash(_cards),order,isLoading,isPaying,isSuccess,loadFailed,errorMessage);

@override
String toString() {
  return 'MuseumPurchaseState(museumId: $museumId, idempotencyKey: $idempotencyKey, detail: $detail, tariffs: $tariffs, quantities: $quantities, cards: $cards, order: $order, isLoading: $isLoading, isPaying: $isPaying, isSuccess: $isSuccess, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MuseumPurchaseStateCopyWith<$Res> implements $MuseumPurchaseStateCopyWith<$Res> {
  factory _$MuseumPurchaseStateCopyWith(_MuseumPurchaseState value, $Res Function(_MuseumPurchaseState) _then) = __$MuseumPurchaseStateCopyWithImpl;
@override @useResult
$Res call({
 String museumId, String idempotencyKey, MuseumDetail? detail, List<MuseumTariff> tariffs, Map<String, int> quantities, List<CardItem> cards, MuseumOrder? order, bool isLoading, bool isPaying, bool isSuccess, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$MuseumPurchaseStateCopyWithImpl<$Res>
    implements _$MuseumPurchaseStateCopyWith<$Res> {
  __$MuseumPurchaseStateCopyWithImpl(this._self, this._then);

  final _MuseumPurchaseState _self;
  final $Res Function(_MuseumPurchaseState) _then;

/// Create a copy of MuseumPurchaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? museumId = null,Object? idempotencyKey = null,Object? detail = freezed,Object? tariffs = null,Object? quantities = null,Object? cards = null,Object? order = freezed,Object? isLoading = null,Object? isPaying = null,Object? isSuccess = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_MuseumPurchaseState(
museumId: null == museumId ? _self.museumId : museumId // ignore: cast_nullable_to_non_nullable
as String,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as MuseumDetail?,tariffs: null == tariffs ? _self._tariffs : tariffs // ignore: cast_nullable_to_non_nullable
as List<MuseumTariff>,quantities: null == quantities ? _self._quantities : quantities // ignore: cast_nullable_to_non_nullable
as Map<String, int>,cards: null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<CardItem>,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as MuseumOrder?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isPaying: null == isPaying ? _self.isPaying : isPaying // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
