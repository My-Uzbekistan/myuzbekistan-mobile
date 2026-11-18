// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devices_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DevicesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DevicesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DevicesEvent()';
}


}

/// @nodoc
class $DevicesEventCopyWith<$Res>  {
$DevicesEventCopyWith(DevicesEvent _, $Res Function(DevicesEvent) __);
}


/// Adds pattern-matching-related methods to [DevicesEvent].
extension DevicesEventPatterns on DevicesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DevicesFetch value)?  fetch,TResult Function( _DevicesTerminateSession value)?  terminateSession,TResult Function( _DevicesTerminateOthers value)?  terminateOthers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DevicesFetch() when fetch != null:
return fetch(_that);case _DevicesTerminateSession() when terminateSession != null:
return terminateSession(_that);case _DevicesTerminateOthers() when terminateOthers != null:
return terminateOthers(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DevicesFetch value)  fetch,required TResult Function( _DevicesTerminateSession value)  terminateSession,required TResult Function( _DevicesTerminateOthers value)  terminateOthers,}){
final _that = this;
switch (_that) {
case _DevicesFetch():
return fetch(_that);case _DevicesTerminateSession():
return terminateSession(_that);case _DevicesTerminateOthers():
return terminateOthers(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DevicesFetch value)?  fetch,TResult? Function( _DevicesTerminateSession value)?  terminateSession,TResult? Function( _DevicesTerminateOthers value)?  terminateOthers,}){
final _that = this;
switch (_that) {
case _DevicesFetch() when fetch != null:
return fetch(_that);case _DevicesTerminateSession() when terminateSession != null:
return terminateSession(_that);case _DevicesTerminateOthers() when terminateOthers != null:
return terminateOthers(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,TResult Function( int sessionId)?  terminateSession,TResult Function()?  terminateOthers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DevicesFetch() when fetch != null:
return fetch();case _DevicesTerminateSession() when terminateSession != null:
return terminateSession(_that.sessionId);case _DevicesTerminateOthers() when terminateOthers != null:
return terminateOthers();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,required TResult Function( int sessionId)  terminateSession,required TResult Function()  terminateOthers,}) {final _that = this;
switch (_that) {
case _DevicesFetch():
return fetch();case _DevicesTerminateSession():
return terminateSession(_that.sessionId);case _DevicesTerminateOthers():
return terminateOthers();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,TResult? Function( int sessionId)?  terminateSession,TResult? Function()?  terminateOthers,}) {final _that = this;
switch (_that) {
case _DevicesFetch() when fetch != null:
return fetch();case _DevicesTerminateSession() when terminateSession != null:
return terminateSession(_that.sessionId);case _DevicesTerminateOthers() when terminateOthers != null:
return terminateOthers();case _:
  return null;

}
}

}

/// @nodoc


class _DevicesFetch implements DevicesEvent {
   _DevicesFetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DevicesFetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DevicesEvent.fetch()';
}


}




/// @nodoc


class _DevicesTerminateSession implements DevicesEvent {
   _DevicesTerminateSession({required this.sessionId});
  

 final  int sessionId;

/// Create a copy of DevicesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DevicesTerminateSessionCopyWith<_DevicesTerminateSession> get copyWith => __$DevicesTerminateSessionCopyWithImpl<_DevicesTerminateSession>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DevicesTerminateSession&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'DevicesEvent.terminateSession(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$DevicesTerminateSessionCopyWith<$Res> implements $DevicesEventCopyWith<$Res> {
  factory _$DevicesTerminateSessionCopyWith(_DevicesTerminateSession value, $Res Function(_DevicesTerminateSession) _then) = __$DevicesTerminateSessionCopyWithImpl;
@useResult
$Res call({
 int sessionId
});




}
/// @nodoc
class __$DevicesTerminateSessionCopyWithImpl<$Res>
    implements _$DevicesTerminateSessionCopyWith<$Res> {
  __$DevicesTerminateSessionCopyWithImpl(this._self, this._then);

  final _DevicesTerminateSession _self;
  final $Res Function(_DevicesTerminateSession) _then;

/// Create a copy of DevicesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sessionId = null,}) {
  return _then(_DevicesTerminateSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _DevicesTerminateOthers implements DevicesEvent {
   _DevicesTerminateOthers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DevicesTerminateOthers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DevicesEvent.terminateOthers()';
}


}




/// @nodoc
mixin _$DevicesState {

 List<DeviceSession> get sessions; bool get isLoading; bool get isTerminatingOthers; int? get terminatingId; String? get errorMessage;
/// Create a copy of DevicesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DevicesStateCopyWith<DevicesState> get copyWith => _$DevicesStateCopyWithImpl<DevicesState>(this as DevicesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DevicesState&&const DeepCollectionEquality().equals(other.sessions, sessions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isTerminatingOthers, isTerminatingOthers) || other.isTerminatingOthers == isTerminatingOthers)&&(identical(other.terminatingId, terminatingId) || other.terminatingId == terminatingId)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sessions),isLoading,isTerminatingOthers,terminatingId,errorMessage);

@override
String toString() {
  return 'DevicesState(sessions: $sessions, isLoading: $isLoading, isTerminatingOthers: $isTerminatingOthers, terminatingId: $terminatingId, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $DevicesStateCopyWith<$Res>  {
  factory $DevicesStateCopyWith(DevicesState value, $Res Function(DevicesState) _then) = _$DevicesStateCopyWithImpl;
@useResult
$Res call({
 List<DeviceSession> sessions, bool isLoading, bool isTerminatingOthers, int? terminatingId, String? errorMessage
});




}
/// @nodoc
class _$DevicesStateCopyWithImpl<$Res>
    implements $DevicesStateCopyWith<$Res> {
  _$DevicesStateCopyWithImpl(this._self, this._then);

  final DevicesState _self;
  final $Res Function(DevicesState) _then;

/// Create a copy of DevicesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessions = null,Object? isLoading = null,Object? isTerminatingOthers = null,Object? terminatingId = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
sessions: null == sessions ? _self.sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<DeviceSession>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isTerminatingOthers: null == isTerminatingOthers ? _self.isTerminatingOthers : isTerminatingOthers // ignore: cast_nullable_to_non_nullable
as bool,terminatingId: freezed == terminatingId ? _self.terminatingId : terminatingId // ignore: cast_nullable_to_non_nullable
as int?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DevicesState].
extension DevicesStatePatterns on DevicesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DevicesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DevicesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DevicesState value)  $default,){
final _that = this;
switch (_that) {
case _DevicesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DevicesState value)?  $default,){
final _that = this;
switch (_that) {
case _DevicesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DeviceSession> sessions,  bool isLoading,  bool isTerminatingOthers,  int? terminatingId,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DevicesState() when $default != null:
return $default(_that.sessions,_that.isLoading,_that.isTerminatingOthers,_that.terminatingId,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DeviceSession> sessions,  bool isLoading,  bool isTerminatingOthers,  int? terminatingId,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _DevicesState():
return $default(_that.sessions,_that.isLoading,_that.isTerminatingOthers,_that.terminatingId,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DeviceSession> sessions,  bool isLoading,  bool isTerminatingOthers,  int? terminatingId,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _DevicesState() when $default != null:
return $default(_that.sessions,_that.isLoading,_that.isTerminatingOthers,_that.terminatingId,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _DevicesState extends DevicesState {
  const _DevicesState({final  List<DeviceSession> sessions = const [], this.isLoading = false, this.isTerminatingOthers = false, this.terminatingId, this.errorMessage}): _sessions = sessions,super._();
  

 final  List<DeviceSession> _sessions;
@override@JsonKey() List<DeviceSession> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isTerminatingOthers;
@override final  int? terminatingId;
@override final  String? errorMessage;

/// Create a copy of DevicesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DevicesStateCopyWith<_DevicesState> get copyWith => __$DevicesStateCopyWithImpl<_DevicesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DevicesState&&const DeepCollectionEquality().equals(other._sessions, _sessions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isTerminatingOthers, isTerminatingOthers) || other.isTerminatingOthers == isTerminatingOthers)&&(identical(other.terminatingId, terminatingId) || other.terminatingId == terminatingId)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sessions),isLoading,isTerminatingOthers,terminatingId,errorMessage);

@override
String toString() {
  return 'DevicesState(sessions: $sessions, isLoading: $isLoading, isTerminatingOthers: $isTerminatingOthers, terminatingId: $terminatingId, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$DevicesStateCopyWith<$Res> implements $DevicesStateCopyWith<$Res> {
  factory _$DevicesStateCopyWith(_DevicesState value, $Res Function(_DevicesState) _then) = __$DevicesStateCopyWithImpl;
@override @useResult
$Res call({
 List<DeviceSession> sessions, bool isLoading, bool isTerminatingOthers, int? terminatingId, String? errorMessage
});




}
/// @nodoc
class __$DevicesStateCopyWithImpl<$Res>
    implements _$DevicesStateCopyWith<$Res> {
  __$DevicesStateCopyWithImpl(this._self, this._then);

  final _DevicesState _self;
  final $Res Function(_DevicesState) _then;

/// Create a copy of DevicesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessions = null,Object? isLoading = null,Object? isTerminatingOthers = null,Object? terminatingId = freezed,Object? errorMessage = freezed,}) {
  return _then(_DevicesState(
sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<DeviceSession>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isTerminatingOthers: null == isTerminatingOthers ? _self.isTerminatingOthers : isTerminatingOthers // ignore: cast_nullable_to_non_nullable
as bool,terminatingId: freezed == terminatingId ? _self.terminatingId : terminatingId // ignore: cast_nullable_to_non_nullable
as int?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
