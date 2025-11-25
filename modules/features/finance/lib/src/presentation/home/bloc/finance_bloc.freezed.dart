// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FinanceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FinanceEvent()';
}


}

/// @nodoc
class $FinanceEventCopyWith<$Res>  {
$FinanceEventCopyWith(FinanceEvent _, $Res Function(FinanceEvent) __);
}


/// Adds pattern-matching-related methods to [FinanceEvent].
extension FinanceEventPatterns on FinanceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FinanceInitialEvent value)?  initialEvent,TResult Function( _FinanceSetDataEvent value)?  setDataEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceInitialEvent() when initialEvent != null:
return initialEvent(_that);case _FinanceSetDataEvent() when setDataEvent != null:
return setDataEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FinanceInitialEvent value)  initialEvent,required TResult Function( _FinanceSetDataEvent value)  setDataEvent,}){
final _that = this;
switch (_that) {
case _FinanceInitialEvent():
return initialEvent(_that);case _FinanceSetDataEvent():
return setDataEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FinanceInitialEvent value)?  initialEvent,TResult? Function( _FinanceSetDataEvent value)?  setDataEvent,}){
final _that = this;
switch (_that) {
case _FinanceInitialEvent() when initialEvent != null:
return initialEvent(_that);case _FinanceSetDataEvent() when setDataEvent != null:
return setDataEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialEvent,TResult Function( List<Merchant>? merchants,  List<Currency>? currencies)?  setDataEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceInitialEvent() when initialEvent != null:
return initialEvent();case _FinanceSetDataEvent() when setDataEvent != null:
return setDataEvent(_that.merchants,_that.currencies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialEvent,required TResult Function( List<Merchant>? merchants,  List<Currency>? currencies)  setDataEvent,}) {final _that = this;
switch (_that) {
case _FinanceInitialEvent():
return initialEvent();case _FinanceSetDataEvent():
return setDataEvent(_that.merchants,_that.currencies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialEvent,TResult? Function( List<Merchant>? merchants,  List<Currency>? currencies)?  setDataEvent,}) {final _that = this;
switch (_that) {
case _FinanceInitialEvent() when initialEvent != null:
return initialEvent();case _FinanceSetDataEvent() when setDataEvent != null:
return setDataEvent(_that.merchants,_that.currencies);case _:
  return null;

}
}

}

/// @nodoc


class _FinanceInitialEvent implements FinanceEvent {
   _FinanceInitialEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceInitialEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FinanceEvent.initialEvent()';
}


}




/// @nodoc


class _FinanceSetDataEvent implements FinanceEvent {
   _FinanceSetDataEvent({final  List<Merchant>? merchants, final  List<Currency>? currencies}): _merchants = merchants,_currencies = currencies;
  

 final  List<Merchant>? _merchants;
 List<Merchant>? get merchants {
  final value = _merchants;
  if (value == null) return null;
  if (_merchants is EqualUnmodifiableListView) return _merchants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Currency>? _currencies;
 List<Currency>? get currencies {
  final value = _currencies;
  if (value == null) return null;
  if (_currencies is EqualUnmodifiableListView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FinanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceSetDataEventCopyWith<_FinanceSetDataEvent> get copyWith => __$FinanceSetDataEventCopyWithImpl<_FinanceSetDataEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceSetDataEvent&&const DeepCollectionEquality().equals(other._merchants, _merchants)&&const DeepCollectionEquality().equals(other._currencies, _currencies));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_merchants),const DeepCollectionEquality().hash(_currencies));

@override
String toString() {
  return 'FinanceEvent.setDataEvent(merchants: $merchants, currencies: $currencies)';
}


}

/// @nodoc
abstract mixin class _$FinanceSetDataEventCopyWith<$Res> implements $FinanceEventCopyWith<$Res> {
  factory _$FinanceSetDataEventCopyWith(_FinanceSetDataEvent value, $Res Function(_FinanceSetDataEvent) _then) = __$FinanceSetDataEventCopyWithImpl;
@useResult
$Res call({
 List<Merchant>? merchants, List<Currency>? currencies
});




}
/// @nodoc
class __$FinanceSetDataEventCopyWithImpl<$Res>
    implements _$FinanceSetDataEventCopyWith<$Res> {
  __$FinanceSetDataEventCopyWithImpl(this._self, this._then);

  final _FinanceSetDataEvent _self;
  final $Res Function(_FinanceSetDataEvent) _then;

/// Create a copy of FinanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? merchants = freezed,Object? currencies = freezed,}) {
  return _then(_FinanceSetDataEvent(
merchants: freezed == merchants ? _self._merchants : merchants // ignore: cast_nullable_to_non_nullable
as List<Merchant>?,currencies: freezed == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<Currency>?,
  ));
}


}

/// @nodoc
mixin _$FinanceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FinanceState()';
}


}

/// @nodoc
class $FinanceStateCopyWith<$Res>  {
$FinanceStateCopyWith(FinanceState _, $Res Function(FinanceState) __);
}


/// Adds pattern-matching-related methods to [FinanceState].
extension FinanceStatePatterns on FinanceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FinanceLoadingState value)?  loadingState,TResult Function( FinanceDataState value)?  dataState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FinanceLoadingState() when loadingState != null:
return loadingState(_that);case FinanceDataState() when dataState != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FinanceLoadingState value)  loadingState,required TResult Function( FinanceDataState value)  dataState,}){
final _that = this;
switch (_that) {
case FinanceLoadingState():
return loadingState(_that);case FinanceDataState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FinanceLoadingState value)?  loadingState,TResult? Function( FinanceDataState value)?  dataState,}){
final _that = this;
switch (_that) {
case FinanceLoadingState() when loadingState != null:
return loadingState(_that);case FinanceDataState() when dataState != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadingState,TResult Function( List<Merchant> merchants,  List<Currency> currencies)?  dataState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FinanceLoadingState() when loadingState != null:
return loadingState();case FinanceDataState() when dataState != null:
return dataState(_that.merchants,_that.currencies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadingState,required TResult Function( List<Merchant> merchants,  List<Currency> currencies)  dataState,}) {final _that = this;
switch (_that) {
case FinanceLoadingState():
return loadingState();case FinanceDataState():
return dataState(_that.merchants,_that.currencies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadingState,TResult? Function( List<Merchant> merchants,  List<Currency> currencies)?  dataState,}) {final _that = this;
switch (_that) {
case FinanceLoadingState() when loadingState != null:
return loadingState();case FinanceDataState() when dataState != null:
return dataState(_that.merchants,_that.currencies);case _:
  return null;

}
}

}

/// @nodoc


class FinanceLoadingState implements FinanceState {
   FinanceLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FinanceState.loadingState()';
}


}




/// @nodoc


class FinanceDataState implements FinanceState {
   FinanceDataState({final  List<Merchant> merchants = const [], final  List<Currency> currencies = const []}): _merchants = merchants,_currencies = currencies;
  

 final  List<Merchant> _merchants;
@JsonKey() List<Merchant> get merchants {
  if (_merchants is EqualUnmodifiableListView) return _merchants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_merchants);
}

 final  List<Currency> _currencies;
@JsonKey() List<Currency> get currencies {
  if (_currencies is EqualUnmodifiableListView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currencies);
}


/// Create a copy of FinanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceDataStateCopyWith<FinanceDataState> get copyWith => _$FinanceDataStateCopyWithImpl<FinanceDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceDataState&&const DeepCollectionEquality().equals(other._merchants, _merchants)&&const DeepCollectionEquality().equals(other._currencies, _currencies));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_merchants),const DeepCollectionEquality().hash(_currencies));

@override
String toString() {
  return 'FinanceState.dataState(merchants: $merchants, currencies: $currencies)';
}


}

/// @nodoc
abstract mixin class $FinanceDataStateCopyWith<$Res> implements $FinanceStateCopyWith<$Res> {
  factory $FinanceDataStateCopyWith(FinanceDataState value, $Res Function(FinanceDataState) _then) = _$FinanceDataStateCopyWithImpl;
@useResult
$Res call({
 List<Merchant> merchants, List<Currency> currencies
});




}
/// @nodoc
class _$FinanceDataStateCopyWithImpl<$Res>
    implements $FinanceDataStateCopyWith<$Res> {
  _$FinanceDataStateCopyWithImpl(this._self, this._then);

  final FinanceDataState _self;
  final $Res Function(FinanceDataState) _then;

/// Create a copy of FinanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? merchants = null,Object? currencies = null,}) {
  return _then(FinanceDataState(
merchants: null == merchants ? _self._merchants : merchants // ignore: cast_nullable_to_non_nullable
as List<Merchant>,currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<Currency>,
  ));
}


}

// dart format on
