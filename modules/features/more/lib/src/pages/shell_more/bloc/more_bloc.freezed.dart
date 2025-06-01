// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MoreEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreEvent()';
}


}

/// @nodoc
class $MoreEventCopyWith<$Res>  {
$MoreEventCopyWith(MoreEvent _, $Res Function(MoreEvent) __);
}


/// @nodoc


class _MoreEventInit implements MoreEvent {
   _MoreEventInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreEventInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreEvent.init()';
}


}




/// @nodoc


class _MoreEventFetch implements MoreEvent {
   _MoreEventFetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreEventFetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreEvent.fetch()';
}


}




/// @nodoc


class _MoreEventFetchCurrency implements MoreEvent {
   _MoreEventFetchCurrency();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreEventFetchCurrency);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreEvent.fetchCurrencies()';
}


}




/// @nodoc
mixin _$MoreState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreState()';
}


}

/// @nodoc
class $MoreStateCopyWith<$Res>  {
$MoreStateCopyWith(MoreState _, $Res Function(MoreState) __);
}


/// @nodoc


class MoreLoadingState implements MoreState {
   MoreLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreState.loading()';
}


}




/// @nodoc


class MoreDataState implements MoreState {
   MoreDataState({final  List<MoreItem> abouts = const [], final  List<MoreItem> useFull = const [], final  List<Currency> currencies = const []}): _abouts = abouts,_useFull = useFull,_currencies = currencies;
  

 final  List<MoreItem> _abouts;
@JsonKey() List<MoreItem> get abouts {
  if (_abouts is EqualUnmodifiableListView) return _abouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abouts);
}

 final  List<MoreItem> _useFull;
@JsonKey() List<MoreItem> get useFull {
  if (_useFull is EqualUnmodifiableListView) return _useFull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_useFull);
}

 final  List<Currency> _currencies;
@JsonKey() List<Currency> get currencies {
  if (_currencies is EqualUnmodifiableListView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currencies);
}


/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoreDataStateCopyWith<MoreDataState> get copyWith => _$MoreDataStateCopyWithImpl<MoreDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreDataState&&const DeepCollectionEquality().equals(other._abouts, _abouts)&&const DeepCollectionEquality().equals(other._useFull, _useFull)&&const DeepCollectionEquality().equals(other._currencies, _currencies));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_abouts),const DeepCollectionEquality().hash(_useFull),const DeepCollectionEquality().hash(_currencies));

@override
String toString() {
  return 'MoreState.dataState(abouts: $abouts, useFull: $useFull, currencies: $currencies)';
}


}

/// @nodoc
abstract mixin class $MoreDataStateCopyWith<$Res> implements $MoreStateCopyWith<$Res> {
  factory $MoreDataStateCopyWith(MoreDataState value, $Res Function(MoreDataState) _then) = _$MoreDataStateCopyWithImpl;
@useResult
$Res call({
 List<MoreItem> abouts, List<MoreItem> useFull, List<Currency> currencies
});




}
/// @nodoc
class _$MoreDataStateCopyWithImpl<$Res>
    implements $MoreDataStateCopyWith<$Res> {
  _$MoreDataStateCopyWithImpl(this._self, this._then);

  final MoreDataState _self;
  final $Res Function(MoreDataState) _then;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? abouts = null,Object? useFull = null,Object? currencies = null,}) {
  return _then(MoreDataState(
abouts: null == abouts ? _self._abouts : abouts // ignore: cast_nullable_to_non_nullable
as List<MoreItem>,useFull: null == useFull ? _self._useFull : useFull // ignore: cast_nullable_to_non_nullable
as List<MoreItem>,currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<Currency>,
  ));
}


}

// dart format on
