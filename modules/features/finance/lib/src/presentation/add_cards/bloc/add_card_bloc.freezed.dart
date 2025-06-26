// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddCardEvent {

 String get cardNumber; String get expire; String? get cvv; String? get name;
/// Create a copy of AddCardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCardEventCopyWith<AddCardEvent> get copyWith => _$AddCardEventCopyWithImpl<AddCardEvent>(this as AddCardEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardEvent&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expire, expire) || other.expire == expire)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,cardNumber,expire,cvv,name);

@override
String toString() {
  return 'AddCardEvent(cardNumber: $cardNumber, expire: $expire, cvv: $cvv, name: $name)';
}


}

/// @nodoc
abstract mixin class $AddCardEventCopyWith<$Res>  {
  factory $AddCardEventCopyWith(AddCardEvent value, $Res Function(AddCardEvent) _then) = _$AddCardEventCopyWithImpl;
@useResult
$Res call({
 String cardNumber, String expire, String? cvv, String? name
});




}
/// @nodoc
class _$AddCardEventCopyWithImpl<$Res>
    implements $AddCardEventCopyWith<$Res> {
  _$AddCardEventCopyWithImpl(this._self, this._then);

  final AddCardEvent _self;
  final $Res Function(AddCardEvent) _then;

/// Create a copy of AddCardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardNumber = null,Object? expire = null,Object? cvv = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expire: null == expire ? _self.expire : expire // ignore: cast_nullable_to_non_nullable
as String,cvv: freezed == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _SetDataEvent implements AddCardEvent {
   _SetDataEvent({required this.cardNumber, required this.expire, this.cvv, this.name});
  

@override final  String cardNumber;
@override final  String expire;
@override final  String? cvv;
@override final  String? name;

/// Create a copy of AddCardEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetDataEventCopyWith<_SetDataEvent> get copyWith => __$SetDataEventCopyWithImpl<_SetDataEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetDataEvent&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expire, expire) || other.expire == expire)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,cardNumber,expire,cvv,name);

@override
String toString() {
  return 'AddCardEvent.setData(cardNumber: $cardNumber, expire: $expire, cvv: $cvv, name: $name)';
}


}

/// @nodoc
abstract mixin class _$SetDataEventCopyWith<$Res> implements $AddCardEventCopyWith<$Res> {
  factory _$SetDataEventCopyWith(_SetDataEvent value, $Res Function(_SetDataEvent) _then) = __$SetDataEventCopyWithImpl;
@override @useResult
$Res call({
 String cardNumber, String expire, String? cvv, String? name
});




}
/// @nodoc
class __$SetDataEventCopyWithImpl<$Res>
    implements _$SetDataEventCopyWith<$Res> {
  __$SetDataEventCopyWithImpl(this._self, this._then);

  final _SetDataEvent _self;
  final $Res Function(_SetDataEvent) _then;

/// Create a copy of AddCardEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardNumber = null,Object? expire = null,Object? cvv = freezed,Object? name = freezed,}) {
  return _then(_SetDataEvent(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expire: null == expire ? _self.expire : expire // ignore: cast_nullable_to_non_nullable
as String,cvv: freezed == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$AddCardState {

 String get cardNumber; String get expire; String? get cvv; String? get alias; bool get isLoading;
/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCardStateCopyWith<AddCardState> get copyWith => _$AddCardStateCopyWithImpl<AddCardState>(this as AddCardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardState&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expire, expire) || other.expire == expire)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.alias, alias) || other.alias == alias)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,cardNumber,expire,cvv,alias,isLoading);

@override
String toString() {
  return 'AddCardState(cardNumber: $cardNumber, expire: $expire, cvv: $cvv, alias: $alias, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $AddCardStateCopyWith<$Res>  {
  factory $AddCardStateCopyWith(AddCardState value, $Res Function(AddCardState) _then) = _$AddCardStateCopyWithImpl;
@useResult
$Res call({
 String cardNumber, String expire, String? cvv, String? alias, bool isLoading
});




}
/// @nodoc
class _$AddCardStateCopyWithImpl<$Res>
    implements $AddCardStateCopyWith<$Res> {
  _$AddCardStateCopyWithImpl(this._self, this._then);

  final AddCardState _self;
  final $Res Function(AddCardState) _then;

/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardNumber = null,Object? expire = null,Object? cvv = freezed,Object? alias = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expire: null == expire ? _self.expire : expire // ignore: cast_nullable_to_non_nullable
as String,cvv: freezed == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String?,alias: freezed == alias ? _self.alias : alias // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _AddCardState implements AddCardState {
  const _AddCardState({required this.cardNumber, required this.expire, this.cvv, this.alias, this.isLoading = false});
  

@override final  String cardNumber;
@override final  String expire;
@override final  String? cvv;
@override final  String? alias;
@override@JsonKey() final  bool isLoading;

/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCardStateCopyWith<_AddCardState> get copyWith => __$AddCardStateCopyWithImpl<_AddCardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCardState&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expire, expire) || other.expire == expire)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.alias, alias) || other.alias == alias)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,cardNumber,expire,cvv,alias,isLoading);

@override
String toString() {
  return 'AddCardState(cardNumber: $cardNumber, expire: $expire, cvv: $cvv, alias: $alias, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$AddCardStateCopyWith<$Res> implements $AddCardStateCopyWith<$Res> {
  factory _$AddCardStateCopyWith(_AddCardState value, $Res Function(_AddCardState) _then) = __$AddCardStateCopyWithImpl;
@override @useResult
$Res call({
 String cardNumber, String expire, String? cvv, String? alias, bool isLoading
});




}
/// @nodoc
class __$AddCardStateCopyWithImpl<$Res>
    implements _$AddCardStateCopyWith<$Res> {
  __$AddCardStateCopyWithImpl(this._self, this._then);

  final _AddCardState _self;
  final $Res Function(_AddCardState) _then;

/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardNumber = null,Object? expire = null,Object? cvv = freezed,Object? alias = freezed,Object? isLoading = null,}) {
  return _then(_AddCardState(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expire: null == expire ? _self.expire : expire // ignore: cast_nullable_to_non_nullable
as String,cvv: freezed == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String?,alias: freezed == alias ? _self.alias : alias // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
