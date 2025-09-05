// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentEvent()';
}


}

/// @nodoc
class $PaymentEventCopyWith<$Res>  {
$PaymentEventCopyWith(PaymentEvent _, $Res Function(PaymentEvent) __);
}


/// Adds pattern-matching-related methods to [PaymentEvent].
extension PaymentEventPatterns on PaymentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PaymentPayEvent value)?  pay,TResult Function( _PaymentPayUpdateCardsEvent value)?  updateCards,TResult Function( _PaymentPayLoadCardsEvent value)?  loadCards,TResult Function( _CheckPayDetailEvent value)?  checkPayDetail,TResult Function( _PaymentSetMerchantEvent value)?  setMerchant,TResult Function( _PaymentSelecteCardEvent value)?  selectedCard,TResult Function( _PaymentMerchantEvent value)?  loadMerchantById,TResult Function( _PaymentSetAmountEvent value)?  setAmount,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentPayEvent() when pay != null:
return pay(_that);case _PaymentPayUpdateCardsEvent() when updateCards != null:
return updateCards(_that);case _PaymentPayLoadCardsEvent() when loadCards != null:
return loadCards(_that);case _CheckPayDetailEvent() when checkPayDetail != null:
return checkPayDetail(_that);case _PaymentSetMerchantEvent() when setMerchant != null:
return setMerchant(_that);case _PaymentSelecteCardEvent() when selectedCard != null:
return selectedCard(_that);case _PaymentMerchantEvent() when loadMerchantById != null:
return loadMerchantById(_that);case _PaymentSetAmountEvent() when setAmount != null:
return setAmount(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PaymentPayEvent value)  pay,required TResult Function( _PaymentPayUpdateCardsEvent value)  updateCards,required TResult Function( _PaymentPayLoadCardsEvent value)  loadCards,required TResult Function( _CheckPayDetailEvent value)  checkPayDetail,required TResult Function( _PaymentSetMerchantEvent value)  setMerchant,required TResult Function( _PaymentSelecteCardEvent value)  selectedCard,required TResult Function( _PaymentMerchantEvent value)  loadMerchantById,required TResult Function( _PaymentSetAmountEvent value)  setAmount,}){
final _that = this;
switch (_that) {
case _PaymentPayEvent():
return pay(_that);case _PaymentPayUpdateCardsEvent():
return updateCards(_that);case _PaymentPayLoadCardsEvent():
return loadCards(_that);case _CheckPayDetailEvent():
return checkPayDetail(_that);case _PaymentSetMerchantEvent():
return setMerchant(_that);case _PaymentSelecteCardEvent():
return selectedCard(_that);case _PaymentMerchantEvent():
return loadMerchantById(_that);case _PaymentSetAmountEvent():
return setAmount(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PaymentPayEvent value)?  pay,TResult? Function( _PaymentPayUpdateCardsEvent value)?  updateCards,TResult? Function( _PaymentPayLoadCardsEvent value)?  loadCards,TResult? Function( _CheckPayDetailEvent value)?  checkPayDetail,TResult? Function( _PaymentSetMerchantEvent value)?  setMerchant,TResult? Function( _PaymentSelecteCardEvent value)?  selectedCard,TResult? Function( _PaymentMerchantEvent value)?  loadMerchantById,TResult? Function( _PaymentSetAmountEvent value)?  setAmount,}){
final _that = this;
switch (_that) {
case _PaymentPayEvent() when pay != null:
return pay(_that);case _PaymentPayUpdateCardsEvent() when updateCards != null:
return updateCards(_that);case _PaymentPayLoadCardsEvent() when loadCards != null:
return loadCards(_that);case _CheckPayDetailEvent() when checkPayDetail != null:
return checkPayDetail(_that);case _PaymentSetMerchantEvent() when setMerchant != null:
return setMerchant(_that);case _PaymentSelecteCardEvent() when selectedCard != null:
return selectedCard(_that);case _PaymentMerchantEvent() when loadMerchantById != null:
return loadMerchantById(_that);case _PaymentSetAmountEvent() when setAmount != null:
return setAmount(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  pay,TResult Function()?  updateCards,TResult Function()?  loadCards,TResult Function()?  checkPayDetail,TResult Function( Merchant merchant)?  setMerchant,TResult Function( CardItem item)?  selectedCard,TResult Function( String merchantId)?  loadMerchantById,TResult Function( String amount)?  setAmount,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentPayEvent() when pay != null:
return pay();case _PaymentPayUpdateCardsEvent() when updateCards != null:
return updateCards();case _PaymentPayLoadCardsEvent() when loadCards != null:
return loadCards();case _CheckPayDetailEvent() when checkPayDetail != null:
return checkPayDetail();case _PaymentSetMerchantEvent() when setMerchant != null:
return setMerchant(_that.merchant);case _PaymentSelecteCardEvent() when selectedCard != null:
return selectedCard(_that.item);case _PaymentMerchantEvent() when loadMerchantById != null:
return loadMerchantById(_that.merchantId);case _PaymentSetAmountEvent() when setAmount != null:
return setAmount(_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  pay,required TResult Function()  updateCards,required TResult Function()  loadCards,required TResult Function()  checkPayDetail,required TResult Function( Merchant merchant)  setMerchant,required TResult Function( CardItem item)  selectedCard,required TResult Function( String merchantId)  loadMerchantById,required TResult Function( String amount)  setAmount,}) {final _that = this;
switch (_that) {
case _PaymentPayEvent():
return pay();case _PaymentPayUpdateCardsEvent():
return updateCards();case _PaymentPayLoadCardsEvent():
return loadCards();case _CheckPayDetailEvent():
return checkPayDetail();case _PaymentSetMerchantEvent():
return setMerchant(_that.merchant);case _PaymentSelecteCardEvent():
return selectedCard(_that.item);case _PaymentMerchantEvent():
return loadMerchantById(_that.merchantId);case _PaymentSetAmountEvent():
return setAmount(_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  pay,TResult? Function()?  updateCards,TResult? Function()?  loadCards,TResult? Function()?  checkPayDetail,TResult? Function( Merchant merchant)?  setMerchant,TResult? Function( CardItem item)?  selectedCard,TResult? Function( String merchantId)?  loadMerchantById,TResult? Function( String amount)?  setAmount,}) {final _that = this;
switch (_that) {
case _PaymentPayEvent() when pay != null:
return pay();case _PaymentPayUpdateCardsEvent() when updateCards != null:
return updateCards();case _PaymentPayLoadCardsEvent() when loadCards != null:
return loadCards();case _CheckPayDetailEvent() when checkPayDetail != null:
return checkPayDetail();case _PaymentSetMerchantEvent() when setMerchant != null:
return setMerchant(_that.merchant);case _PaymentSelecteCardEvent() when selectedCard != null:
return selectedCard(_that.item);case _PaymentMerchantEvent() when loadMerchantById != null:
return loadMerchantById(_that.merchantId);case _PaymentSetAmountEvent() when setAmount != null:
return setAmount(_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentPayEvent implements PaymentEvent {
  const _PaymentPayEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentPayEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentEvent.pay()';
}


}




/// @nodoc


class _PaymentPayUpdateCardsEvent implements PaymentEvent {
  const _PaymentPayUpdateCardsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentPayUpdateCardsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentEvent.updateCards()';
}


}




/// @nodoc


class _PaymentPayLoadCardsEvent implements PaymentEvent {
  const _PaymentPayLoadCardsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentPayLoadCardsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentEvent.loadCards()';
}


}




/// @nodoc


class _CheckPayDetailEvent implements PaymentEvent {
  const _CheckPayDetailEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckPayDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentEvent.checkPayDetail()';
}


}




/// @nodoc


class _PaymentSetMerchantEvent implements PaymentEvent {
  const _PaymentSetMerchantEvent(this.merchant);
  

 final  Merchant merchant;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentSetMerchantEventCopyWith<_PaymentSetMerchantEvent> get copyWith => __$PaymentSetMerchantEventCopyWithImpl<_PaymentSetMerchantEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentSetMerchantEvent&&(identical(other.merchant, merchant) || other.merchant == merchant));
}


@override
int get hashCode => Object.hash(runtimeType,merchant);

@override
String toString() {
  return 'PaymentEvent.setMerchant(merchant: $merchant)';
}


}

/// @nodoc
abstract mixin class _$PaymentSetMerchantEventCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory _$PaymentSetMerchantEventCopyWith(_PaymentSetMerchantEvent value, $Res Function(_PaymentSetMerchantEvent) _then) = __$PaymentSetMerchantEventCopyWithImpl;
@useResult
$Res call({
 Merchant merchant
});




}
/// @nodoc
class __$PaymentSetMerchantEventCopyWithImpl<$Res>
    implements _$PaymentSetMerchantEventCopyWith<$Res> {
  __$PaymentSetMerchantEventCopyWithImpl(this._self, this._then);

  final _PaymentSetMerchantEvent _self;
  final $Res Function(_PaymentSetMerchantEvent) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? merchant = null,}) {
  return _then(_PaymentSetMerchantEvent(
null == merchant ? _self.merchant : merchant // ignore: cast_nullable_to_non_nullable
as Merchant,
  ));
}


}

/// @nodoc


class _PaymentSelecteCardEvent implements PaymentEvent {
  const _PaymentSelecteCardEvent(this.item);
  

 final  CardItem item;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentSelecteCardEventCopyWith<_PaymentSelecteCardEvent> get copyWith => __$PaymentSelecteCardEventCopyWithImpl<_PaymentSelecteCardEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentSelecteCardEvent&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'PaymentEvent.selectedCard(item: $item)';
}


}

/// @nodoc
abstract mixin class _$PaymentSelecteCardEventCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory _$PaymentSelecteCardEventCopyWith(_PaymentSelecteCardEvent value, $Res Function(_PaymentSelecteCardEvent) _then) = __$PaymentSelecteCardEventCopyWithImpl;
@useResult
$Res call({
 CardItem item
});




}
/// @nodoc
class __$PaymentSelecteCardEventCopyWithImpl<$Res>
    implements _$PaymentSelecteCardEventCopyWith<$Res> {
  __$PaymentSelecteCardEventCopyWithImpl(this._self, this._then);

  final _PaymentSelecteCardEvent _self;
  final $Res Function(_PaymentSelecteCardEvent) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_PaymentSelecteCardEvent(
null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as CardItem,
  ));
}


}

/// @nodoc


class _PaymentMerchantEvent implements PaymentEvent {
  const _PaymentMerchantEvent({required this.merchantId});
  

 final  String merchantId;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMerchantEventCopyWith<_PaymentMerchantEvent> get copyWith => __$PaymentMerchantEventCopyWithImpl<_PaymentMerchantEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMerchantEvent&&(identical(other.merchantId, merchantId) || other.merchantId == merchantId));
}


@override
int get hashCode => Object.hash(runtimeType,merchantId);

@override
String toString() {
  return 'PaymentEvent.loadMerchantById(merchantId: $merchantId)';
}


}

/// @nodoc
abstract mixin class _$PaymentMerchantEventCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory _$PaymentMerchantEventCopyWith(_PaymentMerchantEvent value, $Res Function(_PaymentMerchantEvent) _then) = __$PaymentMerchantEventCopyWithImpl;
@useResult
$Res call({
 String merchantId
});




}
/// @nodoc
class __$PaymentMerchantEventCopyWithImpl<$Res>
    implements _$PaymentMerchantEventCopyWith<$Res> {
  __$PaymentMerchantEventCopyWithImpl(this._self, this._then);

  final _PaymentMerchantEvent _self;
  final $Res Function(_PaymentMerchantEvent) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? merchantId = null,}) {
  return _then(_PaymentMerchantEvent(
merchantId: null == merchantId ? _self.merchantId : merchantId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PaymentSetAmountEvent implements PaymentEvent {
  const _PaymentSetAmountEvent({required this.amount});
  

 final  String amount;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentSetAmountEventCopyWith<_PaymentSetAmountEvent> get copyWith => __$PaymentSetAmountEventCopyWithImpl<_PaymentSetAmountEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentSetAmountEvent&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'PaymentEvent.setAmount(amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$PaymentSetAmountEventCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory _$PaymentSetAmountEventCopyWith(_PaymentSetAmountEvent value, $Res Function(_PaymentSetAmountEvent) _then) = __$PaymentSetAmountEventCopyWithImpl;
@useResult
$Res call({
 String amount
});




}
/// @nodoc
class __$PaymentSetAmountEventCopyWithImpl<$Res>
    implements _$PaymentSetAmountEventCopyWith<$Res> {
  __$PaymentSetAmountEventCopyWithImpl(this._self, this._then);

  final _PaymentSetAmountEvent _self;
  final $Res Function(_PaymentSetAmountEvent) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(_PaymentSetAmountEvent(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PaymentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentState()';
}


}

/// @nodoc
class $PaymentStateCopyWith<$Res>  {
$PaymentStateCopyWith(PaymentState _, $Res Function(PaymentState) __);
}


/// Adds pattern-matching-related methods to [PaymentState].
extension PaymentStatePatterns on PaymentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentLoadingState value)?  loadingState,TResult Function( PaymentErrorState value)?  errorState,TResult Function( PaymentDataState value)?  dataState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentLoadingState() when loadingState != null:
return loadingState(_that);case PaymentErrorState() when errorState != null:
return errorState(_that);case PaymentDataState() when dataState != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentLoadingState value)  loadingState,required TResult Function( PaymentErrorState value)  errorState,required TResult Function( PaymentDataState value)  dataState,}){
final _that = this;
switch (_that) {
case PaymentLoadingState():
return loadingState(_that);case PaymentErrorState():
return errorState(_that);case PaymentDataState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentLoadingState value)?  loadingState,TResult? Function( PaymentErrorState value)?  errorState,TResult? Function( PaymentDataState value)?  dataState,}){
final _that = this;
switch (_that) {
case PaymentLoadingState() when loadingState != null:
return loadingState(_that);case PaymentErrorState() when errorState != null:
return errorState(_that);case PaymentDataState() when dataState != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadingState,TResult Function( String? message)?  errorState,TResult Function( Merchant merchant,  List<CardItem> cards,  CardItem? selectedCard,  double? amount,  bool isPayLoading,  PaymentNavState? navState)?  dataState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentLoadingState() when loadingState != null:
return loadingState();case PaymentErrorState() when errorState != null:
return errorState(_that.message);case PaymentDataState() when dataState != null:
return dataState(_that.merchant,_that.cards,_that.selectedCard,_that.amount,_that.isPayLoading,_that.navState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadingState,required TResult Function( String? message)  errorState,required TResult Function( Merchant merchant,  List<CardItem> cards,  CardItem? selectedCard,  double? amount,  bool isPayLoading,  PaymentNavState? navState)  dataState,}) {final _that = this;
switch (_that) {
case PaymentLoadingState():
return loadingState();case PaymentErrorState():
return errorState(_that.message);case PaymentDataState():
return dataState(_that.merchant,_that.cards,_that.selectedCard,_that.amount,_that.isPayLoading,_that.navState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadingState,TResult? Function( String? message)?  errorState,TResult? Function( Merchant merchant,  List<CardItem> cards,  CardItem? selectedCard,  double? amount,  bool isPayLoading,  PaymentNavState? navState)?  dataState,}) {final _that = this;
switch (_that) {
case PaymentLoadingState() when loadingState != null:
return loadingState();case PaymentErrorState() when errorState != null:
return errorState(_that.message);case PaymentDataState() when dataState != null:
return dataState(_that.merchant,_that.cards,_that.selectedCard,_that.amount,_that.isPayLoading,_that.navState);case _:
  return null;

}
}

}

/// @nodoc


class PaymentLoadingState extends PaymentState {
  const PaymentLoadingState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentState.loadingState()';
}


}




/// @nodoc


class PaymentErrorState extends PaymentState {
  const PaymentErrorState({this.message}): super._();
  

 final  String? message;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentErrorStateCopyWith<PaymentErrorState> get copyWith => _$PaymentErrorStateCopyWithImpl<PaymentErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PaymentState.errorState(message: $message)';
}


}

/// @nodoc
abstract mixin class $PaymentErrorStateCopyWith<$Res> implements $PaymentStateCopyWith<$Res> {
  factory $PaymentErrorStateCopyWith(PaymentErrorState value, $Res Function(PaymentErrorState) _then) = _$PaymentErrorStateCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$PaymentErrorStateCopyWithImpl<$Res>
    implements $PaymentErrorStateCopyWith<$Res> {
  _$PaymentErrorStateCopyWithImpl(this._self, this._then);

  final PaymentErrorState _self;
  final $Res Function(PaymentErrorState) _then;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(PaymentErrorState(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class PaymentDataState extends PaymentState {
  const PaymentDataState({required this.merchant, final  List<CardItem> cards = const [], this.selectedCard, this.amount, this.isPayLoading = false, this.navState}): _cards = cards,super._();
  

 final  Merchant merchant;
 final  List<CardItem> _cards;
@JsonKey() List<CardItem> get cards {
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cards);
}

 final  CardItem? selectedCard;
 final  double? amount;
@JsonKey() final  bool isPayLoading;
 final  PaymentNavState? navState;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDataStateCopyWith<PaymentDataState> get copyWith => _$PaymentDataStateCopyWithImpl<PaymentDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDataState&&(identical(other.merchant, merchant) || other.merchant == merchant)&&const DeepCollectionEquality().equals(other._cards, _cards)&&(identical(other.selectedCard, selectedCard) || other.selectedCard == selectedCard)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isPayLoading, isPayLoading) || other.isPayLoading == isPayLoading)&&(identical(other.navState, navState) || other.navState == navState));
}


@override
int get hashCode => Object.hash(runtimeType,merchant,const DeepCollectionEquality().hash(_cards),selectedCard,amount,isPayLoading,navState);

@override
String toString() {
  return 'PaymentState.dataState(merchant: $merchant, cards: $cards, selectedCard: $selectedCard, amount: $amount, isPayLoading: $isPayLoading, navState: $navState)';
}


}

/// @nodoc
abstract mixin class $PaymentDataStateCopyWith<$Res> implements $PaymentStateCopyWith<$Res> {
  factory $PaymentDataStateCopyWith(PaymentDataState value, $Res Function(PaymentDataState) _then) = _$PaymentDataStateCopyWithImpl;
@useResult
$Res call({
 Merchant merchant, List<CardItem> cards, CardItem? selectedCard, double? amount, bool isPayLoading, PaymentNavState? navState
});


$PaymentNavStateCopyWith<$Res>? get navState;

}
/// @nodoc
class _$PaymentDataStateCopyWithImpl<$Res>
    implements $PaymentDataStateCopyWith<$Res> {
  _$PaymentDataStateCopyWithImpl(this._self, this._then);

  final PaymentDataState _self;
  final $Res Function(PaymentDataState) _then;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? merchant = null,Object? cards = null,Object? selectedCard = freezed,Object? amount = freezed,Object? isPayLoading = null,Object? navState = freezed,}) {
  return _then(PaymentDataState(
merchant: null == merchant ? _self.merchant : merchant // ignore: cast_nullable_to_non_nullable
as Merchant,cards: null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<CardItem>,selectedCard: freezed == selectedCard ? _self.selectedCard : selectedCard // ignore: cast_nullable_to_non_nullable
as CardItem?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,isPayLoading: null == isPayLoading ? _self.isPayLoading : isPayLoading // ignore: cast_nullable_to_non_nullable
as bool,navState: freezed == navState ? _self.navState : navState // ignore: cast_nullable_to_non_nullable
as PaymentNavState?,
  ));
}

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentNavStateCopyWith<$Res>? get navState {
    if (_self.navState == null) {
    return null;
  }

  return $PaymentNavStateCopyWith<$Res>(_self.navState!, (value) {
    return _then(_self.copyWith(navState: value));
  });
}
}

/// @nodoc
mixin _$PaymentNavState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentNavState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentNavState()';
}


}

/// @nodoc
class $PaymentNavStateCopyWith<$Res>  {
$PaymentNavStateCopyWith(PaymentNavState _, $Res Function(PaymentNavState) __);
}


/// Adds pattern-matching-related methods to [PaymentNavState].
extension PaymentNavStatePatterns on PaymentNavState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentNavStateSuccess value)?  paymentSuccess,TResult Function( PaymentNavStateConfirmWithWeb value)?  confirmWithWeb,TResult Function( PaymentNavStateExaception value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentNavStateSuccess() when paymentSuccess != null:
return paymentSuccess(_that);case PaymentNavStateConfirmWithWeb() when confirmWithWeb != null:
return confirmWithWeb(_that);case PaymentNavStateExaception() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentNavStateSuccess value)  paymentSuccess,required TResult Function( PaymentNavStateConfirmWithWeb value)  confirmWithWeb,required TResult Function( PaymentNavStateExaception value)  error,}){
final _that = this;
switch (_that) {
case PaymentNavStateSuccess():
return paymentSuccess(_that);case PaymentNavStateConfirmWithWeb():
return confirmWithWeb(_that);case PaymentNavStateExaception():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentNavStateSuccess value)?  paymentSuccess,TResult? Function( PaymentNavStateConfirmWithWeb value)?  confirmWithWeb,TResult? Function( PaymentNavStateExaception value)?  error,}){
final _that = this;
switch (_that) {
case PaymentNavStateSuccess() when paymentSuccess != null:
return paymentSuccess(_that);case PaymentNavStateConfirmWithWeb() when confirmWithWeb != null:
return confirmWithWeb(_that);case PaymentNavStateExaception() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MerchantItem merchant,  int amount,  String paymentId)?  paymentSuccess,TResult Function( String confirmUrl,  String paymentId)?  confirmWithWeb,TResult Function( String? message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentNavStateSuccess() when paymentSuccess != null:
return paymentSuccess(_that.merchant,_that.amount,_that.paymentId);case PaymentNavStateConfirmWithWeb() when confirmWithWeb != null:
return confirmWithWeb(_that.confirmUrl,_that.paymentId);case PaymentNavStateExaception() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MerchantItem merchant,  int amount,  String paymentId)  paymentSuccess,required TResult Function( String confirmUrl,  String paymentId)  confirmWithWeb,required TResult Function( String? message)  error,}) {final _that = this;
switch (_that) {
case PaymentNavStateSuccess():
return paymentSuccess(_that.merchant,_that.amount,_that.paymentId);case PaymentNavStateConfirmWithWeb():
return confirmWithWeb(_that.confirmUrl,_that.paymentId);case PaymentNavStateExaception():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MerchantItem merchant,  int amount,  String paymentId)?  paymentSuccess,TResult? Function( String confirmUrl,  String paymentId)?  confirmWithWeb,TResult? Function( String? message)?  error,}) {final _that = this;
switch (_that) {
case PaymentNavStateSuccess() when paymentSuccess != null:
return paymentSuccess(_that.merchant,_that.amount,_that.paymentId);case PaymentNavStateConfirmWithWeb() when confirmWithWeb != null:
return confirmWithWeb(_that.confirmUrl,_that.paymentId);case PaymentNavStateExaception() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PaymentNavStateSuccess implements PaymentNavState {
  const PaymentNavStateSuccess({required this.merchant, required this.amount, required this.paymentId});
  

 final  MerchantItem merchant;
 final  int amount;
 final  String paymentId;

/// Create a copy of PaymentNavState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentNavStateSuccessCopyWith<PaymentNavStateSuccess> get copyWith => _$PaymentNavStateSuccessCopyWithImpl<PaymentNavStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentNavStateSuccess&&(identical(other.merchant, merchant) || other.merchant == merchant)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,merchant,amount,paymentId);

@override
String toString() {
  return 'PaymentNavState.paymentSuccess(merchant: $merchant, amount: $amount, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $PaymentNavStateSuccessCopyWith<$Res> implements $PaymentNavStateCopyWith<$Res> {
  factory $PaymentNavStateSuccessCopyWith(PaymentNavStateSuccess value, $Res Function(PaymentNavStateSuccess) _then) = _$PaymentNavStateSuccessCopyWithImpl;
@useResult
$Res call({
 MerchantItem merchant, int amount, String paymentId
});




}
/// @nodoc
class _$PaymentNavStateSuccessCopyWithImpl<$Res>
    implements $PaymentNavStateSuccessCopyWith<$Res> {
  _$PaymentNavStateSuccessCopyWithImpl(this._self, this._then);

  final PaymentNavStateSuccess _self;
  final $Res Function(PaymentNavStateSuccess) _then;

/// Create a copy of PaymentNavState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? merchant = null,Object? amount = null,Object? paymentId = null,}) {
  return _then(PaymentNavStateSuccess(
merchant: null == merchant ? _self.merchant : merchant // ignore: cast_nullable_to_non_nullable
as MerchantItem,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PaymentNavStateConfirmWithWeb implements PaymentNavState {
  const PaymentNavStateConfirmWithWeb({required this.confirmUrl, required this.paymentId});
  

 final  String confirmUrl;
 final  String paymentId;

/// Create a copy of PaymentNavState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentNavStateConfirmWithWebCopyWith<PaymentNavStateConfirmWithWeb> get copyWith => _$PaymentNavStateConfirmWithWebCopyWithImpl<PaymentNavStateConfirmWithWeb>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentNavStateConfirmWithWeb&&(identical(other.confirmUrl, confirmUrl) || other.confirmUrl == confirmUrl)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,confirmUrl,paymentId);

@override
String toString() {
  return 'PaymentNavState.confirmWithWeb(confirmUrl: $confirmUrl, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $PaymentNavStateConfirmWithWebCopyWith<$Res> implements $PaymentNavStateCopyWith<$Res> {
  factory $PaymentNavStateConfirmWithWebCopyWith(PaymentNavStateConfirmWithWeb value, $Res Function(PaymentNavStateConfirmWithWeb) _then) = _$PaymentNavStateConfirmWithWebCopyWithImpl;
@useResult
$Res call({
 String confirmUrl, String paymentId
});




}
/// @nodoc
class _$PaymentNavStateConfirmWithWebCopyWithImpl<$Res>
    implements $PaymentNavStateConfirmWithWebCopyWith<$Res> {
  _$PaymentNavStateConfirmWithWebCopyWithImpl(this._self, this._then);

  final PaymentNavStateConfirmWithWeb _self;
  final $Res Function(PaymentNavStateConfirmWithWeb) _then;

/// Create a copy of PaymentNavState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confirmUrl = null,Object? paymentId = null,}) {
  return _then(PaymentNavStateConfirmWithWeb(
confirmUrl: null == confirmUrl ? _self.confirmUrl : confirmUrl // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PaymentNavStateExaception implements PaymentNavState {
  const PaymentNavStateExaception({this.message});
  

 final  String? message;

/// Create a copy of PaymentNavState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentNavStateExaceptionCopyWith<PaymentNavStateExaception> get copyWith => _$PaymentNavStateExaceptionCopyWithImpl<PaymentNavStateExaception>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentNavStateExaception&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PaymentNavState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $PaymentNavStateExaceptionCopyWith<$Res> implements $PaymentNavStateCopyWith<$Res> {
  factory $PaymentNavStateExaceptionCopyWith(PaymentNavStateExaception value, $Res Function(PaymentNavStateExaception) _then) = _$PaymentNavStateExaceptionCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$PaymentNavStateExaceptionCopyWithImpl<$Res>
    implements $PaymentNavStateExaceptionCopyWith<$Res> {
  _$PaymentNavStateExaceptionCopyWithImpl(this._self, this._then);

  final PaymentNavStateExaception _self;
  final $Res Function(PaymentNavStateExaception) _then;

/// Create a copy of PaymentNavState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(PaymentNavStateExaception(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
