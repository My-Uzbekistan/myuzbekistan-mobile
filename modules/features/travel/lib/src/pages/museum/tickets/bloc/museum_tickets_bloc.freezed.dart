// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'museum_tickets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MuseumTicketsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumTicketsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumTicketsEvent()';
}


}

/// @nodoc
class $MuseumTicketsEventCopyWith<$Res>  {
$MuseumTicketsEventCopyWith(MuseumTicketsEvent _, $Res Function(MuseumTicketsEvent) __);
}


/// Adds pattern-matching-related methods to [MuseumTicketsEvent].
extension MuseumTicketsEventPatterns on MuseumTicketsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MuseumTicketsStartEvent value)?  start,TResult Function( _MuseumTicketsRefreshEvent value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumTicketsStartEvent() when start != null:
return start(_that);case _MuseumTicketsRefreshEvent() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MuseumTicketsStartEvent value)  start,required TResult Function( _MuseumTicketsRefreshEvent value)  refresh,}){
final _that = this;
switch (_that) {
case _MuseumTicketsStartEvent():
return start(_that);case _MuseumTicketsRefreshEvent():
return refresh(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MuseumTicketsStartEvent value)?  start,TResult? Function( _MuseumTicketsRefreshEvent value)?  refresh,}){
final _that = this;
switch (_that) {
case _MuseumTicketsStartEvent() when start != null:
return start(_that);case _MuseumTicketsRefreshEvent() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MuseumOrderState filter)?  start,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumTicketsStartEvent() when start != null:
return start(_that.filter);case _MuseumTicketsRefreshEvent() when refresh != null:
return refresh();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MuseumOrderState filter)  start,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case _MuseumTicketsStartEvent():
return start(_that.filter);case _MuseumTicketsRefreshEvent():
return refresh();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MuseumOrderState filter)?  start,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case _MuseumTicketsStartEvent() when start != null:
return start(_that.filter);case _MuseumTicketsRefreshEvent() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class _MuseumTicketsStartEvent implements MuseumTicketsEvent {
   _MuseumTicketsStartEvent({required this.filter});
  

 final  MuseumOrderState filter;

/// Create a copy of MuseumTicketsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumTicketsStartEventCopyWith<_MuseumTicketsStartEvent> get copyWith => __$MuseumTicketsStartEventCopyWithImpl<_MuseumTicketsStartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumTicketsStartEvent&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString() {
  return 'MuseumTicketsEvent.start(filter: $filter)';
}


}

/// @nodoc
abstract mixin class _$MuseumTicketsStartEventCopyWith<$Res> implements $MuseumTicketsEventCopyWith<$Res> {
  factory _$MuseumTicketsStartEventCopyWith(_MuseumTicketsStartEvent value, $Res Function(_MuseumTicketsStartEvent) _then) = __$MuseumTicketsStartEventCopyWithImpl;
@useResult
$Res call({
 MuseumOrderState filter
});




}
/// @nodoc
class __$MuseumTicketsStartEventCopyWithImpl<$Res>
    implements _$MuseumTicketsStartEventCopyWith<$Res> {
  __$MuseumTicketsStartEventCopyWithImpl(this._self, this._then);

  final _MuseumTicketsStartEvent _self;
  final $Res Function(_MuseumTicketsStartEvent) _then;

/// Create a copy of MuseumTicketsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filter = null,}) {
  return _then(_MuseumTicketsStartEvent(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as MuseumOrderState,
  ));
}


}

/// @nodoc


class _MuseumTicketsRefreshEvent implements MuseumTicketsEvent {
   _MuseumTicketsRefreshEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumTicketsRefreshEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumTicketsEvent.refresh()';
}


}




/// @nodoc
mixin _$MuseumTicketsState {

 MuseumOrderState get filter; List<MuseumOrder> get orders; int get activeCount; int get usedCount; int get expiredCount; bool get isLoading; bool get loadFailed; String? get errorMessage;
/// Create a copy of MuseumTicketsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuseumTicketsStateCopyWith<MuseumTicketsState> get copyWith => _$MuseumTicketsStateCopyWithImpl<MuseumTicketsState>(this as MuseumTicketsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumTicketsState&&(identical(other.filter, filter) || other.filter == filter)&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.activeCount, activeCount) || other.activeCount == activeCount)&&(identical(other.usedCount, usedCount) || other.usedCount == usedCount)&&(identical(other.expiredCount, expiredCount) || other.expiredCount == expiredCount)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,filter,const DeepCollectionEquality().hash(orders),activeCount,usedCount,expiredCount,isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MuseumTicketsState(filter: $filter, orders: $orders, activeCount: $activeCount, usedCount: $usedCount, expiredCount: $expiredCount, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MuseumTicketsStateCopyWith<$Res>  {
  factory $MuseumTicketsStateCopyWith(MuseumTicketsState value, $Res Function(MuseumTicketsState) _then) = _$MuseumTicketsStateCopyWithImpl;
@useResult
$Res call({
 MuseumOrderState filter, List<MuseumOrder> orders, int activeCount, int usedCount, int expiredCount, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$MuseumTicketsStateCopyWithImpl<$Res>
    implements $MuseumTicketsStateCopyWith<$Res> {
  _$MuseumTicketsStateCopyWithImpl(this._self, this._then);

  final MuseumTicketsState _self;
  final $Res Function(MuseumTicketsState) _then;

/// Create a copy of MuseumTicketsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = null,Object? orders = null,Object? activeCount = null,Object? usedCount = null,Object? expiredCount = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as MuseumOrderState,orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<MuseumOrder>,activeCount: null == activeCount ? _self.activeCount : activeCount // ignore: cast_nullable_to_non_nullable
as int,usedCount: null == usedCount ? _self.usedCount : usedCount // ignore: cast_nullable_to_non_nullable
as int,expiredCount: null == expiredCount ? _self.expiredCount : expiredCount // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MuseumTicketsState].
extension MuseumTicketsStatePatterns on MuseumTicketsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuseumTicketsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumTicketsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuseumTicketsState value)  $default,){
final _that = this;
switch (_that) {
case _MuseumTicketsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuseumTicketsState value)?  $default,){
final _that = this;
switch (_that) {
case _MuseumTicketsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MuseumOrderState filter,  List<MuseumOrder> orders,  int activeCount,  int usedCount,  int expiredCount,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumTicketsState() when $default != null:
return $default(_that.filter,_that.orders,_that.activeCount,_that.usedCount,_that.expiredCount,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MuseumOrderState filter,  List<MuseumOrder> orders,  int activeCount,  int usedCount,  int expiredCount,  bool isLoading,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MuseumTicketsState():
return $default(_that.filter,_that.orders,_that.activeCount,_that.usedCount,_that.expiredCount,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MuseumOrderState filter,  List<MuseumOrder> orders,  int activeCount,  int usedCount,  int expiredCount,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MuseumTicketsState() when $default != null:
return $default(_that.filter,_that.orders,_that.activeCount,_that.usedCount,_that.expiredCount,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MuseumTicketsState extends MuseumTicketsState {
   _MuseumTicketsState({this.filter = MuseumOrderState.active, final  List<MuseumOrder> orders = const [], this.activeCount = 0, this.usedCount = 0, this.expiredCount = 0, this.isLoading = false, this.loadFailed = false, this.errorMessage}): _orders = orders,super._();
  

@override@JsonKey() final  MuseumOrderState filter;
 final  List<MuseumOrder> _orders;
@override@JsonKey() List<MuseumOrder> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

@override@JsonKey() final  int activeCount;
@override@JsonKey() final  int usedCount;
@override@JsonKey() final  int expiredCount;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of MuseumTicketsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumTicketsStateCopyWith<_MuseumTicketsState> get copyWith => __$MuseumTicketsStateCopyWithImpl<_MuseumTicketsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumTicketsState&&(identical(other.filter, filter) || other.filter == filter)&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.activeCount, activeCount) || other.activeCount == activeCount)&&(identical(other.usedCount, usedCount) || other.usedCount == usedCount)&&(identical(other.expiredCount, expiredCount) || other.expiredCount == expiredCount)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,filter,const DeepCollectionEquality().hash(_orders),activeCount,usedCount,expiredCount,isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MuseumTicketsState(filter: $filter, orders: $orders, activeCount: $activeCount, usedCount: $usedCount, expiredCount: $expiredCount, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MuseumTicketsStateCopyWith<$Res> implements $MuseumTicketsStateCopyWith<$Res> {
  factory _$MuseumTicketsStateCopyWith(_MuseumTicketsState value, $Res Function(_MuseumTicketsState) _then) = __$MuseumTicketsStateCopyWithImpl;
@override @useResult
$Res call({
 MuseumOrderState filter, List<MuseumOrder> orders, int activeCount, int usedCount, int expiredCount, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$MuseumTicketsStateCopyWithImpl<$Res>
    implements _$MuseumTicketsStateCopyWith<$Res> {
  __$MuseumTicketsStateCopyWithImpl(this._self, this._then);

  final _MuseumTicketsState _self;
  final $Res Function(_MuseumTicketsState) _then;

/// Create a copy of MuseumTicketsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filter = null,Object? orders = null,Object? activeCount = null,Object? usedCount = null,Object? expiredCount = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_MuseumTicketsState(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as MuseumOrderState,orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<MuseumOrder>,activeCount: null == activeCount ? _self.activeCount : activeCount // ignore: cast_nullable_to_non_nullable
as int,usedCount: null == usedCount ? _self.usedCount : usedCount // ignore: cast_nullable_to_non_nullable
as int,expiredCount: null == expiredCount ? _self.expiredCount : expiredCount // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
