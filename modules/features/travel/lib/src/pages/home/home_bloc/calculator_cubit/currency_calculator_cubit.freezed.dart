// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_calculator_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CalculatorData {

 List<Currency> get currencies; Currency? get from; Currency? get to; double get value;
/// Create a copy of CalculatorData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalculatorDataCopyWith<CalculatorData> get copyWith => _$CalculatorDataCopyWithImpl<CalculatorData>(this as CalculatorData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalculatorData&&const DeepCollectionEquality().equals(other.currencies, currencies)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currencies),from,to,value);

@override
String toString() {
  return 'CalculatorData(currencies: $currencies, from: $from, to: $to, value: $value)';
}


}

/// @nodoc
abstract mixin class $CalculatorDataCopyWith<$Res>  {
  factory $CalculatorDataCopyWith(CalculatorData value, $Res Function(CalculatorData) _then) = _$CalculatorDataCopyWithImpl;
@useResult
$Res call({
 List<Currency> currencies, Currency? from, Currency? to, double value
});




}
/// @nodoc
class _$CalculatorDataCopyWithImpl<$Res>
    implements $CalculatorDataCopyWith<$Res> {
  _$CalculatorDataCopyWithImpl(this._self, this._then);

  final CalculatorData _self;
  final $Res Function(CalculatorData) _then;

/// Create a copy of CalculatorData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currencies = null,Object? from = freezed,Object? to = freezed,Object? value = null,}) {
  return _then(_self.copyWith(
currencies: null == currencies ? _self.currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<Currency>,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as Currency?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as Currency?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CalculatorData].
extension CalculatorDataPatterns on CalculatorData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalculatorData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalculatorData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalculatorData value)  $default,){
final _that = this;
switch (_that) {
case _CalculatorData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalculatorData value)?  $default,){
final _that = this;
switch (_that) {
case _CalculatorData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Currency> currencies,  Currency? from,  Currency? to,  double value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalculatorData() when $default != null:
return $default(_that.currencies,_that.from,_that.to,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Currency> currencies,  Currency? from,  Currency? to,  double value)  $default,) {final _that = this;
switch (_that) {
case _CalculatorData():
return $default(_that.currencies,_that.from,_that.to,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Currency> currencies,  Currency? from,  Currency? to,  double value)?  $default,) {final _that = this;
switch (_that) {
case _CalculatorData() when $default != null:
return $default(_that.currencies,_that.from,_that.to,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _CalculatorData extends CalculatorData {
  const _CalculatorData({final  List<Currency> currencies = const <Currency>[], this.from, this.to, this.value = 1.0}): _currencies = currencies,super._();
  

 final  List<Currency> _currencies;
@override@JsonKey() List<Currency> get currencies {
  if (_currencies is EqualUnmodifiableListView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currencies);
}

@override final  Currency? from;
@override final  Currency? to;
@override@JsonKey() final  double value;

/// Create a copy of CalculatorData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalculatorDataCopyWith<_CalculatorData> get copyWith => __$CalculatorDataCopyWithImpl<_CalculatorData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalculatorData&&const DeepCollectionEquality().equals(other._currencies, _currencies)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currencies),from,to,value);

@override
String toString() {
  return 'CalculatorData(currencies: $currencies, from: $from, to: $to, value: $value)';
}


}

/// @nodoc
abstract mixin class _$CalculatorDataCopyWith<$Res> implements $CalculatorDataCopyWith<$Res> {
  factory _$CalculatorDataCopyWith(_CalculatorData value, $Res Function(_CalculatorData) _then) = __$CalculatorDataCopyWithImpl;
@override @useResult
$Res call({
 List<Currency> currencies, Currency? from, Currency? to, double value
});




}
/// @nodoc
class __$CalculatorDataCopyWithImpl<$Res>
    implements _$CalculatorDataCopyWith<$Res> {
  __$CalculatorDataCopyWithImpl(this._self, this._then);

  final _CalculatorData _self;
  final $Res Function(_CalculatorData) _then;

/// Create a copy of CalculatorData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currencies = null,Object? from = freezed,Object? to = freezed,Object? value = null,}) {
  return _then(_CalculatorData(
currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<Currency>,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as Currency?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as Currency?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
