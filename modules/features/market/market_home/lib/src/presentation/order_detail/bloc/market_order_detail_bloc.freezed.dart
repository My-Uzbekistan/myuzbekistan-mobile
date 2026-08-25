// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_order_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketOrderDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketOrderDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketOrderDetailEvent()';
}


}

/// @nodoc
class $MarketOrderDetailEventCopyWith<$Res>  {
$MarketOrderDetailEventCopyWith(MarketOrderDetailEvent _, $Res Function(MarketOrderDetailEvent) __);
}


/// Adds pattern-matching-related methods to [MarketOrderDetailEvent].
extension MarketOrderDetailEventPatterns on MarketOrderDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MarketOrderDetailStartEvent value)?  start,TResult Function( _MarketOrderDetailLoadDataEvent value)?  loadData,TResult Function( _MarketOrderDetailToggleDetailsEvent value)?  toggleDetails,TResult Function( _MarketOrderDetailCancelOrderEvent value)?  cancelOrder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketOrderDetailStartEvent() when start != null:
return start(_that);case _MarketOrderDetailLoadDataEvent() when loadData != null:
return loadData(_that);case _MarketOrderDetailToggleDetailsEvent() when toggleDetails != null:
return toggleDetails(_that);case _MarketOrderDetailCancelOrderEvent() when cancelOrder != null:
return cancelOrder(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MarketOrderDetailStartEvent value)  start,required TResult Function( _MarketOrderDetailLoadDataEvent value)  loadData,required TResult Function( _MarketOrderDetailToggleDetailsEvent value)  toggleDetails,required TResult Function( _MarketOrderDetailCancelOrderEvent value)  cancelOrder,}){
final _that = this;
switch (_that) {
case _MarketOrderDetailStartEvent():
return start(_that);case _MarketOrderDetailLoadDataEvent():
return loadData(_that);case _MarketOrderDetailToggleDetailsEvent():
return toggleDetails(_that);case _MarketOrderDetailCancelOrderEvent():
return cancelOrder(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MarketOrderDetailStartEvent value)?  start,TResult? Function( _MarketOrderDetailLoadDataEvent value)?  loadData,TResult? Function( _MarketOrderDetailToggleDetailsEvent value)?  toggleDetails,TResult? Function( _MarketOrderDetailCancelOrderEvent value)?  cancelOrder,}){
final _that = this;
switch (_that) {
case _MarketOrderDetailStartEvent() when start != null:
return start(_that);case _MarketOrderDetailLoadDataEvent() when loadData != null:
return loadData(_that);case _MarketOrderDetailToggleDetailsEvent() when toggleDetails != null:
return toggleDetails(_that);case _MarketOrderDetailCancelOrderEvent() when cancelOrder != null:
return cancelOrder(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int orderId)?  start,TResult Function()?  loadData,TResult Function()?  toggleDetails,TResult Function()?  cancelOrder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketOrderDetailStartEvent() when start != null:
return start(_that.orderId);case _MarketOrderDetailLoadDataEvent() when loadData != null:
return loadData();case _MarketOrderDetailToggleDetailsEvent() when toggleDetails != null:
return toggleDetails();case _MarketOrderDetailCancelOrderEvent() when cancelOrder != null:
return cancelOrder();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int orderId)  start,required TResult Function()  loadData,required TResult Function()  toggleDetails,required TResult Function()  cancelOrder,}) {final _that = this;
switch (_that) {
case _MarketOrderDetailStartEvent():
return start(_that.orderId);case _MarketOrderDetailLoadDataEvent():
return loadData();case _MarketOrderDetailToggleDetailsEvent():
return toggleDetails();case _MarketOrderDetailCancelOrderEvent():
return cancelOrder();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int orderId)?  start,TResult? Function()?  loadData,TResult? Function()?  toggleDetails,TResult? Function()?  cancelOrder,}) {final _that = this;
switch (_that) {
case _MarketOrderDetailStartEvent() when start != null:
return start(_that.orderId);case _MarketOrderDetailLoadDataEvent() when loadData != null:
return loadData();case _MarketOrderDetailToggleDetailsEvent() when toggleDetails != null:
return toggleDetails();case _MarketOrderDetailCancelOrderEvent() when cancelOrder != null:
return cancelOrder();case _:
  return null;

}
}

}

/// @nodoc


class _MarketOrderDetailStartEvent implements MarketOrderDetailEvent {
   _MarketOrderDetailStartEvent({required this.orderId});
  

 final  int orderId;

/// Create a copy of MarketOrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketOrderDetailStartEventCopyWith<_MarketOrderDetailStartEvent> get copyWith => __$MarketOrderDetailStartEventCopyWithImpl<_MarketOrderDetailStartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketOrderDetailStartEvent&&(identical(other.orderId, orderId) || other.orderId == orderId));
}


@override
int get hashCode => Object.hash(runtimeType,orderId);

@override
String toString() {
  return 'MarketOrderDetailEvent.start(orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class _$MarketOrderDetailStartEventCopyWith<$Res> implements $MarketOrderDetailEventCopyWith<$Res> {
  factory _$MarketOrderDetailStartEventCopyWith(_MarketOrderDetailStartEvent value, $Res Function(_MarketOrderDetailStartEvent) _then) = __$MarketOrderDetailStartEventCopyWithImpl;
@useResult
$Res call({
 int orderId
});




}
/// @nodoc
class __$MarketOrderDetailStartEventCopyWithImpl<$Res>
    implements _$MarketOrderDetailStartEventCopyWith<$Res> {
  __$MarketOrderDetailStartEventCopyWithImpl(this._self, this._then);

  final _MarketOrderDetailStartEvent _self;
  final $Res Function(_MarketOrderDetailStartEvent) _then;

/// Create a copy of MarketOrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderId = null,}) {
  return _then(_MarketOrderDetailStartEvent(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _MarketOrderDetailLoadDataEvent implements MarketOrderDetailEvent {
   _MarketOrderDetailLoadDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketOrderDetailLoadDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketOrderDetailEvent.loadData()';
}


}




/// @nodoc


class _MarketOrderDetailToggleDetailsEvent implements MarketOrderDetailEvent {
   _MarketOrderDetailToggleDetailsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketOrderDetailToggleDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketOrderDetailEvent.toggleDetails()';
}


}




/// @nodoc


class _MarketOrderDetailCancelOrderEvent implements MarketOrderDetailEvent {
   _MarketOrderDetailCancelOrderEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketOrderDetailCancelOrderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketOrderDetailEvent.cancelOrder()';
}


}




/// @nodoc
mixin _$MarketOrderDetailState {

 int get orderId; MarketOrder? get order; bool get isDetailsExpanded; bool get isLoading; bool get isCancelling; bool get loadFailed; String? get errorMessage;
/// Create a copy of MarketOrderDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketOrderDetailStateCopyWith<MarketOrderDetailState> get copyWith => _$MarketOrderDetailStateCopyWithImpl<MarketOrderDetailState>(this as MarketOrderDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketOrderDetailState&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.order, order) || other.order == order)&&(identical(other.isDetailsExpanded, isDetailsExpanded) || other.isDetailsExpanded == isDetailsExpanded)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCancelling, isCancelling) || other.isCancelling == isCancelling)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,order,isDetailsExpanded,isLoading,isCancelling,loadFailed,errorMessage);

@override
String toString() {
  return 'MarketOrderDetailState(orderId: $orderId, order: $order, isDetailsExpanded: $isDetailsExpanded, isLoading: $isLoading, isCancelling: $isCancelling, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MarketOrderDetailStateCopyWith<$Res>  {
  factory $MarketOrderDetailStateCopyWith(MarketOrderDetailState value, $Res Function(MarketOrderDetailState) _then) = _$MarketOrderDetailStateCopyWithImpl;
@useResult
$Res call({
 int orderId, MarketOrder? order, bool isDetailsExpanded, bool isLoading, bool isCancelling, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$MarketOrderDetailStateCopyWithImpl<$Res>
    implements $MarketOrderDetailStateCopyWith<$Res> {
  _$MarketOrderDetailStateCopyWithImpl(this._self, this._then);

  final MarketOrderDetailState _self;
  final $Res Function(MarketOrderDetailState) _then;

/// Create a copy of MarketOrderDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? order = freezed,Object? isDetailsExpanded = null,Object? isLoading = null,Object? isCancelling = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as MarketOrder?,isDetailsExpanded: null == isDetailsExpanded ? _self.isDetailsExpanded : isDetailsExpanded // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCancelling: null == isCancelling ? _self.isCancelling : isCancelling // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketOrderDetailState].
extension MarketOrderDetailStatePatterns on MarketOrderDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketOrderDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketOrderDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketOrderDetailState value)  $default,){
final _that = this;
switch (_that) {
case _MarketOrderDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketOrderDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _MarketOrderDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int orderId,  MarketOrder? order,  bool isDetailsExpanded,  bool isLoading,  bool isCancelling,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketOrderDetailState() when $default != null:
return $default(_that.orderId,_that.order,_that.isDetailsExpanded,_that.isLoading,_that.isCancelling,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int orderId,  MarketOrder? order,  bool isDetailsExpanded,  bool isLoading,  bool isCancelling,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MarketOrderDetailState():
return $default(_that.orderId,_that.order,_that.isDetailsExpanded,_that.isLoading,_that.isCancelling,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int orderId,  MarketOrder? order,  bool isDetailsExpanded,  bool isLoading,  bool isCancelling,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MarketOrderDetailState() when $default != null:
return $default(_that.orderId,_that.order,_that.isDetailsExpanded,_that.isLoading,_that.isCancelling,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MarketOrderDetailState extends MarketOrderDetailState {
   _MarketOrderDetailState({this.orderId = 0, this.order, this.isDetailsExpanded = true, this.isLoading = false, this.isCancelling = false, this.loadFailed = false, this.errorMessage}): super._();
  

@override@JsonKey() final  int orderId;
@override final  MarketOrder? order;
@override@JsonKey() final  bool isDetailsExpanded;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isCancelling;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of MarketOrderDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketOrderDetailStateCopyWith<_MarketOrderDetailState> get copyWith => __$MarketOrderDetailStateCopyWithImpl<_MarketOrderDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketOrderDetailState&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.order, order) || other.order == order)&&(identical(other.isDetailsExpanded, isDetailsExpanded) || other.isDetailsExpanded == isDetailsExpanded)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCancelling, isCancelling) || other.isCancelling == isCancelling)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,order,isDetailsExpanded,isLoading,isCancelling,loadFailed,errorMessage);

@override
String toString() {
  return 'MarketOrderDetailState(orderId: $orderId, order: $order, isDetailsExpanded: $isDetailsExpanded, isLoading: $isLoading, isCancelling: $isCancelling, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MarketOrderDetailStateCopyWith<$Res> implements $MarketOrderDetailStateCopyWith<$Res> {
  factory _$MarketOrderDetailStateCopyWith(_MarketOrderDetailState value, $Res Function(_MarketOrderDetailState) _then) = __$MarketOrderDetailStateCopyWithImpl;
@override @useResult
$Res call({
 int orderId, MarketOrder? order, bool isDetailsExpanded, bool isLoading, bool isCancelling, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$MarketOrderDetailStateCopyWithImpl<$Res>
    implements _$MarketOrderDetailStateCopyWith<$Res> {
  __$MarketOrderDetailStateCopyWithImpl(this._self, this._then);

  final _MarketOrderDetailState _self;
  final $Res Function(_MarketOrderDetailState) _then;

/// Create a copy of MarketOrderDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? order = freezed,Object? isDetailsExpanded = null,Object? isLoading = null,Object? isCancelling = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_MarketOrderDetailState(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as MarketOrder?,isDetailsExpanded: null == isDetailsExpanded ? _self.isDetailsExpanded : isDetailsExpanded // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCancelling: null == isCancelling ? _self.isCancelling : isCancelling // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
