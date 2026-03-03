// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_phone_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthPhoneEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthPhoneEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthPhoneEvent()';
}


}

/// @nodoc
class $AuthPhoneEventCopyWith<$Res>  {
$AuthPhoneEventCopyWith(AuthPhoneEvent _, $Res Function(AuthPhoneEvent) __);
}


/// Adds pattern-matching-related methods to [AuthPhoneEvent].
extension AuthPhoneEventPatterns on AuthPhoneEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AuthPhoneSetEvent value)?  setPhone,TResult Function( _AuthPhoneSendEvent value)?  sendEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthPhoneSetEvent() when setPhone != null:
return setPhone(_that);case _AuthPhoneSendEvent() when sendEvent != null:
return sendEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AuthPhoneSetEvent value)  setPhone,required TResult Function( _AuthPhoneSendEvent value)  sendEvent,}){
final _that = this;
switch (_that) {
case _AuthPhoneSetEvent():
return setPhone(_that);case _AuthPhoneSendEvent():
return sendEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AuthPhoneSetEvent value)?  setPhone,TResult? Function( _AuthPhoneSendEvent value)?  sendEvent,}){
final _that = this;
switch (_that) {
case _AuthPhoneSetEvent() when setPhone != null:
return setPhone(_that);case _AuthPhoneSendEvent() when sendEvent != null:
return sendEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String phoneNumber)?  setPhone,TResult Function()?  sendEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthPhoneSetEvent() when setPhone != null:
return setPhone(_that.phoneNumber);case _AuthPhoneSendEvent() when sendEvent != null:
return sendEvent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String phoneNumber)  setPhone,required TResult Function()  sendEvent,}) {final _that = this;
switch (_that) {
case _AuthPhoneSetEvent():
return setPhone(_that.phoneNumber);case _AuthPhoneSendEvent():
return sendEvent();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String phoneNumber)?  setPhone,TResult? Function()?  sendEvent,}) {final _that = this;
switch (_that) {
case _AuthPhoneSetEvent() when setPhone != null:
return setPhone(_that.phoneNumber);case _AuthPhoneSendEvent() when sendEvent != null:
return sendEvent();case _:
  return null;

}
}

}

/// @nodoc


class _AuthPhoneSetEvent implements AuthPhoneEvent {
  const _AuthPhoneSetEvent({this.phoneNumber = ""});
  

@JsonKey() final  String phoneNumber;

/// Create a copy of AuthPhoneEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPhoneSetEventCopyWith<_AuthPhoneSetEvent> get copyWith => __$AuthPhoneSetEventCopyWithImpl<_AuthPhoneSetEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPhoneSetEvent&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'AuthPhoneEvent.setPhone(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$AuthPhoneSetEventCopyWith<$Res> implements $AuthPhoneEventCopyWith<$Res> {
  factory _$AuthPhoneSetEventCopyWith(_AuthPhoneSetEvent value, $Res Function(_AuthPhoneSetEvent) _then) = __$AuthPhoneSetEventCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class __$AuthPhoneSetEventCopyWithImpl<$Res>
    implements _$AuthPhoneSetEventCopyWith<$Res> {
  __$AuthPhoneSetEventCopyWithImpl(this._self, this._then);

  final _AuthPhoneSetEvent _self;
  final $Res Function(_AuthPhoneSetEvent) _then;

/// Create a copy of AuthPhoneEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(_AuthPhoneSetEvent(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthPhoneSendEvent implements AuthPhoneEvent {
  const _AuthPhoneSendEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPhoneSendEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthPhoneEvent.sendEvent()';
}


}




/// @nodoc
mixin _$AuthPhoneState {

 String get phoneNumber; dynamic get isLoading;
/// Create a copy of AuthPhoneState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthPhoneStateCopyWith<AuthPhoneState> get copyWith => _$AuthPhoneStateCopyWithImpl<AuthPhoneState>(this as AuthPhoneState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthPhoneState&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&const DeepCollectionEquality().equals(other.isLoading, isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,const DeepCollectionEquality().hash(isLoading));

@override
String toString() {
  return 'AuthPhoneState(phoneNumber: $phoneNumber, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $AuthPhoneStateCopyWith<$Res>  {
  factory $AuthPhoneStateCopyWith(AuthPhoneState value, $Res Function(AuthPhoneState) _then) = _$AuthPhoneStateCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, dynamic isLoading
});




}
/// @nodoc
class _$AuthPhoneStateCopyWithImpl<$Res>
    implements $AuthPhoneStateCopyWith<$Res> {
  _$AuthPhoneStateCopyWithImpl(this._self, this._then);

  final AuthPhoneState _self;
  final $Res Function(AuthPhoneState) _then;

/// Create a copy of AuthPhoneState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? isLoading = freezed,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthPhoneState].
extension AuthPhoneStatePatterns on AuthPhoneState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthPhoneState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthPhoneState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthPhoneState value)  $default,){
final _that = this;
switch (_that) {
case _AuthPhoneState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthPhoneState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthPhoneState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phoneNumber,  dynamic isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthPhoneState() when $default != null:
return $default(_that.phoneNumber,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phoneNumber,  dynamic isLoading)  $default,) {final _that = this;
switch (_that) {
case _AuthPhoneState():
return $default(_that.phoneNumber,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phoneNumber,  dynamic isLoading)?  $default,) {final _that = this;
switch (_that) {
case _AuthPhoneState() when $default != null:
return $default(_that.phoneNumber,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _AuthPhoneState extends AuthPhoneState {
  const _AuthPhoneState({this.phoneNumber = "", this.isLoading = false}): super._();
  

@override@JsonKey() final  String phoneNumber;
@override@JsonKey() final  dynamic isLoading;

/// Create a copy of AuthPhoneState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthPhoneStateCopyWith<_AuthPhoneState> get copyWith => __$AuthPhoneStateCopyWithImpl<_AuthPhoneState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthPhoneState&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&const DeepCollectionEquality().equals(other.isLoading, isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,const DeepCollectionEquality().hash(isLoading));

@override
String toString() {
  return 'AuthPhoneState(phoneNumber: $phoneNumber, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$AuthPhoneStateCopyWith<$Res> implements $AuthPhoneStateCopyWith<$Res> {
  factory _$AuthPhoneStateCopyWith(_AuthPhoneState value, $Res Function(_AuthPhoneState) _then) = __$AuthPhoneStateCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber, dynamic isLoading
});




}
/// @nodoc
class __$AuthPhoneStateCopyWithImpl<$Res>
    implements _$AuthPhoneStateCopyWith<$Res> {
  __$AuthPhoneStateCopyWithImpl(this._self, this._then);

  final _AuthPhoneState _self;
  final $Res Function(_AuthPhoneState) _then;

/// Create a copy of AuthPhoneState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? isLoading = freezed,}) {
  return _then(_AuthPhoneState(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
