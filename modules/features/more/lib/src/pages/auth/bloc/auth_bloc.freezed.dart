// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AuthGoogleEvent value)?  authByGoogle,TResult Function( _AuthAppleEvent value)?  authByApple,TResult Function( _AuthLogOutEvent value)?  logOutEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthGoogleEvent() when authByGoogle != null:
return authByGoogle(_that);case _AuthAppleEvent() when authByApple != null:
return authByApple(_that);case _AuthLogOutEvent() when logOutEvent != null:
return logOutEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AuthGoogleEvent value)  authByGoogle,required TResult Function( _AuthAppleEvent value)  authByApple,required TResult Function( _AuthLogOutEvent value)  logOutEvent,}){
final _that = this;
switch (_that) {
case _AuthGoogleEvent():
return authByGoogle(_that);case _AuthAppleEvent():
return authByApple(_that);case _AuthLogOutEvent():
return logOutEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AuthGoogleEvent value)?  authByGoogle,TResult? Function( _AuthAppleEvent value)?  authByApple,TResult? Function( _AuthLogOutEvent value)?  logOutEvent,}){
final _that = this;
switch (_that) {
case _AuthGoogleEvent() when authByGoogle != null:
return authByGoogle(_that);case _AuthAppleEvent() when authByApple != null:
return authByApple(_that);case _AuthLogOutEvent() when logOutEvent != null:
return logOutEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  authByGoogle,TResult Function()?  authByApple,TResult Function()?  logOutEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthGoogleEvent() when authByGoogle != null:
return authByGoogle();case _AuthAppleEvent() when authByApple != null:
return authByApple();case _AuthLogOutEvent() when logOutEvent != null:
return logOutEvent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  authByGoogle,required TResult Function()  authByApple,required TResult Function()  logOutEvent,}) {final _that = this;
switch (_that) {
case _AuthGoogleEvent():
return authByGoogle();case _AuthAppleEvent():
return authByApple();case _AuthLogOutEvent():
return logOutEvent();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  authByGoogle,TResult? Function()?  authByApple,TResult? Function()?  logOutEvent,}) {final _that = this;
switch (_that) {
case _AuthGoogleEvent() when authByGoogle != null:
return authByGoogle();case _AuthAppleEvent() when authByApple != null:
return authByApple();case _AuthLogOutEvent() when logOutEvent != null:
return logOutEvent();case _:
  return null;

}
}

}

/// @nodoc


class _AuthGoogleEvent implements AuthEvent {
   _AuthGoogleEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthGoogleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.authByGoogle()';
}


}




/// @nodoc


class _AuthAppleEvent implements AuthEvent {
   _AuthAppleEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthAppleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.authByApple()';
}


}




/// @nodoc


class _AuthLogOutEvent implements AuthEvent {
   _AuthLogOutEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthLogOutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logOutEvent()';
}


}




/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DefaultState value)?  defaultState,TResult Function( AuthGoogleLoadingState value)?  googleLoading,TResult Function( AuthAppleLoadingState value)?  appleLoading,TResult Function( AuthSuccessState value)?  authSuccessState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DefaultState() when defaultState != null:
return defaultState(_that);case AuthGoogleLoadingState() when googleLoading != null:
return googleLoading(_that);case AuthAppleLoadingState() when appleLoading != null:
return appleLoading(_that);case AuthSuccessState() when authSuccessState != null:
return authSuccessState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DefaultState value)  defaultState,required TResult Function( AuthGoogleLoadingState value)  googleLoading,required TResult Function( AuthAppleLoadingState value)  appleLoading,required TResult Function( AuthSuccessState value)  authSuccessState,}){
final _that = this;
switch (_that) {
case DefaultState():
return defaultState(_that);case AuthGoogleLoadingState():
return googleLoading(_that);case AuthAppleLoadingState():
return appleLoading(_that);case AuthSuccessState():
return authSuccessState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DefaultState value)?  defaultState,TResult? Function( AuthGoogleLoadingState value)?  googleLoading,TResult? Function( AuthAppleLoadingState value)?  appleLoading,TResult? Function( AuthSuccessState value)?  authSuccessState,}){
final _that = this;
switch (_that) {
case DefaultState() when defaultState != null:
return defaultState(_that);case AuthGoogleLoadingState() when googleLoading != null:
return googleLoading(_that);case AuthAppleLoadingState() when appleLoading != null:
return appleLoading(_that);case AuthSuccessState() when authSuccessState != null:
return authSuccessState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  defaultState,TResult Function()?  googleLoading,TResult Function()?  appleLoading,TResult Function( bool hasPin)?  authSuccessState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DefaultState() when defaultState != null:
return defaultState();case AuthGoogleLoadingState() when googleLoading != null:
return googleLoading();case AuthAppleLoadingState() when appleLoading != null:
return appleLoading();case AuthSuccessState() when authSuccessState != null:
return authSuccessState(_that.hasPin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  defaultState,required TResult Function()  googleLoading,required TResult Function()  appleLoading,required TResult Function( bool hasPin)  authSuccessState,}) {final _that = this;
switch (_that) {
case DefaultState():
return defaultState();case AuthGoogleLoadingState():
return googleLoading();case AuthAppleLoadingState():
return appleLoading();case AuthSuccessState():
return authSuccessState(_that.hasPin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  defaultState,TResult? Function()?  googleLoading,TResult? Function()?  appleLoading,TResult? Function( bool hasPin)?  authSuccessState,}) {final _that = this;
switch (_that) {
case DefaultState() when defaultState != null:
return defaultState();case AuthGoogleLoadingState() when googleLoading != null:
return googleLoading();case AuthAppleLoadingState() when appleLoading != null:
return appleLoading();case AuthSuccessState() when authSuccessState != null:
return authSuccessState(_that.hasPin);case _:
  return null;

}
}

}

/// @nodoc


class DefaultState implements AuthState {
   DefaultState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.defaultState()';
}


}




/// @nodoc


class AuthGoogleLoadingState implements AuthState {
   AuthGoogleLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthGoogleLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.googleLoading()';
}


}




/// @nodoc


class AuthAppleLoadingState implements AuthState {
   AuthAppleLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthAppleLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.appleLoading()';
}


}




/// @nodoc


class AuthSuccessState implements AuthState {
   AuthSuccessState({this.hasPin = false});
  

@JsonKey() final  bool hasPin;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSuccessStateCopyWith<AuthSuccessState> get copyWith => _$AuthSuccessStateCopyWithImpl<AuthSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSuccessState&&(identical(other.hasPin, hasPin) || other.hasPin == hasPin));
}


@override
int get hashCode => Object.hash(runtimeType,hasPin);

@override
String toString() {
  return 'AuthState.authSuccessState(hasPin: $hasPin)';
}


}

/// @nodoc
abstract mixin class $AuthSuccessStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthSuccessStateCopyWith(AuthSuccessState value, $Res Function(AuthSuccessState) _then) = _$AuthSuccessStateCopyWithImpl;
@useResult
$Res call({
 bool hasPin
});




}
/// @nodoc
class _$AuthSuccessStateCopyWithImpl<$Res>
    implements $AuthSuccessStateCopyWith<$Res> {
  _$AuthSuccessStateCopyWithImpl(this._self, this._then);

  final AuthSuccessState _self;
  final $Res Function(AuthSuccessState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hasPin = null,}) {
  return _then(AuthSuccessState(
hasPin: null == hasPin ? _self.hasPin : hasPin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
