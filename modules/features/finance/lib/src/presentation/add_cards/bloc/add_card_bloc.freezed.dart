// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCardEvent()';
}


}

/// @nodoc
class $AddCardEventCopyWith<$Res>  {
$AddCardEventCopyWith(AddCardEvent _, $Res Function(AddCardEvent) __);
}


/// Adds pattern-matching-related methods to [AddCardEvent].
extension AddCardEventPatterns on AddCardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetExtermalParamsEvent value)?  setExternalParams,TResult Function( _SetOwnParamsEvent value)?  setOwnParams,TResult Function( _SetCardNumberEvent value)?  setCardNumber,TResult Function( _AddEvent value)?  add,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetExtermalParamsEvent() when setExternalParams != null:
return setExternalParams(_that);case _SetOwnParamsEvent() when setOwnParams != null:
return setOwnParams(_that);case _SetCardNumberEvent() when setCardNumber != null:
return setCardNumber(_that);case _AddEvent() when add != null:
return add(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetExtermalParamsEvent value)  setExternalParams,required TResult Function( _SetOwnParamsEvent value)  setOwnParams,required TResult Function( _SetCardNumberEvent value)  setCardNumber,required TResult Function( _AddEvent value)  add,}){
final _that = this;
switch (_that) {
case _SetExtermalParamsEvent():
return setExternalParams(_that);case _SetOwnParamsEvent():
return setOwnParams(_that);case _SetCardNumberEvent():
return setCardNumber(_that);case _AddEvent():
return add(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetExtermalParamsEvent value)?  setExternalParams,TResult? Function( _SetOwnParamsEvent value)?  setOwnParams,TResult? Function( _SetCardNumberEvent value)?  setCardNumber,TResult? Function( _AddEvent value)?  add,}){
final _that = this;
switch (_that) {
case _SetExtermalParamsEvent() when setExternalParams != null:
return setExternalParams(_that);case _SetOwnParamsEvent() when setOwnParams != null:
return setOwnParams(_that);case _SetCardNumberEvent() when setCardNumber != null:
return setCardNumber(_that);case _AddEvent() when add != null:
return add(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String expire,  String cvv,  String holderName)?  setExternalParams,TResult Function( String expire,  String phoneNumber)?  setOwnParams,TResult Function( String cardNumber)?  setCardNumber,TResult Function()?  add,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetExtermalParamsEvent() when setExternalParams != null:
return setExternalParams(_that.expire,_that.cvv,_that.holderName);case _SetOwnParamsEvent() when setOwnParams != null:
return setOwnParams(_that.expire,_that.phoneNumber);case _SetCardNumberEvent() when setCardNumber != null:
return setCardNumber(_that.cardNumber);case _AddEvent() when add != null:
return add();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String expire,  String cvv,  String holderName)  setExternalParams,required TResult Function( String expire,  String phoneNumber)  setOwnParams,required TResult Function( String cardNumber)  setCardNumber,required TResult Function()  add,}) {final _that = this;
switch (_that) {
case _SetExtermalParamsEvent():
return setExternalParams(_that.expire,_that.cvv,_that.holderName);case _SetOwnParamsEvent():
return setOwnParams(_that.expire,_that.phoneNumber);case _SetCardNumberEvent():
return setCardNumber(_that.cardNumber);case _AddEvent():
return add();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String expire,  String cvv,  String holderName)?  setExternalParams,TResult? Function( String expire,  String phoneNumber)?  setOwnParams,TResult? Function( String cardNumber)?  setCardNumber,TResult? Function()?  add,}) {final _that = this;
switch (_that) {
case _SetExtermalParamsEvent() when setExternalParams != null:
return setExternalParams(_that.expire,_that.cvv,_that.holderName);case _SetOwnParamsEvent() when setOwnParams != null:
return setOwnParams(_that.expire,_that.phoneNumber);case _SetCardNumberEvent() when setCardNumber != null:
return setCardNumber(_that.cardNumber);case _AddEvent() when add != null:
return add();case _:
  return null;

}
}

}

/// @nodoc


class _SetExtermalParamsEvent implements AddCardEvent {
   _SetExtermalParamsEvent({required this.expire, required this.cvv, required this.holderName});
  

 final  String expire;
 final  String cvv;
 final  String holderName;

/// Create a copy of AddCardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetExtermalParamsEventCopyWith<_SetExtermalParamsEvent> get copyWith => __$SetExtermalParamsEventCopyWithImpl<_SetExtermalParamsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetExtermalParamsEvent&&(identical(other.expire, expire) || other.expire == expire)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.holderName, holderName) || other.holderName == holderName));
}


@override
int get hashCode => Object.hash(runtimeType,expire,cvv,holderName);

@override
String toString() {
  return 'AddCardEvent.setExternalParams(expire: $expire, cvv: $cvv, holderName: $holderName)';
}


}

/// @nodoc
abstract mixin class _$SetExtermalParamsEventCopyWith<$Res> implements $AddCardEventCopyWith<$Res> {
  factory _$SetExtermalParamsEventCopyWith(_SetExtermalParamsEvent value, $Res Function(_SetExtermalParamsEvent) _then) = __$SetExtermalParamsEventCopyWithImpl;
@useResult
$Res call({
 String expire, String cvv, String holderName
});




}
/// @nodoc
class __$SetExtermalParamsEventCopyWithImpl<$Res>
    implements _$SetExtermalParamsEventCopyWith<$Res> {
  __$SetExtermalParamsEventCopyWithImpl(this._self, this._then);

  final _SetExtermalParamsEvent _self;
  final $Res Function(_SetExtermalParamsEvent) _then;

/// Create a copy of AddCardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? expire = null,Object? cvv = null,Object? holderName = null,}) {
  return _then(_SetExtermalParamsEvent(
expire: null == expire ? _self.expire : expire // ignore: cast_nullable_to_non_nullable
as String,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,holderName: null == holderName ? _self.holderName : holderName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SetOwnParamsEvent implements AddCardEvent {
   _SetOwnParamsEvent({required this.expire, required this.phoneNumber});
  

 final  String expire;
 final  String phoneNumber;

/// Create a copy of AddCardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetOwnParamsEventCopyWith<_SetOwnParamsEvent> get copyWith => __$SetOwnParamsEventCopyWithImpl<_SetOwnParamsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetOwnParamsEvent&&(identical(other.expire, expire) || other.expire == expire)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,expire,phoneNumber);

@override
String toString() {
  return 'AddCardEvent.setOwnParams(expire: $expire, phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$SetOwnParamsEventCopyWith<$Res> implements $AddCardEventCopyWith<$Res> {
  factory _$SetOwnParamsEventCopyWith(_SetOwnParamsEvent value, $Res Function(_SetOwnParamsEvent) _then) = __$SetOwnParamsEventCopyWithImpl;
@useResult
$Res call({
 String expire, String phoneNumber
});




}
/// @nodoc
class __$SetOwnParamsEventCopyWithImpl<$Res>
    implements _$SetOwnParamsEventCopyWith<$Res> {
  __$SetOwnParamsEventCopyWithImpl(this._self, this._then);

  final _SetOwnParamsEvent _self;
  final $Res Function(_SetOwnParamsEvent) _then;

/// Create a copy of AddCardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? expire = null,Object? phoneNumber = null,}) {
  return _then(_SetOwnParamsEvent(
expire: null == expire ? _self.expire : expire // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SetCardNumberEvent implements AddCardEvent {
   _SetCardNumberEvent({required this.cardNumber});
  

 final  String cardNumber;

/// Create a copy of AddCardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetCardNumberEventCopyWith<_SetCardNumberEvent> get copyWith => __$SetCardNumberEventCopyWithImpl<_SetCardNumberEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetCardNumberEvent&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber));
}


@override
int get hashCode => Object.hash(runtimeType,cardNumber);

@override
String toString() {
  return 'AddCardEvent.setCardNumber(cardNumber: $cardNumber)';
}


}

/// @nodoc
abstract mixin class _$SetCardNumberEventCopyWith<$Res> implements $AddCardEventCopyWith<$Res> {
  factory _$SetCardNumberEventCopyWith(_SetCardNumberEvent value, $Res Function(_SetCardNumberEvent) _then) = __$SetCardNumberEventCopyWithImpl;
@useResult
$Res call({
 String cardNumber
});




}
/// @nodoc
class __$SetCardNumberEventCopyWithImpl<$Res>
    implements _$SetCardNumberEventCopyWith<$Res> {
  __$SetCardNumberEventCopyWithImpl(this._self, this._then);

  final _SetCardNumberEvent _self;
  final $Res Function(_SetCardNumberEvent) _then;

/// Create a copy of AddCardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cardNumber = null,}) {
  return _then(_SetCardNumberEvent(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddEvent implements AddCardEvent {
   _AddEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCardEvent.add()';
}


}




/// @nodoc
mixin _$AddCardState {

 String get pan; AddCardParams? get params; AddCardNavState? get navState; bool get isLoading;
/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCardStateCopyWith<AddCardState> get copyWith => _$AddCardStateCopyWithImpl<AddCardState>(this as AddCardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardState&&(identical(other.pan, pan) || other.pan == pan)&&(identical(other.params, params) || other.params == params)&&(identical(other.navState, navState) || other.navState == navState)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,pan,params,navState,isLoading);

@override
String toString() {
  return 'AddCardState(pan: $pan, params: $params, navState: $navState, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $AddCardStateCopyWith<$Res>  {
  factory $AddCardStateCopyWith(AddCardState value, $Res Function(AddCardState) _then) = _$AddCardStateCopyWithImpl;
@useResult
$Res call({
 String pan, AddCardParams? params, AddCardNavState? navState, bool isLoading
});


$AddCardParamsCopyWith<$Res>? get params;$AddCardNavStateCopyWith<$Res>? get navState;

}
/// @nodoc
class _$AddCardStateCopyWithImpl<$Res>
    implements $AddCardStateCopyWith<$Res> {
  _$AddCardStateCopyWithImpl(this._self, this._then);

  final AddCardState _self;
  final $Res Function(AddCardState) _then;

/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pan = null,Object? params = freezed,Object? navState = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
pan: null == pan ? _self.pan : pan // ignore: cast_nullable_to_non_nullable
as String,params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddCardParams?,navState: freezed == navState ? _self.navState : navState // ignore: cast_nullable_to_non_nullable
as AddCardNavState?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddCardParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
    return null;
  }

  return $AddCardParamsCopyWith<$Res>(_self.params!, (value) {
    return _then(_self.copyWith(params: value));
  });
}/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddCardNavStateCopyWith<$Res>? get navState {
    if (_self.navState == null) {
    return null;
  }

  return $AddCardNavStateCopyWith<$Res>(_self.navState!, (value) {
    return _then(_self.copyWith(navState: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddCardState].
extension AddCardStatePatterns on AddCardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddCardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddCardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddCardState value)  $default,){
final _that = this;
switch (_that) {
case _AddCardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddCardState value)?  $default,){
final _that = this;
switch (_that) {
case _AddCardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pan,  AddCardParams? params,  AddCardNavState? navState,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddCardState() when $default != null:
return $default(_that.pan,_that.params,_that.navState,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pan,  AddCardParams? params,  AddCardNavState? navState,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _AddCardState():
return $default(_that.pan,_that.params,_that.navState,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pan,  AddCardParams? params,  AddCardNavState? navState,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _AddCardState() when $default != null:
return $default(_that.pan,_that.params,_that.navState,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _AddCardState extends AddCardState {
  const _AddCardState({required this.pan, this.params, this.navState, this.isLoading = false}): super._();
  

@override final  String pan;
@override final  AddCardParams? params;
@override final  AddCardNavState? navState;
@override@JsonKey() final  bool isLoading;

/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCardStateCopyWith<_AddCardState> get copyWith => __$AddCardStateCopyWithImpl<_AddCardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCardState&&(identical(other.pan, pan) || other.pan == pan)&&(identical(other.params, params) || other.params == params)&&(identical(other.navState, navState) || other.navState == navState)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,pan,params,navState,isLoading);

@override
String toString() {
  return 'AddCardState(pan: $pan, params: $params, navState: $navState, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$AddCardStateCopyWith<$Res> implements $AddCardStateCopyWith<$Res> {
  factory _$AddCardStateCopyWith(_AddCardState value, $Res Function(_AddCardState) _then) = __$AddCardStateCopyWithImpl;
@override @useResult
$Res call({
 String pan, AddCardParams? params, AddCardNavState? navState, bool isLoading
});


@override $AddCardParamsCopyWith<$Res>? get params;@override $AddCardNavStateCopyWith<$Res>? get navState;

}
/// @nodoc
class __$AddCardStateCopyWithImpl<$Res>
    implements _$AddCardStateCopyWith<$Res> {
  __$AddCardStateCopyWithImpl(this._self, this._then);

  final _AddCardState _self;
  final $Res Function(_AddCardState) _then;

/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pan = null,Object? params = freezed,Object? navState = freezed,Object? isLoading = null,}) {
  return _then(_AddCardState(
pan: null == pan ? _self.pan : pan // ignore: cast_nullable_to_non_nullable
as String,params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddCardParams?,navState: freezed == navState ? _self.navState : navState // ignore: cast_nullable_to_non_nullable
as AddCardNavState?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddCardParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
    return null;
  }

  return $AddCardParamsCopyWith<$Res>(_self.params!, (value) {
    return _then(_self.copyWith(params: value));
  });
}/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddCardNavStateCopyWith<$Res>? get navState {
    if (_self.navState == null) {
    return null;
  }

  return $AddCardNavStateCopyWith<$Res>(_self.navState!, (value) {
    return _then(_self.copyWith(navState: value));
  });
}
}

/// @nodoc
mixin _$AddCardParams {

 String get expiry;
/// Create a copy of AddCardParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCardParamsCopyWith<AddCardParams> get copyWith => _$AddCardParamsCopyWithImpl<AddCardParams>(this as AddCardParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardParams&&(identical(other.expiry, expiry) || other.expiry == expiry));
}


@override
int get hashCode => Object.hash(runtimeType,expiry);

@override
String toString() {
  return 'AddCardParams(expiry: $expiry)';
}


}

/// @nodoc
abstract mixin class $AddCardParamsCopyWith<$Res>  {
  factory $AddCardParamsCopyWith(AddCardParams value, $Res Function(AddCardParams) _then) = _$AddCardParamsCopyWithImpl;
@useResult
$Res call({
 String expiry
});




}
/// @nodoc
class _$AddCardParamsCopyWithImpl<$Res>
    implements $AddCardParamsCopyWith<$Res> {
  _$AddCardParamsCopyWithImpl(this._self, this._then);

  final AddCardParams _self;
  final $Res Function(AddCardParams) _then;

/// Create a copy of AddCardParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? expiry = null,}) {
  return _then(_self.copyWith(
expiry: null == expiry ? _self.expiry : expiry // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddCardParams].
extension AddCardParamsPatterns on AddCardParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddCardExternalParams value)?  externalParams,TResult Function( AddCardOwnParams value)?  ownParams,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddCardExternalParams() when externalParams != null:
return externalParams(_that);case AddCardOwnParams() when ownParams != null:
return ownParams(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddCardExternalParams value)  externalParams,required TResult Function( AddCardOwnParams value)  ownParams,}){
final _that = this;
switch (_that) {
case AddCardExternalParams():
return externalParams(_that);case AddCardOwnParams():
return ownParams(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddCardExternalParams value)?  externalParams,TResult? Function( AddCardOwnParams value)?  ownParams,}){
final _that = this;
switch (_that) {
case AddCardExternalParams() when externalParams != null:
return externalParams(_that);case AddCardOwnParams() when ownParams != null:
return ownParams(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String expiry,  String cvv,  String cardHolderName)?  externalParams,TResult Function( String expiry,  String phone)?  ownParams,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddCardExternalParams() when externalParams != null:
return externalParams(_that.expiry,_that.cvv,_that.cardHolderName);case AddCardOwnParams() when ownParams != null:
return ownParams(_that.expiry,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String expiry,  String cvv,  String cardHolderName)  externalParams,required TResult Function( String expiry,  String phone)  ownParams,}) {final _that = this;
switch (_that) {
case AddCardExternalParams():
return externalParams(_that.expiry,_that.cvv,_that.cardHolderName);case AddCardOwnParams():
return ownParams(_that.expiry,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String expiry,  String cvv,  String cardHolderName)?  externalParams,TResult? Function( String expiry,  String phone)?  ownParams,}) {final _that = this;
switch (_that) {
case AddCardExternalParams() when externalParams != null:
return externalParams(_that.expiry,_that.cvv,_that.cardHolderName);case AddCardOwnParams() when ownParams != null:
return ownParams(_that.expiry,_that.phone);case _:
  return null;

}
}

}

/// @nodoc


class AddCardExternalParams extends AddCardParams {
  const AddCardExternalParams({this.expiry = "", this.cvv = "", this.cardHolderName = ""}): super._();
  

@override@JsonKey() final  String expiry;
@JsonKey() final  String cvv;
@JsonKey() final  String cardHolderName;

/// Create a copy of AddCardParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCardExternalParamsCopyWith<AddCardExternalParams> get copyWith => _$AddCardExternalParamsCopyWithImpl<AddCardExternalParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardExternalParams&&(identical(other.expiry, expiry) || other.expiry == expiry)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.cardHolderName, cardHolderName) || other.cardHolderName == cardHolderName));
}


@override
int get hashCode => Object.hash(runtimeType,expiry,cvv,cardHolderName);

@override
String toString() {
  return 'AddCardParams.externalParams(expiry: $expiry, cvv: $cvv, cardHolderName: $cardHolderName)';
}


}

/// @nodoc
abstract mixin class $AddCardExternalParamsCopyWith<$Res> implements $AddCardParamsCopyWith<$Res> {
  factory $AddCardExternalParamsCopyWith(AddCardExternalParams value, $Res Function(AddCardExternalParams) _then) = _$AddCardExternalParamsCopyWithImpl;
@override @useResult
$Res call({
 String expiry, String cvv, String cardHolderName
});




}
/// @nodoc
class _$AddCardExternalParamsCopyWithImpl<$Res>
    implements $AddCardExternalParamsCopyWith<$Res> {
  _$AddCardExternalParamsCopyWithImpl(this._self, this._then);

  final AddCardExternalParams _self;
  final $Res Function(AddCardExternalParams) _then;

/// Create a copy of AddCardParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? expiry = null,Object? cvv = null,Object? cardHolderName = null,}) {
  return _then(AddCardExternalParams(
expiry: null == expiry ? _self.expiry : expiry // ignore: cast_nullable_to_non_nullable
as String,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,cardHolderName: null == cardHolderName ? _self.cardHolderName : cardHolderName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddCardOwnParams extends AddCardParams {
  const AddCardOwnParams({this.expiry = "", this.phone = ""}): super._();
  

@override@JsonKey() final  String expiry;
@JsonKey() final  String phone;

/// Create a copy of AddCardParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCardOwnParamsCopyWith<AddCardOwnParams> get copyWith => _$AddCardOwnParamsCopyWithImpl<AddCardOwnParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardOwnParams&&(identical(other.expiry, expiry) || other.expiry == expiry)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,expiry,phone);

@override
String toString() {
  return 'AddCardParams.ownParams(expiry: $expiry, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $AddCardOwnParamsCopyWith<$Res> implements $AddCardParamsCopyWith<$Res> {
  factory $AddCardOwnParamsCopyWith(AddCardOwnParams value, $Res Function(AddCardOwnParams) _then) = _$AddCardOwnParamsCopyWithImpl;
@override @useResult
$Res call({
 String expiry, String phone
});




}
/// @nodoc
class _$AddCardOwnParamsCopyWithImpl<$Res>
    implements $AddCardOwnParamsCopyWith<$Res> {
  _$AddCardOwnParamsCopyWithImpl(this._self, this._then);

  final AddCardOwnParams _self;
  final $Res Function(AddCardOwnParams) _then;

/// Create a copy of AddCardParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? expiry = null,Object? phone = null,}) {
  return _then(AddCardOwnParams(
expiry: null == expiry ? _self.expiry : expiry // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AddCardNavState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardNavState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCardNavState()';
}


}

/// @nodoc
class $AddCardNavStateCopyWith<$Res>  {
$AddCardNavStateCopyWith(AddCardNavState _, $Res Function(AddCardNavState) __);
}


/// Adds pattern-matching-related methods to [AddCardNavState].
extension AddCardNavStatePatterns on AddCardNavState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddCardVerifyNavState value)?  verify,TResult Function( AddCardErrorNavState value)?  error,TResult Function( AddCardCompletedNavState value)?  completed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddCardVerifyNavState() when verify != null:
return verify(_that);case AddCardErrorNavState() when error != null:
return error(_that);case AddCardCompletedNavState() when completed != null:
return completed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddCardVerifyNavState value)  verify,required TResult Function( AddCardErrorNavState value)  error,required TResult Function( AddCardCompletedNavState value)  completed,}){
final _that = this;
switch (_that) {
case AddCardVerifyNavState():
return verify(_that);case AddCardErrorNavState():
return error(_that);case AddCardCompletedNavState():
return completed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddCardVerifyNavState value)?  verify,TResult? Function( AddCardErrorNavState value)?  error,TResult? Function( AddCardCompletedNavState value)?  completed,}){
final _that = this;
switch (_that) {
case AddCardVerifyNavState() when verify != null:
return verify(_that);case AddCardErrorNavState() when error != null:
return error(_that);case AddCardCompletedNavState() when completed != null:
return completed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int cardId)?  verify,TResult Function( String? message)?  error,TResult Function()?  completed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddCardVerifyNavState() when verify != null:
return verify(_that.cardId);case AddCardErrorNavState() when error != null:
return error(_that.message);case AddCardCompletedNavState() when completed != null:
return completed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int cardId)  verify,required TResult Function( String? message)  error,required TResult Function()  completed,}) {final _that = this;
switch (_that) {
case AddCardVerifyNavState():
return verify(_that.cardId);case AddCardErrorNavState():
return error(_that.message);case AddCardCompletedNavState():
return completed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int cardId)?  verify,TResult? Function( String? message)?  error,TResult? Function()?  completed,}) {final _that = this;
switch (_that) {
case AddCardVerifyNavState() when verify != null:
return verify(_that.cardId);case AddCardErrorNavState() when error != null:
return error(_that.message);case AddCardCompletedNavState() when completed != null:
return completed();case _:
  return null;

}
}

}

/// @nodoc


class AddCardVerifyNavState implements AddCardNavState {
  const AddCardVerifyNavState({required this.cardId});
  

 final  int cardId;

/// Create a copy of AddCardNavState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCardVerifyNavStateCopyWith<AddCardVerifyNavState> get copyWith => _$AddCardVerifyNavStateCopyWithImpl<AddCardVerifyNavState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardVerifyNavState&&(identical(other.cardId, cardId) || other.cardId == cardId));
}


@override
int get hashCode => Object.hash(runtimeType,cardId);

@override
String toString() {
  return 'AddCardNavState.verify(cardId: $cardId)';
}


}

/// @nodoc
abstract mixin class $AddCardVerifyNavStateCopyWith<$Res> implements $AddCardNavStateCopyWith<$Res> {
  factory $AddCardVerifyNavStateCopyWith(AddCardVerifyNavState value, $Res Function(AddCardVerifyNavState) _then) = _$AddCardVerifyNavStateCopyWithImpl;
@useResult
$Res call({
 int cardId
});




}
/// @nodoc
class _$AddCardVerifyNavStateCopyWithImpl<$Res>
    implements $AddCardVerifyNavStateCopyWith<$Res> {
  _$AddCardVerifyNavStateCopyWithImpl(this._self, this._then);

  final AddCardVerifyNavState _self;
  final $Res Function(AddCardVerifyNavState) _then;

/// Create a copy of AddCardNavState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cardId = null,}) {
  return _then(AddCardVerifyNavState(
cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class AddCardErrorNavState implements AddCardNavState {
  const AddCardErrorNavState({this.message});
  

 final  String? message;

/// Create a copy of AddCardNavState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCardErrorNavStateCopyWith<AddCardErrorNavState> get copyWith => _$AddCardErrorNavStateCopyWithImpl<AddCardErrorNavState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardErrorNavState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddCardNavState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AddCardErrorNavStateCopyWith<$Res> implements $AddCardNavStateCopyWith<$Res> {
  factory $AddCardErrorNavStateCopyWith(AddCardErrorNavState value, $Res Function(AddCardErrorNavState) _then) = _$AddCardErrorNavStateCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$AddCardErrorNavStateCopyWithImpl<$Res>
    implements $AddCardErrorNavStateCopyWith<$Res> {
  _$AddCardErrorNavStateCopyWithImpl(this._self, this._then);

  final AddCardErrorNavState _self;
  final $Res Function(AddCardErrorNavState) _then;

/// Create a copy of AddCardNavState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(AddCardErrorNavState(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class AddCardCompletedNavState implements AddCardNavState {
  const AddCardCompletedNavState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardCompletedNavState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCardNavState.completed()';
}


}




// dart format on
