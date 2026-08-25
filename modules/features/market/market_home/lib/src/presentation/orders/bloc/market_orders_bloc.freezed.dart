// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketOrdersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketOrdersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketOrdersEvent()';
}


}

/// @nodoc
class $MarketOrdersEventCopyWith<$Res>  {
$MarketOrdersEventCopyWith(MarketOrdersEvent _, $Res Function(MarketOrdersEvent) __);
}


/// Adds pattern-matching-related methods to [MarketOrdersEvent].
extension MarketOrdersEventPatterns on MarketOrdersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MarketOrdersStartEvent value)?  start,TResult Function( _MarketOrdersLoadDataEvent value)?  loadData,TResult Function( _MarketOrdersToggleDetailsEvent value)?  toggleDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketOrdersStartEvent() when start != null:
return start(_that);case _MarketOrdersLoadDataEvent() when loadData != null:
return loadData(_that);case _MarketOrdersToggleDetailsEvent() when toggleDetails != null:
return toggleDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MarketOrdersStartEvent value)  start,required TResult Function( _MarketOrdersLoadDataEvent value)  loadData,required TResult Function( _MarketOrdersToggleDetailsEvent value)  toggleDetails,}){
final _that = this;
switch (_that) {
case _MarketOrdersStartEvent():
return start(_that);case _MarketOrdersLoadDataEvent():
return loadData(_that);case _MarketOrdersToggleDetailsEvent():
return toggleDetails(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MarketOrdersStartEvent value)?  start,TResult? Function( _MarketOrdersLoadDataEvent value)?  loadData,TResult? Function( _MarketOrdersToggleDetailsEvent value)?  toggleDetails,}){
final _that = this;
switch (_that) {
case _MarketOrdersStartEvent() when start != null:
return start(_that);case _MarketOrdersLoadDataEvent() when loadData != null:
return loadData(_that);case _MarketOrdersToggleDetailsEvent() when toggleDetails != null:
return toggleDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MarketOrderGroup group)?  start,TResult Function()?  loadData,TResult Function( int orderId)?  toggleDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketOrdersStartEvent() when start != null:
return start(_that.group);case _MarketOrdersLoadDataEvent() when loadData != null:
return loadData();case _MarketOrdersToggleDetailsEvent() when toggleDetails != null:
return toggleDetails(_that.orderId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MarketOrderGroup group)  start,required TResult Function()  loadData,required TResult Function( int orderId)  toggleDetails,}) {final _that = this;
switch (_that) {
case _MarketOrdersStartEvent():
return start(_that.group);case _MarketOrdersLoadDataEvent():
return loadData();case _MarketOrdersToggleDetailsEvent():
return toggleDetails(_that.orderId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MarketOrderGroup group)?  start,TResult? Function()?  loadData,TResult? Function( int orderId)?  toggleDetails,}) {final _that = this;
switch (_that) {
case _MarketOrdersStartEvent() when start != null:
return start(_that.group);case _MarketOrdersLoadDataEvent() when loadData != null:
return loadData();case _MarketOrdersToggleDetailsEvent() when toggleDetails != null:
return toggleDetails(_that.orderId);case _:
  return null;

}
}

}

/// @nodoc


class _MarketOrdersStartEvent implements MarketOrdersEvent {
   _MarketOrdersStartEvent({required this.group});
  

 final  MarketOrderGroup group;

/// Create a copy of MarketOrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketOrdersStartEventCopyWith<_MarketOrdersStartEvent> get copyWith => __$MarketOrdersStartEventCopyWithImpl<_MarketOrdersStartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketOrdersStartEvent&&(identical(other.group, group) || other.group == group));
}


@override
int get hashCode => Object.hash(runtimeType,group);

@override
String toString() {
  return 'MarketOrdersEvent.start(group: $group)';
}


}

/// @nodoc
abstract mixin class _$MarketOrdersStartEventCopyWith<$Res> implements $MarketOrdersEventCopyWith<$Res> {
  factory _$MarketOrdersStartEventCopyWith(_MarketOrdersStartEvent value, $Res Function(_MarketOrdersStartEvent) _then) = __$MarketOrdersStartEventCopyWithImpl;
@useResult
$Res call({
 MarketOrderGroup group
});




}
/// @nodoc
class __$MarketOrdersStartEventCopyWithImpl<$Res>
    implements _$MarketOrdersStartEventCopyWith<$Res> {
  __$MarketOrdersStartEventCopyWithImpl(this._self, this._then);

  final _MarketOrdersStartEvent _self;
  final $Res Function(_MarketOrdersStartEvent) _then;

/// Create a copy of MarketOrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? group = null,}) {
  return _then(_MarketOrdersStartEvent(
group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as MarketOrderGroup,
  ));
}


}

/// @nodoc


class _MarketOrdersLoadDataEvent implements MarketOrdersEvent {
   _MarketOrdersLoadDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketOrdersLoadDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketOrdersEvent.loadData()';
}


}




/// @nodoc


class _MarketOrdersToggleDetailsEvent implements MarketOrdersEvent {
   _MarketOrdersToggleDetailsEvent({required this.orderId});
  

 final  int orderId;

/// Create a copy of MarketOrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketOrdersToggleDetailsEventCopyWith<_MarketOrdersToggleDetailsEvent> get copyWith => __$MarketOrdersToggleDetailsEventCopyWithImpl<_MarketOrdersToggleDetailsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketOrdersToggleDetailsEvent&&(identical(other.orderId, orderId) || other.orderId == orderId));
}


@override
int get hashCode => Object.hash(runtimeType,orderId);

@override
String toString() {
  return 'MarketOrdersEvent.toggleDetails(orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class _$MarketOrdersToggleDetailsEventCopyWith<$Res> implements $MarketOrdersEventCopyWith<$Res> {
  factory _$MarketOrdersToggleDetailsEventCopyWith(_MarketOrdersToggleDetailsEvent value, $Res Function(_MarketOrdersToggleDetailsEvent) _then) = __$MarketOrdersToggleDetailsEventCopyWithImpl;
@useResult
$Res call({
 int orderId
});




}
/// @nodoc
class __$MarketOrdersToggleDetailsEventCopyWithImpl<$Res>
    implements _$MarketOrdersToggleDetailsEventCopyWith<$Res> {
  __$MarketOrdersToggleDetailsEventCopyWithImpl(this._self, this._then);

  final _MarketOrdersToggleDetailsEvent _self;
  final $Res Function(_MarketOrdersToggleDetailsEvent) _then;

/// Create a copy of MarketOrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderId = null,}) {
  return _then(_MarketOrdersToggleDetailsEvent(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MarketOrdersState {

 MarketOrderGroup get group; List<MarketOrder> get orders; Set<int> get expandedOrderIds; bool get isLoading; bool get loadFailed; String? get errorMessage;
/// Create a copy of MarketOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketOrdersStateCopyWith<MarketOrdersState> get copyWith => _$MarketOrdersStateCopyWithImpl<MarketOrdersState>(this as MarketOrdersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketOrdersState&&(identical(other.group, group) || other.group == group)&&const DeepCollectionEquality().equals(other.orders, orders)&&const DeepCollectionEquality().equals(other.expandedOrderIds, expandedOrderIds)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,group,const DeepCollectionEquality().hash(orders),const DeepCollectionEquality().hash(expandedOrderIds),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MarketOrdersState(group: $group, orders: $orders, expandedOrderIds: $expandedOrderIds, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MarketOrdersStateCopyWith<$Res>  {
  factory $MarketOrdersStateCopyWith(MarketOrdersState value, $Res Function(MarketOrdersState) _then) = _$MarketOrdersStateCopyWithImpl;
@useResult
$Res call({
 MarketOrderGroup group, List<MarketOrder> orders, Set<int> expandedOrderIds, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$MarketOrdersStateCopyWithImpl<$Res>
    implements $MarketOrdersStateCopyWith<$Res> {
  _$MarketOrdersStateCopyWithImpl(this._self, this._then);

  final MarketOrdersState _self;
  final $Res Function(MarketOrdersState) _then;

/// Create a copy of MarketOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? group = null,Object? orders = null,Object? expandedOrderIds = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as MarketOrderGroup,orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<MarketOrder>,expandedOrderIds: null == expandedOrderIds ? _self.expandedOrderIds : expandedOrderIds // ignore: cast_nullable_to_non_nullable
as Set<int>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketOrdersState].
extension MarketOrdersStatePatterns on MarketOrdersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketOrdersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketOrdersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketOrdersState value)  $default,){
final _that = this;
switch (_that) {
case _MarketOrdersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketOrdersState value)?  $default,){
final _that = this;
switch (_that) {
case _MarketOrdersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MarketOrderGroup group,  List<MarketOrder> orders,  Set<int> expandedOrderIds,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketOrdersState() when $default != null:
return $default(_that.group,_that.orders,_that.expandedOrderIds,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MarketOrderGroup group,  List<MarketOrder> orders,  Set<int> expandedOrderIds,  bool isLoading,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MarketOrdersState():
return $default(_that.group,_that.orders,_that.expandedOrderIds,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MarketOrderGroup group,  List<MarketOrder> orders,  Set<int> expandedOrderIds,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MarketOrdersState() when $default != null:
return $default(_that.group,_that.orders,_that.expandedOrderIds,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MarketOrdersState extends MarketOrdersState {
   _MarketOrdersState({this.group = MarketOrderGroup.active, final  List<MarketOrder> orders = const [], final  Set<int> expandedOrderIds = const {}, this.isLoading = false, this.loadFailed = false, this.errorMessage}): _orders = orders,_expandedOrderIds = expandedOrderIds,super._();
  

@override@JsonKey() final  MarketOrderGroup group;
 final  List<MarketOrder> _orders;
@override@JsonKey() List<MarketOrder> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

 final  Set<int> _expandedOrderIds;
@override@JsonKey() Set<int> get expandedOrderIds {
  if (_expandedOrderIds is EqualUnmodifiableSetView) return _expandedOrderIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_expandedOrderIds);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of MarketOrdersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketOrdersStateCopyWith<_MarketOrdersState> get copyWith => __$MarketOrdersStateCopyWithImpl<_MarketOrdersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketOrdersState&&(identical(other.group, group) || other.group == group)&&const DeepCollectionEquality().equals(other._orders, _orders)&&const DeepCollectionEquality().equals(other._expandedOrderIds, _expandedOrderIds)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,group,const DeepCollectionEquality().hash(_orders),const DeepCollectionEquality().hash(_expandedOrderIds),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MarketOrdersState(group: $group, orders: $orders, expandedOrderIds: $expandedOrderIds, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MarketOrdersStateCopyWith<$Res> implements $MarketOrdersStateCopyWith<$Res> {
  factory _$MarketOrdersStateCopyWith(_MarketOrdersState value, $Res Function(_MarketOrdersState) _then) = __$MarketOrdersStateCopyWithImpl;
@override @useResult
$Res call({
 MarketOrderGroup group, List<MarketOrder> orders, Set<int> expandedOrderIds, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$MarketOrdersStateCopyWithImpl<$Res>
    implements _$MarketOrdersStateCopyWith<$Res> {
  __$MarketOrdersStateCopyWithImpl(this._self, this._then);

  final _MarketOrdersState _self;
  final $Res Function(_MarketOrdersState) _then;

/// Create a copy of MarketOrdersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? group = null,Object? orders = null,Object? expandedOrderIds = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_MarketOrdersState(
group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as MarketOrderGroup,orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<MarketOrder>,expandedOrderIds: null == expandedOrderIds ? _self._expandedOrderIds : expandedOrderIds // ignore: cast_nullable_to_non_nullable
as Set<int>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
