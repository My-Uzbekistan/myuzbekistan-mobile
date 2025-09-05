// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerificationEvent()';
}


}

/// @nodoc
class $VerificationEventCopyWith<$Res>  {
$VerificationEventCopyWith(VerificationEvent _, $Res Function(VerificationEvent) __);
}


/// Adds pattern-matching-related methods to [VerificationEvent].
extension VerificationEventPatterns on VerificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _VerificationSetCodeEvent value)?  setCodeEvent,TResult Function( _VerificationSetCardIdEvent value)?  setCardCardId,TResult Function( _VerificationResendEvent value)?  resendEvent,TResult Function( _VerificationVerifyEvent value)?  verify,TResult Function( _VerificationUpdateTimerEvent value)?  updateTimer,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerificationSetCodeEvent() when setCodeEvent != null:
return setCodeEvent(_that);case _VerificationSetCardIdEvent() when setCardCardId != null:
return setCardCardId(_that);case _VerificationResendEvent() when resendEvent != null:
return resendEvent(_that);case _VerificationVerifyEvent() when verify != null:
return verify(_that);case _VerificationUpdateTimerEvent() when updateTimer != null:
return updateTimer(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _VerificationSetCodeEvent value)  setCodeEvent,required TResult Function( _VerificationSetCardIdEvent value)  setCardCardId,required TResult Function( _VerificationResendEvent value)  resendEvent,required TResult Function( _VerificationVerifyEvent value)  verify,required TResult Function( _VerificationUpdateTimerEvent value)  updateTimer,}){
final _that = this;
switch (_that) {
case _VerificationSetCodeEvent():
return setCodeEvent(_that);case _VerificationSetCardIdEvent():
return setCardCardId(_that);case _VerificationResendEvent():
return resendEvent(_that);case _VerificationVerifyEvent():
return verify(_that);case _VerificationUpdateTimerEvent():
return updateTimer(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _VerificationSetCodeEvent value)?  setCodeEvent,TResult? Function( _VerificationSetCardIdEvent value)?  setCardCardId,TResult? Function( _VerificationResendEvent value)?  resendEvent,TResult? Function( _VerificationVerifyEvent value)?  verify,TResult? Function( _VerificationUpdateTimerEvent value)?  updateTimer,}){
final _that = this;
switch (_that) {
case _VerificationSetCodeEvent() when setCodeEvent != null:
return setCodeEvent(_that);case _VerificationSetCardIdEvent() when setCardCardId != null:
return setCardCardId(_that);case _VerificationResendEvent() when resendEvent != null:
return resendEvent(_that);case _VerificationVerifyEvent() when verify != null:
return verify(_that);case _VerificationUpdateTimerEvent() when updateTimer != null:
return updateTimer(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String code)?  setCodeEvent,TResult Function( String cardId)?  setCardCardId,TResult Function()?  resendEvent,TResult Function()?  verify,TResult Function( String timer,  bool isRetry)?  updateTimer,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerificationSetCodeEvent() when setCodeEvent != null:
return setCodeEvent(_that.code);case _VerificationSetCardIdEvent() when setCardCardId != null:
return setCardCardId(_that.cardId);case _VerificationResendEvent() when resendEvent != null:
return resendEvent();case _VerificationVerifyEvent() when verify != null:
return verify();case _VerificationUpdateTimerEvent() when updateTimer != null:
return updateTimer(_that.timer,_that.isRetry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String code)  setCodeEvent,required TResult Function( String cardId)  setCardCardId,required TResult Function()  resendEvent,required TResult Function()  verify,required TResult Function( String timer,  bool isRetry)  updateTimer,}) {final _that = this;
switch (_that) {
case _VerificationSetCodeEvent():
return setCodeEvent(_that.code);case _VerificationSetCardIdEvent():
return setCardCardId(_that.cardId);case _VerificationResendEvent():
return resendEvent();case _VerificationVerifyEvent():
return verify();case _VerificationUpdateTimerEvent():
return updateTimer(_that.timer,_that.isRetry);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String code)?  setCodeEvent,TResult? Function( String cardId)?  setCardCardId,TResult? Function()?  resendEvent,TResult? Function()?  verify,TResult? Function( String timer,  bool isRetry)?  updateTimer,}) {final _that = this;
switch (_that) {
case _VerificationSetCodeEvent() when setCodeEvent != null:
return setCodeEvent(_that.code);case _VerificationSetCardIdEvent() when setCardCardId != null:
return setCardCardId(_that.cardId);case _VerificationResendEvent() when resendEvent != null:
return resendEvent();case _VerificationVerifyEvent() when verify != null:
return verify();case _VerificationUpdateTimerEvent() when updateTimer != null:
return updateTimer(_that.timer,_that.isRetry);case _:
  return null;

}
}

}

/// @nodoc


class _VerificationSetCodeEvent implements VerificationEvent {
  const _VerificationSetCodeEvent(this.code);
  

 final  String code;

/// Create a copy of VerificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerificationSetCodeEventCopyWith<_VerificationSetCodeEvent> get copyWith => __$VerificationSetCodeEventCopyWithImpl<_VerificationSetCodeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerificationSetCodeEvent&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString() {
  return 'VerificationEvent.setCodeEvent(code: $code)';
}


}

/// @nodoc
abstract mixin class _$VerificationSetCodeEventCopyWith<$Res> implements $VerificationEventCopyWith<$Res> {
  factory _$VerificationSetCodeEventCopyWith(_VerificationSetCodeEvent value, $Res Function(_VerificationSetCodeEvent) _then) = __$VerificationSetCodeEventCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class __$VerificationSetCodeEventCopyWithImpl<$Res>
    implements _$VerificationSetCodeEventCopyWith<$Res> {
  __$VerificationSetCodeEventCopyWithImpl(this._self, this._then);

  final _VerificationSetCodeEvent _self;
  final $Res Function(_VerificationSetCodeEvent) _then;

/// Create a copy of VerificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(_VerificationSetCodeEvent(
null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _VerificationSetCardIdEvent implements VerificationEvent {
  const _VerificationSetCardIdEvent(this.cardId);
  

 final  String cardId;

/// Create a copy of VerificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerificationSetCardIdEventCopyWith<_VerificationSetCardIdEvent> get copyWith => __$VerificationSetCardIdEventCopyWithImpl<_VerificationSetCardIdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerificationSetCardIdEvent&&(identical(other.cardId, cardId) || other.cardId == cardId));
}


@override
int get hashCode => Object.hash(runtimeType,cardId);

@override
String toString() {
  return 'VerificationEvent.setCardCardId(cardId: $cardId)';
}


}

/// @nodoc
abstract mixin class _$VerificationSetCardIdEventCopyWith<$Res> implements $VerificationEventCopyWith<$Res> {
  factory _$VerificationSetCardIdEventCopyWith(_VerificationSetCardIdEvent value, $Res Function(_VerificationSetCardIdEvent) _then) = __$VerificationSetCardIdEventCopyWithImpl;
@useResult
$Res call({
 String cardId
});




}
/// @nodoc
class __$VerificationSetCardIdEventCopyWithImpl<$Res>
    implements _$VerificationSetCardIdEventCopyWith<$Res> {
  __$VerificationSetCardIdEventCopyWithImpl(this._self, this._then);

  final _VerificationSetCardIdEvent _self;
  final $Res Function(_VerificationSetCardIdEvent) _then;

/// Create a copy of VerificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cardId = null,}) {
  return _then(_VerificationSetCardIdEvent(
null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _VerificationResendEvent implements VerificationEvent {
  const _VerificationResendEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerificationResendEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerificationEvent.resendEvent()';
}


}




/// @nodoc


class _VerificationVerifyEvent implements VerificationEvent {
  const _VerificationVerifyEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerificationVerifyEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerificationEvent.verify()';
}


}




/// @nodoc


class _VerificationUpdateTimerEvent implements VerificationEvent {
  const _VerificationUpdateTimerEvent(this.timer, {this.isRetry = false});
  

 final  String timer;
@JsonKey() final  bool isRetry;

/// Create a copy of VerificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerificationUpdateTimerEventCopyWith<_VerificationUpdateTimerEvent> get copyWith => __$VerificationUpdateTimerEventCopyWithImpl<_VerificationUpdateTimerEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerificationUpdateTimerEvent&&(identical(other.timer, timer) || other.timer == timer)&&(identical(other.isRetry, isRetry) || other.isRetry == isRetry));
}


@override
int get hashCode => Object.hash(runtimeType,timer,isRetry);

@override
String toString() {
  return 'VerificationEvent.updateTimer(timer: $timer, isRetry: $isRetry)';
}


}

/// @nodoc
abstract mixin class _$VerificationUpdateTimerEventCopyWith<$Res> implements $VerificationEventCopyWith<$Res> {
  factory _$VerificationUpdateTimerEventCopyWith(_VerificationUpdateTimerEvent value, $Res Function(_VerificationUpdateTimerEvent) _then) = __$VerificationUpdateTimerEventCopyWithImpl;
@useResult
$Res call({
 String timer, bool isRetry
});




}
/// @nodoc
class __$VerificationUpdateTimerEventCopyWithImpl<$Res>
    implements _$VerificationUpdateTimerEventCopyWith<$Res> {
  __$VerificationUpdateTimerEventCopyWithImpl(this._self, this._then);

  final _VerificationUpdateTimerEvent _self;
  final $Res Function(_VerificationUpdateTimerEvent) _then;

/// Create a copy of VerificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? timer = null,Object? isRetry = null,}) {
  return _then(_VerificationUpdateTimerEvent(
null == timer ? _self.timer : timer // ignore: cast_nullable_to_non_nullable
as String,isRetry: null == isRetry ? _self.isRetry : isRetry // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$VerificationState {

 String get code; String get cardId; bool get isLoading; bool get isRetry; String get timer; bool get hasError; VerificationNavState? get navState;
/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationStateCopyWith<VerificationState> get copyWith => _$VerificationStateCopyWithImpl<VerificationState>(this as VerificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationState&&(identical(other.code, code) || other.code == code)&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isRetry, isRetry) || other.isRetry == isRetry)&&(identical(other.timer, timer) || other.timer == timer)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.navState, navState) || other.navState == navState));
}


@override
int get hashCode => Object.hash(runtimeType,code,cardId,isLoading,isRetry,timer,hasError,navState);

@override
String toString() {
  return 'VerificationState(code: $code, cardId: $cardId, isLoading: $isLoading, isRetry: $isRetry, timer: $timer, hasError: $hasError, navState: $navState)';
}


}

/// @nodoc
abstract mixin class $VerificationStateCopyWith<$Res>  {
  factory $VerificationStateCopyWith(VerificationState value, $Res Function(VerificationState) _then) = _$VerificationStateCopyWithImpl;
@useResult
$Res call({
 String code, String cardId, bool isLoading, bool isRetry, String timer, bool hasError, VerificationNavState? navState
});


$VerificationNavStateCopyWith<$Res>? get navState;

}
/// @nodoc
class _$VerificationStateCopyWithImpl<$Res>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._self, this._then);

  final VerificationState _self;
  final $Res Function(VerificationState) _then;

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? cardId = null,Object? isLoading = null,Object? isRetry = null,Object? timer = null,Object? hasError = null,Object? navState = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isRetry: null == isRetry ? _self.isRetry : isRetry // ignore: cast_nullable_to_non_nullable
as bool,timer: null == timer ? _self.timer : timer // ignore: cast_nullable_to_non_nullable
as String,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,navState: freezed == navState ? _self.navState : navState // ignore: cast_nullable_to_non_nullable
as VerificationNavState?,
  ));
}
/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerificationNavStateCopyWith<$Res>? get navState {
    if (_self.navState == null) {
    return null;
  }

  return $VerificationNavStateCopyWith<$Res>(_self.navState!, (value) {
    return _then(_self.copyWith(navState: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerificationState].
extension VerificationStatePatterns on VerificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerificationState value)  $default,){
final _that = this;
switch (_that) {
case _VerificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerificationState value)?  $default,){
final _that = this;
switch (_that) {
case _VerificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String cardId,  bool isLoading,  bool isRetry,  String timer,  bool hasError,  VerificationNavState? navState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerificationState() when $default != null:
return $default(_that.code,_that.cardId,_that.isLoading,_that.isRetry,_that.timer,_that.hasError,_that.navState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String cardId,  bool isLoading,  bool isRetry,  String timer,  bool hasError,  VerificationNavState? navState)  $default,) {final _that = this;
switch (_that) {
case _VerificationState():
return $default(_that.code,_that.cardId,_that.isLoading,_that.isRetry,_that.timer,_that.hasError,_that.navState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String cardId,  bool isLoading,  bool isRetry,  String timer,  bool hasError,  VerificationNavState? navState)?  $default,) {final _that = this;
switch (_that) {
case _VerificationState() when $default != null:
return $default(_that.code,_that.cardId,_that.isLoading,_that.isRetry,_that.timer,_that.hasError,_that.navState);case _:
  return null;

}
}

}

/// @nodoc


class _VerificationState extends VerificationState {
  const _VerificationState({this.code = "", this.cardId = "", this.isLoading = false, this.isRetry = false, this.timer = "", this.hasError = false, this.navState}): super._();
  

@override@JsonKey() final  String code;
@override@JsonKey() final  String cardId;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isRetry;
@override@JsonKey() final  String timer;
@override@JsonKey() final  bool hasError;
@override final  VerificationNavState? navState;

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerificationStateCopyWith<_VerificationState> get copyWith => __$VerificationStateCopyWithImpl<_VerificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerificationState&&(identical(other.code, code) || other.code == code)&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isRetry, isRetry) || other.isRetry == isRetry)&&(identical(other.timer, timer) || other.timer == timer)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.navState, navState) || other.navState == navState));
}


@override
int get hashCode => Object.hash(runtimeType,code,cardId,isLoading,isRetry,timer,hasError,navState);

@override
String toString() {
  return 'VerificationState(code: $code, cardId: $cardId, isLoading: $isLoading, isRetry: $isRetry, timer: $timer, hasError: $hasError, navState: $navState)';
}


}

/// @nodoc
abstract mixin class _$VerificationStateCopyWith<$Res> implements $VerificationStateCopyWith<$Res> {
  factory _$VerificationStateCopyWith(_VerificationState value, $Res Function(_VerificationState) _then) = __$VerificationStateCopyWithImpl;
@override @useResult
$Res call({
 String code, String cardId, bool isLoading, bool isRetry, String timer, bool hasError, VerificationNavState? navState
});


@override $VerificationNavStateCopyWith<$Res>? get navState;

}
/// @nodoc
class __$VerificationStateCopyWithImpl<$Res>
    implements _$VerificationStateCopyWith<$Res> {
  __$VerificationStateCopyWithImpl(this._self, this._then);

  final _VerificationState _self;
  final $Res Function(_VerificationState) _then;

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? cardId = null,Object? isLoading = null,Object? isRetry = null,Object? timer = null,Object? hasError = null,Object? navState = freezed,}) {
  return _then(_VerificationState(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isRetry: null == isRetry ? _self.isRetry : isRetry // ignore: cast_nullable_to_non_nullable
as bool,timer: null == timer ? _self.timer : timer // ignore: cast_nullable_to_non_nullable
as String,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,navState: freezed == navState ? _self.navState : navState // ignore: cast_nullable_to_non_nullable
as VerificationNavState?,
  ));
}

/// Create a copy of VerificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerificationNavStateCopyWith<$Res>? get navState {
    if (_self.navState == null) {
    return null;
  }

  return $VerificationNavStateCopyWith<$Res>(_self.navState!, (value) {
    return _then(_self.copyWith(navState: value));
  });
}
}

/// @nodoc
mixin _$VerificationNavState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationNavState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerificationNavState()';
}


}

/// @nodoc
class $VerificationNavStateCopyWith<$Res>  {
$VerificationNavStateCopyWith(VerificationNavState _, $Res Function(VerificationNavState) __);
}


/// Adds pattern-matching-related methods to [VerificationNavState].
extension VerificationNavStatePatterns on VerificationNavState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VerificationNavStateComplete value)?  complete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VerificationNavStateComplete() when complete != null:
return complete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VerificationNavStateComplete value)  complete,}){
final _that = this;
switch (_that) {
case VerificationNavStateComplete():
return complete(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VerificationNavStateComplete value)?  complete,}){
final _that = this;
switch (_that) {
case VerificationNavStateComplete() when complete != null:
return complete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  complete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VerificationNavStateComplete() when complete != null:
return complete();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  complete,}) {final _that = this;
switch (_that) {
case VerificationNavStateComplete():
return complete();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  complete,}) {final _that = this;
switch (_that) {
case VerificationNavStateComplete() when complete != null:
return complete();case _:
  return null;

}
}

}

/// @nodoc


class VerificationNavStateComplete implements VerificationNavState {
  const VerificationNavStateComplete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationNavStateComplete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerificationNavState.complete()';
}


}




// dart format on
