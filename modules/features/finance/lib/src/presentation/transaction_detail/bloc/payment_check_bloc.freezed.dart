// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentCheckEvent {

 String get paymentId;
/// Create a copy of PaymentCheckEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCheckEventCopyWith<PaymentCheckEvent> get copyWith => _$PaymentCheckEventCopyWithImpl<PaymentCheckEvent>(this as PaymentCheckEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCheckEvent&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,paymentId);

@override
String toString() {
  return 'PaymentCheckEvent(paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $PaymentCheckEventCopyWith<$Res>  {
  factory $PaymentCheckEventCopyWith(PaymentCheckEvent value, $Res Function(PaymentCheckEvent) _then) = _$PaymentCheckEventCopyWithImpl;
@useResult
$Res call({
 String paymentId
});




}
/// @nodoc
class _$PaymentCheckEventCopyWithImpl<$Res>
    implements $PaymentCheckEventCopyWith<$Res> {
  _$PaymentCheckEventCopyWithImpl(this._self, this._then);

  final PaymentCheckEvent _self;
  final $Res Function(PaymentCheckEvent) _then;

/// Create a copy of PaymentCheckEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentId = null,}) {
  return _then(_self.copyWith(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentCheckEvent].
extension PaymentCheckEventPatterns on PaymentCheckEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentCheckLoad value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentCheckLoad() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentCheckLoad value)  load,}){
final _that = this;
switch (_that) {
case PaymentCheckLoad():
return load(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentCheckLoad value)?  load,}){
final _that = this;
switch (_that) {
case PaymentCheckLoad() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String paymentId)?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentCheckLoad() when load != null:
return load(_that.paymentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String paymentId)  load,}) {final _that = this;
switch (_that) {
case PaymentCheckLoad():
return load(_that.paymentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String paymentId)?  load,}) {final _that = this;
switch (_that) {
case PaymentCheckLoad() when load != null:
return load(_that.paymentId);case _:
  return null;

}
}

}

/// @nodoc


class PaymentCheckLoad implements PaymentCheckEvent {
  const PaymentCheckLoad({required this.paymentId});
  

@override final  String paymentId;

/// Create a copy of PaymentCheckEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCheckLoadCopyWith<PaymentCheckLoad> get copyWith => _$PaymentCheckLoadCopyWithImpl<PaymentCheckLoad>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCheckLoad&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,paymentId);

@override
String toString() {
  return 'PaymentCheckEvent.load(paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $PaymentCheckLoadCopyWith<$Res> implements $PaymentCheckEventCopyWith<$Res> {
  factory $PaymentCheckLoadCopyWith(PaymentCheckLoad value, $Res Function(PaymentCheckLoad) _then) = _$PaymentCheckLoadCopyWithImpl;
@override @useResult
$Res call({
 String paymentId
});




}
/// @nodoc
class _$PaymentCheckLoadCopyWithImpl<$Res>
    implements $PaymentCheckLoadCopyWith<$Res> {
  _$PaymentCheckLoadCopyWithImpl(this._self, this._then);

  final PaymentCheckLoad _self;
  final $Res Function(PaymentCheckLoad) _then;

/// Create a copy of PaymentCheckEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentId = null,}) {
  return _then(PaymentCheckLoad(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PaymentCheckState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCheckState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentCheckState()';
}


}

/// @nodoc
class $PaymentCheckStateCopyWith<$Res>  {
$PaymentCheckStateCopyWith(PaymentCheckState _, $Res Function(PaymentCheckState) __);
}


/// Adds pattern-matching-related methods to [PaymentCheckState].
extension PaymentCheckStatePatterns on PaymentCheckState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentChekLoading value)?  loading,TResult Function( PaymentCheckLoaded value)?  loaded,TResult Function( PaymentCheckError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentChekLoading() when loading != null:
return loading(_that);case PaymentCheckLoaded() when loaded != null:
return loaded(_that);case PaymentCheckError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentChekLoading value)  loading,required TResult Function( PaymentCheckLoaded value)  loaded,required TResult Function( PaymentCheckError value)  error,}){
final _that = this;
switch (_that) {
case PaymentChekLoading():
return loading(_that);case PaymentCheckLoaded():
return loaded(_that);case PaymentCheckError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentChekLoading value)?  loading,TResult? Function( PaymentCheckLoaded value)?  loaded,TResult? Function( PaymentCheckError value)?  error,}){
final _that = this;
switch (_that) {
case PaymentChekLoading() when loading != null:
return loading(_that);case PaymentCheckLoaded() when loaded != null:
return loaded(_that);case PaymentCheckError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( TransactionItem transactionItem)?  loaded,TResult Function( String? message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentChekLoading() when loading != null:
return loading();case PaymentCheckLoaded() when loaded != null:
return loaded(_that.transactionItem);case PaymentCheckError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( TransactionItem transactionItem)  loaded,required TResult Function( String? message)  error,}) {final _that = this;
switch (_that) {
case PaymentChekLoading():
return loading();case PaymentCheckLoaded():
return loaded(_that.transactionItem);case PaymentCheckError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( TransactionItem transactionItem)?  loaded,TResult? Function( String? message)?  error,}) {final _that = this;
switch (_that) {
case PaymentChekLoading() when loading != null:
return loading();case PaymentCheckLoaded() when loaded != null:
return loaded(_that.transactionItem);case PaymentCheckError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PaymentChekLoading implements PaymentCheckState {
  const PaymentChekLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentChekLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentCheckState.loading()';
}


}




/// @nodoc


class PaymentCheckLoaded implements PaymentCheckState {
  const PaymentCheckLoaded({required this.transactionItem});
  

 final  TransactionItem transactionItem;

/// Create a copy of PaymentCheckState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCheckLoadedCopyWith<PaymentCheckLoaded> get copyWith => _$PaymentCheckLoadedCopyWithImpl<PaymentCheckLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCheckLoaded&&(identical(other.transactionItem, transactionItem) || other.transactionItem == transactionItem));
}


@override
int get hashCode => Object.hash(runtimeType,transactionItem);

@override
String toString() {
  return 'PaymentCheckState.loaded(transactionItem: $transactionItem)';
}


}

/// @nodoc
abstract mixin class $PaymentCheckLoadedCopyWith<$Res> implements $PaymentCheckStateCopyWith<$Res> {
  factory $PaymentCheckLoadedCopyWith(PaymentCheckLoaded value, $Res Function(PaymentCheckLoaded) _then) = _$PaymentCheckLoadedCopyWithImpl;
@useResult
$Res call({
 TransactionItem transactionItem
});




}
/// @nodoc
class _$PaymentCheckLoadedCopyWithImpl<$Res>
    implements $PaymentCheckLoadedCopyWith<$Res> {
  _$PaymentCheckLoadedCopyWithImpl(this._self, this._then);

  final PaymentCheckLoaded _self;
  final $Res Function(PaymentCheckLoaded) _then;

/// Create a copy of PaymentCheckState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactionItem = null,}) {
  return _then(PaymentCheckLoaded(
transactionItem: null == transactionItem ? _self.transactionItem : transactionItem // ignore: cast_nullable_to_non_nullable
as TransactionItem,
  ));
}


}

/// @nodoc


class PaymentCheckError implements PaymentCheckState {
  const PaymentCheckError({this.message});
  

 final  String? message;

/// Create a copy of PaymentCheckState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCheckErrorCopyWith<PaymentCheckError> get copyWith => _$PaymentCheckErrorCopyWithImpl<PaymentCheckError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCheckError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PaymentCheckState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $PaymentCheckErrorCopyWith<$Res> implements $PaymentCheckStateCopyWith<$Res> {
  factory $PaymentCheckErrorCopyWith(PaymentCheckError value, $Res Function(PaymentCheckError) _then) = _$PaymentCheckErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$PaymentCheckErrorCopyWithImpl<$Res>
    implements $PaymentCheckErrorCopyWith<$Res> {
  _$PaymentCheckErrorCopyWithImpl(this._self, this._then);

  final PaymentCheckError _self;
  final $Res Function(PaymentCheckError) _then;

/// Create a copy of PaymentCheckState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(PaymentCheckError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
