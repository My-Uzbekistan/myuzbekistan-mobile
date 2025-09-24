// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pincode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PinCodeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinCodeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinCodeEvent()';
}


}

/// @nodoc
class $PinCodeEventCopyWith<$Res>  {
$PinCodeEventCopyWith(PinCodeEvent _, $Res Function(PinCodeEvent) __);
}


/// Adds pattern-matching-related methods to [PinCodeEvent].
extension PinCodeEventPatterns on PinCodeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetPinCodeEvent value)?  setPinCode,TResult Function( _SetInitialEvent value)?  setInitial,TResult Function( _RemoveLastPin value)?  removeLast,TResult Function( _ClearPin value)?  clearPin,TResult Function( _ResetPin value)?  reset,TResult Function( _RemovePin value)?  removePin,TResult Function( _CreatePinEvent value)?  createPin,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetPinCodeEvent() when setPinCode != null:
return setPinCode(_that);case _SetInitialEvent() when setInitial != null:
return setInitial(_that);case _RemoveLastPin() when removeLast != null:
return removeLast(_that);case _ClearPin() when clearPin != null:
return clearPin(_that);case _ResetPin() when reset != null:
return reset(_that);case _RemovePin() when removePin != null:
return removePin(_that);case _CreatePinEvent() when createPin != null:
return createPin(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetPinCodeEvent value)  setPinCode,required TResult Function( _SetInitialEvent value)  setInitial,required TResult Function( _RemoveLastPin value)  removeLast,required TResult Function( _ClearPin value)  clearPin,required TResult Function( _ResetPin value)  reset,required TResult Function( _RemovePin value)  removePin,required TResult Function( _CreatePinEvent value)  createPin,}){
final _that = this;
switch (_that) {
case _SetPinCodeEvent():
return setPinCode(_that);case _SetInitialEvent():
return setInitial(_that);case _RemoveLastPin():
return removeLast(_that);case _ClearPin():
return clearPin(_that);case _ResetPin():
return reset(_that);case _RemovePin():
return removePin(_that);case _CreatePinEvent():
return createPin(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetPinCodeEvent value)?  setPinCode,TResult? Function( _SetInitialEvent value)?  setInitial,TResult? Function( _RemoveLastPin value)?  removeLast,TResult? Function( _ClearPin value)?  clearPin,TResult? Function( _ResetPin value)?  reset,TResult? Function( _RemovePin value)?  removePin,TResult? Function( _CreatePinEvent value)?  createPin,}){
final _that = this;
switch (_that) {
case _SetPinCodeEvent() when setPinCode != null:
return setPinCode(_that);case _SetInitialEvent() when setInitial != null:
return setInitial(_that);case _RemoveLastPin() when removeLast != null:
return removeLast(_that);case _ClearPin() when clearPin != null:
return clearPin(_that);case _ResetPin() when reset != null:
return reset(_that);case _RemovePin() when removePin != null:
return removePin(_that);case _CreatePinEvent() when createPin != null:
return createPin(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String pin)?  setPinCode,TResult Function( bool isChangePin)?  setInitial,TResult Function()?  removeLast,TResult Function()?  clearPin,TResult Function()?  reset,TResult Function()?  removePin,TResult Function( String pin)?  createPin,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetPinCodeEvent() when setPinCode != null:
return setPinCode(_that.pin);case _SetInitialEvent() when setInitial != null:
return setInitial(_that.isChangePin);case _RemoveLastPin() when removeLast != null:
return removeLast();case _ClearPin() when clearPin != null:
return clearPin();case _ResetPin() when reset != null:
return reset();case _RemovePin() when removePin != null:
return removePin();case _CreatePinEvent() when createPin != null:
return createPin(_that.pin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String pin)  setPinCode,required TResult Function( bool isChangePin)  setInitial,required TResult Function()  removeLast,required TResult Function()  clearPin,required TResult Function()  reset,required TResult Function()  removePin,required TResult Function( String pin)  createPin,}) {final _that = this;
switch (_that) {
case _SetPinCodeEvent():
return setPinCode(_that.pin);case _SetInitialEvent():
return setInitial(_that.isChangePin);case _RemoveLastPin():
return removeLast();case _ClearPin():
return clearPin();case _ResetPin():
return reset();case _RemovePin():
return removePin();case _CreatePinEvent():
return createPin(_that.pin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String pin)?  setPinCode,TResult? Function( bool isChangePin)?  setInitial,TResult? Function()?  removeLast,TResult? Function()?  clearPin,TResult? Function()?  reset,TResult? Function()?  removePin,TResult? Function( String pin)?  createPin,}) {final _that = this;
switch (_that) {
case _SetPinCodeEvent() when setPinCode != null:
return setPinCode(_that.pin);case _SetInitialEvent() when setInitial != null:
return setInitial(_that.isChangePin);case _RemoveLastPin() when removeLast != null:
return removeLast();case _ClearPin() when clearPin != null:
return clearPin();case _ResetPin() when reset != null:
return reset();case _RemovePin() when removePin != null:
return removePin();case _CreatePinEvent() when createPin != null:
return createPin(_that.pin);case _:
  return null;

}
}

}

/// @nodoc


class _SetPinCodeEvent implements PinCodeEvent {
   _SetPinCodeEvent({required this.pin});
  

 final  String pin;

/// Create a copy of PinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetPinCodeEventCopyWith<_SetPinCodeEvent> get copyWith => __$SetPinCodeEventCopyWithImpl<_SetPinCodeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetPinCodeEvent&&(identical(other.pin, pin) || other.pin == pin));
}


@override
int get hashCode => Object.hash(runtimeType,pin);

@override
String toString() {
  return 'PinCodeEvent.setPinCode(pin: $pin)';
}


}

/// @nodoc
abstract mixin class _$SetPinCodeEventCopyWith<$Res> implements $PinCodeEventCopyWith<$Res> {
  factory _$SetPinCodeEventCopyWith(_SetPinCodeEvent value, $Res Function(_SetPinCodeEvent) _then) = __$SetPinCodeEventCopyWithImpl;
@useResult
$Res call({
 String pin
});




}
/// @nodoc
class __$SetPinCodeEventCopyWithImpl<$Res>
    implements _$SetPinCodeEventCopyWith<$Res> {
  __$SetPinCodeEventCopyWithImpl(this._self, this._then);

  final _SetPinCodeEvent _self;
  final $Res Function(_SetPinCodeEvent) _then;

/// Create a copy of PinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pin = null,}) {
  return _then(_SetPinCodeEvent(
pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SetInitialEvent implements PinCodeEvent {
   _SetInitialEvent({this.isChangePin = false});
  

@JsonKey() final  bool isChangePin;

/// Create a copy of PinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetInitialEventCopyWith<_SetInitialEvent> get copyWith => __$SetInitialEventCopyWithImpl<_SetInitialEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetInitialEvent&&(identical(other.isChangePin, isChangePin) || other.isChangePin == isChangePin));
}


@override
int get hashCode => Object.hash(runtimeType,isChangePin);

@override
String toString() {
  return 'PinCodeEvent.setInitial(isChangePin: $isChangePin)';
}


}

/// @nodoc
abstract mixin class _$SetInitialEventCopyWith<$Res> implements $PinCodeEventCopyWith<$Res> {
  factory _$SetInitialEventCopyWith(_SetInitialEvent value, $Res Function(_SetInitialEvent) _then) = __$SetInitialEventCopyWithImpl;
@useResult
$Res call({
 bool isChangePin
});




}
/// @nodoc
class __$SetInitialEventCopyWithImpl<$Res>
    implements _$SetInitialEventCopyWith<$Res> {
  __$SetInitialEventCopyWithImpl(this._self, this._then);

  final _SetInitialEvent _self;
  final $Res Function(_SetInitialEvent) _then;

/// Create a copy of PinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isChangePin = null,}) {
  return _then(_SetInitialEvent(
isChangePin: null == isChangePin ? _self.isChangePin : isChangePin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _RemoveLastPin implements PinCodeEvent {
   _RemoveLastPin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveLastPin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinCodeEvent.removeLast()';
}


}




/// @nodoc


class _ClearPin implements PinCodeEvent {
   _ClearPin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearPin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinCodeEvent.clearPin()';
}


}




/// @nodoc


class _ResetPin implements PinCodeEvent {
   _ResetPin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinCodeEvent.reset()';
}


}




/// @nodoc


class _RemovePin implements PinCodeEvent {
   _RemovePin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemovePin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinCodeEvent.removePin()';
}


}




/// @nodoc


class _CreatePinEvent implements PinCodeEvent {
   _CreatePinEvent({required this.pin});
  

 final  String pin;

/// Create a copy of PinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePinEventCopyWith<_CreatePinEvent> get copyWith => __$CreatePinEventCopyWithImpl<_CreatePinEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePinEvent&&(identical(other.pin, pin) || other.pin == pin));
}


@override
int get hashCode => Object.hash(runtimeType,pin);

@override
String toString() {
  return 'PinCodeEvent.createPin(pin: $pin)';
}


}

/// @nodoc
abstract mixin class _$CreatePinEventCopyWith<$Res> implements $PinCodeEventCopyWith<$Res> {
  factory _$CreatePinEventCopyWith(_CreatePinEvent value, $Res Function(_CreatePinEvent) _then) = __$CreatePinEventCopyWithImpl;
@useResult
$Res call({
 String pin
});




}
/// @nodoc
class __$CreatePinEventCopyWithImpl<$Res>
    implements _$CreatePinEventCopyWith<$Res> {
  __$CreatePinEventCopyWithImpl(this._self, this._then);

  final _CreatePinEvent _self;
  final $Res Function(_CreatePinEvent) _then;

/// Create a copy of PinCodeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pin = null,}) {
  return _then(_CreatePinEvent(
pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PinCodeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinCodeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinCodeState()';
}


}

/// @nodoc
class $PinCodeStateCopyWith<$Res>  {
$PinCodeStateCopyWith(PinCodeState _, $Res Function(PinCodeState) __);
}


/// Adds pattern-matching-related methods to [PinCodeState].
extension PinCodeStatePatterns on PinCodeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PinEntryState value)?  entryState,TResult Function( PinConfirmState value)?  confirmState,TResult Function( PinSuccessState value)?  successState,TResult Function( PinLoadingState value)?  loadingState,TResult Function( PinRemovedState value)?  removedState,TResult Function( PinErrorState value)?  errorState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PinEntryState() when entryState != null:
return entryState(_that);case PinConfirmState() when confirmState != null:
return confirmState(_that);case PinSuccessState() when successState != null:
return successState(_that);case PinLoadingState() when loadingState != null:
return loadingState(_that);case PinRemovedState() when removedState != null:
return removedState(_that);case PinErrorState() when errorState != null:
return errorState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PinEntryState value)  entryState,required TResult Function( PinConfirmState value)  confirmState,required TResult Function( PinSuccessState value)  successState,required TResult Function( PinLoadingState value)  loadingState,required TResult Function( PinRemovedState value)  removedState,required TResult Function( PinErrorState value)  errorState,}){
final _that = this;
switch (_that) {
case PinEntryState():
return entryState(_that);case PinConfirmState():
return confirmState(_that);case PinSuccessState():
return successState(_that);case PinLoadingState():
return loadingState(_that);case PinRemovedState():
return removedState(_that);case PinErrorState():
return errorState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PinEntryState value)?  entryState,TResult? Function( PinConfirmState value)?  confirmState,TResult? Function( PinSuccessState value)?  successState,TResult? Function( PinLoadingState value)?  loadingState,TResult? Function( PinRemovedState value)?  removedState,TResult? Function( PinErrorState value)?  errorState,}){
final _that = this;
switch (_that) {
case PinEntryState() when entryState != null:
return entryState(_that);case PinConfirmState() when confirmState != null:
return confirmState(_that);case PinSuccessState() when successState != null:
return successState(_that);case PinLoadingState() when loadingState != null:
return loadingState(_that);case PinRemovedState() when removedState != null:
return removedState(_that);case PinErrorState() when errorState != null:
return errorState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String pinCode)?  entryState,TResult Function( String pinCode,  String confirmPinCode,  bool hasError)?  confirmState,TResult Function()?  successState,TResult Function()?  loadingState,TResult Function()?  removedState,TResult Function( String? message)?  errorState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PinEntryState() when entryState != null:
return entryState(_that.pinCode);case PinConfirmState() when confirmState != null:
return confirmState(_that.pinCode,_that.confirmPinCode,_that.hasError);case PinSuccessState() when successState != null:
return successState();case PinLoadingState() when loadingState != null:
return loadingState();case PinRemovedState() when removedState != null:
return removedState();case PinErrorState() when errorState != null:
return errorState(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String pinCode)  entryState,required TResult Function( String pinCode,  String confirmPinCode,  bool hasError)  confirmState,required TResult Function()  successState,required TResult Function()  loadingState,required TResult Function()  removedState,required TResult Function( String? message)  errorState,}) {final _that = this;
switch (_that) {
case PinEntryState():
return entryState(_that.pinCode);case PinConfirmState():
return confirmState(_that.pinCode,_that.confirmPinCode,_that.hasError);case PinSuccessState():
return successState();case PinLoadingState():
return loadingState();case PinRemovedState():
return removedState();case PinErrorState():
return errorState(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String pinCode)?  entryState,TResult? Function( String pinCode,  String confirmPinCode,  bool hasError)?  confirmState,TResult? Function()?  successState,TResult? Function()?  loadingState,TResult? Function()?  removedState,TResult? Function( String? message)?  errorState,}) {final _that = this;
switch (_that) {
case PinEntryState() when entryState != null:
return entryState(_that.pinCode);case PinConfirmState() when confirmState != null:
return confirmState(_that.pinCode,_that.confirmPinCode,_that.hasError);case PinSuccessState() when successState != null:
return successState();case PinLoadingState() when loadingState != null:
return loadingState();case PinRemovedState() when removedState != null:
return removedState();case PinErrorState() when errorState != null:
return errorState(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PinEntryState implements PinCodeState {
   PinEntryState(this.pinCode);
  

 final  String pinCode;

/// Create a copy of PinCodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinEntryStateCopyWith<PinEntryState> get copyWith => _$PinEntryStateCopyWithImpl<PinEntryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinEntryState&&(identical(other.pinCode, pinCode) || other.pinCode == pinCode));
}


@override
int get hashCode => Object.hash(runtimeType,pinCode);

@override
String toString() {
  return 'PinCodeState.entryState(pinCode: $pinCode)';
}


}

/// @nodoc
abstract mixin class $PinEntryStateCopyWith<$Res> implements $PinCodeStateCopyWith<$Res> {
  factory $PinEntryStateCopyWith(PinEntryState value, $Res Function(PinEntryState) _then) = _$PinEntryStateCopyWithImpl;
@useResult
$Res call({
 String pinCode
});




}
/// @nodoc
class _$PinEntryStateCopyWithImpl<$Res>
    implements $PinEntryStateCopyWith<$Res> {
  _$PinEntryStateCopyWithImpl(this._self, this._then);

  final PinEntryState _self;
  final $Res Function(PinEntryState) _then;

/// Create a copy of PinCodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pinCode = null,}) {
  return _then(PinEntryState(
null == pinCode ? _self.pinCode : pinCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PinConfirmState implements PinCodeState {
   PinConfirmState({this.pinCode = "", this.confirmPinCode = "", this.hasError = false});
  

@JsonKey() final  String pinCode;
@JsonKey() final  String confirmPinCode;
@JsonKey() final  bool hasError;

/// Create a copy of PinCodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinConfirmStateCopyWith<PinConfirmState> get copyWith => _$PinConfirmStateCopyWithImpl<PinConfirmState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinConfirmState&&(identical(other.pinCode, pinCode) || other.pinCode == pinCode)&&(identical(other.confirmPinCode, confirmPinCode) || other.confirmPinCode == confirmPinCode)&&(identical(other.hasError, hasError) || other.hasError == hasError));
}


@override
int get hashCode => Object.hash(runtimeType,pinCode,confirmPinCode,hasError);

@override
String toString() {
  return 'PinCodeState.confirmState(pinCode: $pinCode, confirmPinCode: $confirmPinCode, hasError: $hasError)';
}


}

/// @nodoc
abstract mixin class $PinConfirmStateCopyWith<$Res> implements $PinCodeStateCopyWith<$Res> {
  factory $PinConfirmStateCopyWith(PinConfirmState value, $Res Function(PinConfirmState) _then) = _$PinConfirmStateCopyWithImpl;
@useResult
$Res call({
 String pinCode, String confirmPinCode, bool hasError
});




}
/// @nodoc
class _$PinConfirmStateCopyWithImpl<$Res>
    implements $PinConfirmStateCopyWith<$Res> {
  _$PinConfirmStateCopyWithImpl(this._self, this._then);

  final PinConfirmState _self;
  final $Res Function(PinConfirmState) _then;

/// Create a copy of PinCodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pinCode = null,Object? confirmPinCode = null,Object? hasError = null,}) {
  return _then(PinConfirmState(
pinCode: null == pinCode ? _self.pinCode : pinCode // ignore: cast_nullable_to_non_nullable
as String,confirmPinCode: null == confirmPinCode ? _self.confirmPinCode : confirmPinCode // ignore: cast_nullable_to_non_nullable
as String,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class PinSuccessState implements PinCodeState {
   PinSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinCodeState.successState()';
}


}




/// @nodoc


class PinLoadingState implements PinCodeState {
   PinLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinCodeState.loadingState()';
}


}




/// @nodoc


class PinRemovedState implements PinCodeState {
   PinRemovedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinRemovedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PinCodeState.removedState()';
}


}




/// @nodoc


class PinErrorState implements PinCodeState {
   PinErrorState({this.message});
  

 final  String? message;

/// Create a copy of PinCodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinErrorStateCopyWith<PinErrorState> get copyWith => _$PinErrorStateCopyWithImpl<PinErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PinCodeState.errorState(message: $message)';
}


}

/// @nodoc
abstract mixin class $PinErrorStateCopyWith<$Res> implements $PinCodeStateCopyWith<$Res> {
  factory $PinErrorStateCopyWith(PinErrorState value, $Res Function(PinErrorState) _then) = _$PinErrorStateCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$PinErrorStateCopyWithImpl<$Res>
    implements $PinErrorStateCopyWith<$Res> {
  _$PinErrorStateCopyWithImpl(this._self, this._then);

  final PinErrorState _self;
  final $Res Function(PinErrorState) _then;

/// Create a copy of PinCodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(PinErrorState(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
