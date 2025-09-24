// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_pin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckPinCodeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckPinCodeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckPinCodeEvent()';
}


}

/// @nodoc
class $CheckPinCodeEventCopyWith<$Res>  {
$CheckPinCodeEventCopyWith(CheckPinCodeEvent _, $Res Function(CheckPinCodeEvent) __);
}


/// Adds pattern-matching-related methods to [CheckPinCodeEvent].
extension CheckPinCodeEventPatterns on CheckPinCodeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetPinCodeEvent value)?  setPinCode,TResult Function( _RemoveLastPinEvent value)?  removeLast,TResult Function( _ResetPinEvent value)?  reset,TResult Function( _ClearPinEvent value)?  clear,TResult Function( _SendEvent value)?  send,TResult Function( _OpenBiometricAuthEvent value)?  openBiometricAuth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetPinCodeEvent() when setPinCode != null:
return setPinCode(_that);case _RemoveLastPinEvent() when removeLast != null:
return removeLast(_that);case _ResetPinEvent() when reset != null:
return reset(_that);case _ClearPinEvent() when clear != null:
return clear(_that);case _SendEvent() when send != null:
return send(_that);case _OpenBiometricAuthEvent() when openBiometricAuth != null:
return openBiometricAuth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetPinCodeEvent value)  setPinCode,required TResult Function( _RemoveLastPinEvent value)  removeLast,required TResult Function( _ResetPinEvent value)  reset,required TResult Function( _ClearPinEvent value)  clear,required TResult Function( _SendEvent value)  send,required TResult Function( _OpenBiometricAuthEvent value)  openBiometricAuth,}){
final _that = this;
switch (_that) {
case _SetPinCodeEvent():
return setPinCode(_that);case _RemoveLastPinEvent():
return removeLast(_that);case _ResetPinEvent():
return reset(_that);case _ClearPinEvent():
return clear(_that);case _SendEvent():
return send(_that);case _OpenBiometricAuthEvent():
return openBiometricAuth(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetPinCodeEvent value)?  setPinCode,TResult? Function( _RemoveLastPinEvent value)?  removeLast,TResult? Function( _ResetPinEvent value)?  reset,TResult? Function( _ClearPinEvent value)?  clear,TResult? Function( _SendEvent value)?  send,TResult? Function( _OpenBiometricAuthEvent value)?  openBiometricAuth,}){
final _that = this;
switch (_that) {
case _SetPinCodeEvent() when setPinCode != null:
return setPinCode(_that);case _RemoveLastPinEvent() when removeLast != null:
return removeLast(_that);case _ResetPinEvent() when reset != null:
return reset(_that);case _ClearPinEvent() when clear != null:
return clear(_that);case _SendEvent() when send != null:
return send(_that);case _OpenBiometricAuthEvent() when openBiometricAuth != null:
return openBiometricAuth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String pinCode)?  setPinCode,TResult Function()?  removeLast,TResult Function()?  reset,TResult Function()?  clear,TResult Function( String pinCode)?  send,TResult Function( String localizedReason)?  openBiometricAuth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetPinCodeEvent() when setPinCode != null:
return setPinCode(_that.pinCode);case _RemoveLastPinEvent() when removeLast != null:
return removeLast();case _ResetPinEvent() when reset != null:
return reset();case _ClearPinEvent() when clear != null:
return clear();case _SendEvent() when send != null:
return send(_that.pinCode);case _OpenBiometricAuthEvent() when openBiometricAuth != null:
return openBiometricAuth(_that.localizedReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String pinCode)  setPinCode,required TResult Function()  removeLast,required TResult Function()  reset,required TResult Function()  clear,required TResult Function( String pinCode)  send,required TResult Function( String localizedReason)  openBiometricAuth,}) {final _that = this;
switch (_that) {
case _SetPinCodeEvent():
return setPinCode(_that.pinCode);case _RemoveLastPinEvent():
return removeLast();case _ResetPinEvent():
return reset();case _ClearPinEvent():
return clear();case _SendEvent():
return send(_that.pinCode);case _OpenBiometricAuthEvent():
return openBiometricAuth(_that.localizedReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String pinCode)?  setPinCode,TResult? Function()?  removeLast,TResult? Function()?  reset,TResult? Function()?  clear,TResult? Function( String pinCode)?  send,TResult? Function( String localizedReason)?  openBiometricAuth,}) {final _that = this;
switch (_that) {
case _SetPinCodeEvent() when setPinCode != null:
return setPinCode(_that.pinCode);case _RemoveLastPinEvent() when removeLast != null:
return removeLast();case _ResetPinEvent() when reset != null:
return reset();case _ClearPinEvent() when clear != null:
return clear();case _SendEvent() when send != null:
return send(_that.pinCode);case _OpenBiometricAuthEvent() when openBiometricAuth != null:
return openBiometricAuth(_that.localizedReason);case _:
  return null;

}
}

}

/// @nodoc


class _SetPinCodeEvent implements CheckPinCodeEvent {
   _SetPinCodeEvent({required this.pinCode});
  

 final  String pinCode;

/// Create a copy of CheckPinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetPinCodeEventCopyWith<_SetPinCodeEvent> get copyWith => __$SetPinCodeEventCopyWithImpl<_SetPinCodeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetPinCodeEvent&&(identical(other.pinCode, pinCode) || other.pinCode == pinCode));
}


@override
int get hashCode => Object.hash(runtimeType,pinCode);

@override
String toString() {
  return 'CheckPinCodeEvent.setPinCode(pinCode: $pinCode)';
}


}

/// @nodoc
abstract mixin class _$SetPinCodeEventCopyWith<$Res> implements $CheckPinCodeEventCopyWith<$Res> {
  factory _$SetPinCodeEventCopyWith(_SetPinCodeEvent value, $Res Function(_SetPinCodeEvent) _then) = __$SetPinCodeEventCopyWithImpl;
@useResult
$Res call({
 String pinCode
});




}
/// @nodoc
class __$SetPinCodeEventCopyWithImpl<$Res>
    implements _$SetPinCodeEventCopyWith<$Res> {
  __$SetPinCodeEventCopyWithImpl(this._self, this._then);

  final _SetPinCodeEvent _self;
  final $Res Function(_SetPinCodeEvent) _then;

/// Create a copy of CheckPinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pinCode = null,}) {
  return _then(_SetPinCodeEvent(
pinCode: null == pinCode ? _self.pinCode : pinCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RemoveLastPinEvent implements CheckPinCodeEvent {
   _RemoveLastPinEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveLastPinEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckPinCodeEvent.removeLast()';
}


}




/// @nodoc


class _ResetPinEvent implements CheckPinCodeEvent {
   _ResetPinEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPinEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckPinCodeEvent.reset()';
}


}




/// @nodoc


class _ClearPinEvent implements CheckPinCodeEvent {
   _ClearPinEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearPinEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckPinCodeEvent.clear()';
}


}




/// @nodoc


class _SendEvent implements CheckPinCodeEvent {
   _SendEvent({required this.pinCode});
  

 final  String pinCode;

/// Create a copy of CheckPinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendEventCopyWith<_SendEvent> get copyWith => __$SendEventCopyWithImpl<_SendEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendEvent&&(identical(other.pinCode, pinCode) || other.pinCode == pinCode));
}


@override
int get hashCode => Object.hash(runtimeType,pinCode);

@override
String toString() {
  return 'CheckPinCodeEvent.send(pinCode: $pinCode)';
}


}

/// @nodoc
abstract mixin class _$SendEventCopyWith<$Res> implements $CheckPinCodeEventCopyWith<$Res> {
  factory _$SendEventCopyWith(_SendEvent value, $Res Function(_SendEvent) _then) = __$SendEventCopyWithImpl;
@useResult
$Res call({
 String pinCode
});




}
/// @nodoc
class __$SendEventCopyWithImpl<$Res>
    implements _$SendEventCopyWith<$Res> {
  __$SendEventCopyWithImpl(this._self, this._then);

  final _SendEvent _self;
  final $Res Function(_SendEvent) _then;

/// Create a copy of CheckPinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pinCode = null,}) {
  return _then(_SendEvent(
pinCode: null == pinCode ? _self.pinCode : pinCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OpenBiometricAuthEvent implements CheckPinCodeEvent {
   _OpenBiometricAuthEvent({required this.localizedReason});
  

 final  String localizedReason;

/// Create a copy of CheckPinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenBiometricAuthEventCopyWith<_OpenBiometricAuthEvent> get copyWith => __$OpenBiometricAuthEventCopyWithImpl<_OpenBiometricAuthEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenBiometricAuthEvent&&(identical(other.localizedReason, localizedReason) || other.localizedReason == localizedReason));
}


@override
int get hashCode => Object.hash(runtimeType,localizedReason);

@override
String toString() {
  return 'CheckPinCodeEvent.openBiometricAuth(localizedReason: $localizedReason)';
}


}

/// @nodoc
abstract mixin class _$OpenBiometricAuthEventCopyWith<$Res> implements $CheckPinCodeEventCopyWith<$Res> {
  factory _$OpenBiometricAuthEventCopyWith(_OpenBiometricAuthEvent value, $Res Function(_OpenBiometricAuthEvent) _then) = __$OpenBiometricAuthEventCopyWithImpl;
@useResult
$Res call({
 String localizedReason
});




}
/// @nodoc
class __$OpenBiometricAuthEventCopyWithImpl<$Res>
    implements _$OpenBiometricAuthEventCopyWith<$Res> {
  __$OpenBiometricAuthEventCopyWithImpl(this._self, this._then);

  final _OpenBiometricAuthEvent _self;
  final $Res Function(_OpenBiometricAuthEvent) _then;

/// Create a copy of CheckPinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? localizedReason = null,}) {
  return _then(_OpenBiometricAuthEvent(
localizedReason: null == localizedReason ? _self.localizedReason : localizedReason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CheckPinCodeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckPinCodeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckPinCodeState()';
}


}

/// @nodoc
class $CheckPinCodeStateCopyWith<$Res>  {
$CheckPinCodeStateCopyWith(CheckPinCodeState _, $Res Function(CheckPinCodeState) __);
}


/// Adds pattern-matching-related methods to [CheckPinCodeState].
extension CheckPinCodeStatePatterns on CheckPinCodeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckPinEntryState value)?  entryState,TResult Function( CheckPinSuccessState value)?  successState,TResult Function( CheckPinLoadingState value)?  loadingState,TResult Function( CheckPinErrorState value)?  errorState,TResult Function( CheckPinResetState value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckPinEntryState() when entryState != null:
return entryState(_that);case CheckPinSuccessState() when successState != null:
return successState(_that);case CheckPinLoadingState() when loadingState != null:
return loadingState(_that);case CheckPinErrorState() when errorState != null:
return errorState(_that);case CheckPinResetState() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckPinEntryState value)  entryState,required TResult Function( CheckPinSuccessState value)  successState,required TResult Function( CheckPinLoadingState value)  loadingState,required TResult Function( CheckPinErrorState value)  errorState,required TResult Function( CheckPinResetState value)  reset,}){
final _that = this;
switch (_that) {
case CheckPinEntryState():
return entryState(_that);case CheckPinSuccessState():
return successState(_that);case CheckPinLoadingState():
return loadingState(_that);case CheckPinErrorState():
return errorState(_that);case CheckPinResetState():
return reset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckPinEntryState value)?  entryState,TResult? Function( CheckPinSuccessState value)?  successState,TResult? Function( CheckPinLoadingState value)?  loadingState,TResult? Function( CheckPinErrorState value)?  errorState,TResult? Function( CheckPinResetState value)?  reset,}){
final _that = this;
switch (_that) {
case CheckPinEntryState() when entryState != null:
return entryState(_that);case CheckPinSuccessState() when successState != null:
return successState(_that);case CheckPinLoadingState() when loadingState != null:
return loadingState(_that);case CheckPinErrorState() when errorState != null:
return errorState(_that);case CheckPinResetState() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String pinCode,  bool canBiometric)?  entryState,TResult Function()?  successState,TResult Function()?  loadingState,TResult Function( String? message)?  errorState,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckPinEntryState() when entryState != null:
return entryState(_that.pinCode,_that.canBiometric);case CheckPinSuccessState() when successState != null:
return successState();case CheckPinLoadingState() when loadingState != null:
return loadingState();case CheckPinErrorState() when errorState != null:
return errorState(_that.message);case CheckPinResetState() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String pinCode,  bool canBiometric)  entryState,required TResult Function()  successState,required TResult Function()  loadingState,required TResult Function( String? message)  errorState,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case CheckPinEntryState():
return entryState(_that.pinCode,_that.canBiometric);case CheckPinSuccessState():
return successState();case CheckPinLoadingState():
return loadingState();case CheckPinErrorState():
return errorState(_that.message);case CheckPinResetState():
return reset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String pinCode,  bool canBiometric)?  entryState,TResult? Function()?  successState,TResult? Function()?  loadingState,TResult? Function( String? message)?  errorState,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case CheckPinEntryState() when entryState != null:
return entryState(_that.pinCode,_that.canBiometric);case CheckPinSuccessState() when successState != null:
return successState();case CheckPinLoadingState() when loadingState != null:
return loadingState();case CheckPinErrorState() when errorState != null:
return errorState(_that.message);case CheckPinResetState() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class CheckPinEntryState implements CheckPinCodeState {
   CheckPinEntryState(this.pinCode, {this.canBiometric = false});
  

 final  String pinCode;
@JsonKey() final  bool canBiometric;

/// Create a copy of CheckPinCodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckPinEntryStateCopyWith<CheckPinEntryState> get copyWith => _$CheckPinEntryStateCopyWithImpl<CheckPinEntryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckPinEntryState&&(identical(other.pinCode, pinCode) || other.pinCode == pinCode)&&(identical(other.canBiometric, canBiometric) || other.canBiometric == canBiometric));
}


@override
int get hashCode => Object.hash(runtimeType,pinCode,canBiometric);

@override
String toString() {
  return 'CheckPinCodeState.entryState(pinCode: $pinCode, canBiometric: $canBiometric)';
}


}

/// @nodoc
abstract mixin class $CheckPinEntryStateCopyWith<$Res> implements $CheckPinCodeStateCopyWith<$Res> {
  factory $CheckPinEntryStateCopyWith(CheckPinEntryState value, $Res Function(CheckPinEntryState) _then) = _$CheckPinEntryStateCopyWithImpl;
@useResult
$Res call({
 String pinCode, bool canBiometric
});




}
/// @nodoc
class _$CheckPinEntryStateCopyWithImpl<$Res>
    implements $CheckPinEntryStateCopyWith<$Res> {
  _$CheckPinEntryStateCopyWithImpl(this._self, this._then);

  final CheckPinEntryState _self;
  final $Res Function(CheckPinEntryState) _then;

/// Create a copy of CheckPinCodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pinCode = null,Object? canBiometric = null,}) {
  return _then(CheckPinEntryState(
null == pinCode ? _self.pinCode : pinCode // ignore: cast_nullable_to_non_nullable
as String,canBiometric: null == canBiometric ? _self.canBiometric : canBiometric // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CheckPinSuccessState implements CheckPinCodeState {
   CheckPinSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckPinSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckPinCodeState.successState()';
}


}




/// @nodoc


class CheckPinLoadingState implements CheckPinCodeState {
   CheckPinLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckPinLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckPinCodeState.loadingState()';
}


}




/// @nodoc


class CheckPinErrorState implements CheckPinCodeState {
   CheckPinErrorState({this.message});
  

 final  String? message;

/// Create a copy of CheckPinCodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckPinErrorStateCopyWith<CheckPinErrorState> get copyWith => _$CheckPinErrorStateCopyWithImpl<CheckPinErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckPinErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CheckPinCodeState.errorState(message: $message)';
}


}

/// @nodoc
abstract mixin class $CheckPinErrorStateCopyWith<$Res> implements $CheckPinCodeStateCopyWith<$Res> {
  factory $CheckPinErrorStateCopyWith(CheckPinErrorState value, $Res Function(CheckPinErrorState) _then) = _$CheckPinErrorStateCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$CheckPinErrorStateCopyWithImpl<$Res>
    implements $CheckPinErrorStateCopyWith<$Res> {
  _$CheckPinErrorStateCopyWithImpl(this._self, this._then);

  final CheckPinErrorState _self;
  final $Res Function(CheckPinErrorState) _then;

/// Create a copy of CheckPinCodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(CheckPinErrorState(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CheckPinResetState implements CheckPinCodeState {
   CheckPinResetState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckPinResetState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckPinCodeState.reset()';
}


}




// dart format on
