// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent()';
}


}

/// @nodoc
class $NotificationEventCopyWith<$Res>  {
$NotificationEventCopyWith(NotificationEvent _, $Res Function(NotificationEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadNotifications value)?  loadNotifications,TResult Function( _NotificationSeenEvent value)?  notificationSeen,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadNotifications() when loadNotifications != null:
return loadNotifications(_that);case _NotificationSeenEvent() when notificationSeen != null:
return notificationSeen(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadNotifications value)  loadNotifications,required TResult Function( _NotificationSeenEvent value)  notificationSeen,}){
final _that = this;
switch (_that) {
case _LoadNotifications():
return loadNotifications(_that);case _NotificationSeenEvent():
return notificationSeen(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadNotifications value)?  loadNotifications,TResult? Function( _NotificationSeenEvent value)?  notificationSeen,}){
final _that = this;
switch (_that) {
case _LoadNotifications() when loadNotifications != null:
return loadNotifications(_that);case _NotificationSeenEvent() when notificationSeen != null:
return notificationSeen(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? initialNotId)?  loadNotifications,TResult Function( int notId)?  notificationSeen,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadNotifications() when loadNotifications != null:
return loadNotifications(_that.initialNotId);case _NotificationSeenEvent() when notificationSeen != null:
return notificationSeen(_that.notId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? initialNotId)  loadNotifications,required TResult Function( int notId)  notificationSeen,}) {final _that = this;
switch (_that) {
case _LoadNotifications():
return loadNotifications(_that.initialNotId);case _NotificationSeenEvent():
return notificationSeen(_that.notId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? initialNotId)?  loadNotifications,TResult? Function( int notId)?  notificationSeen,}) {final _that = this;
switch (_that) {
case _LoadNotifications() when loadNotifications != null:
return loadNotifications(_that.initialNotId);case _NotificationSeenEvent() when notificationSeen != null:
return notificationSeen(_that.notId);case _:
  return null;

}
}

}

/// @nodoc


class _LoadNotifications implements NotificationEvent {
   _LoadNotifications({this.initialNotId});
  

 final  int? initialNotId;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadNotificationsCopyWith<_LoadNotifications> get copyWith => __$LoadNotificationsCopyWithImpl<_LoadNotifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadNotifications&&(identical(other.initialNotId, initialNotId) || other.initialNotId == initialNotId));
}


@override
int get hashCode => Object.hash(runtimeType,initialNotId);

@override
String toString() {
  return 'NotificationEvent.loadNotifications(initialNotId: $initialNotId)';
}


}

/// @nodoc
abstract mixin class _$LoadNotificationsCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory _$LoadNotificationsCopyWith(_LoadNotifications value, $Res Function(_LoadNotifications) _then) = __$LoadNotificationsCopyWithImpl;
@useResult
$Res call({
 int? initialNotId
});




}
/// @nodoc
class __$LoadNotificationsCopyWithImpl<$Res>
    implements _$LoadNotificationsCopyWith<$Res> {
  __$LoadNotificationsCopyWithImpl(this._self, this._then);

  final _LoadNotifications _self;
  final $Res Function(_LoadNotifications) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialNotId = freezed,}) {
  return _then(_LoadNotifications(
initialNotId: freezed == initialNotId ? _self.initialNotId : initialNotId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _NotificationSeenEvent implements NotificationEvent {
   _NotificationSeenEvent({required this.notId});
  

 final  int notId;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationSeenEventCopyWith<_NotificationSeenEvent> get copyWith => __$NotificationSeenEventCopyWithImpl<_NotificationSeenEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationSeenEvent&&(identical(other.notId, notId) || other.notId == notId));
}


@override
int get hashCode => Object.hash(runtimeType,notId);

@override
String toString() {
  return 'NotificationEvent.notificationSeen(notId: $notId)';
}


}

/// @nodoc
abstract mixin class _$NotificationSeenEventCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory _$NotificationSeenEventCopyWith(_NotificationSeenEvent value, $Res Function(_NotificationSeenEvent) _then) = __$NotificationSeenEventCopyWithImpl;
@useResult
$Res call({
 int notId
});




}
/// @nodoc
class __$NotificationSeenEventCopyWithImpl<$Res>
    implements _$NotificationSeenEventCopyWith<$Res> {
  __$NotificationSeenEventCopyWithImpl(this._self, this._then);

  final _NotificationSeenEvent _self;
  final $Res Function(_NotificationSeenEvent) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notId = null,}) {
  return _then(_NotificationSeenEvent(
notId: null == notId ? _self.notId : notId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$NotificationsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationsState()';
}


}

/// @nodoc
class $NotificationsStateCopyWith<$Res>  {
$NotificationsStateCopyWith(NotificationsState _, $Res Function(NotificationsState) __);
}


/// Adds pattern-matching-related methods to [NotificationsState].
extension NotificationsStatePatterns on NotificationsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadingState value)?  loadingState,TResult Function( ErrorState value)?  errorState,TResult Function( SuccessState value)?  successState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadingState() when loadingState != null:
return loadingState(_that);case ErrorState() when errorState != null:
return errorState(_that);case SuccessState() when successState != null:
return successState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadingState value)  loadingState,required TResult Function( ErrorState value)  errorState,required TResult Function( SuccessState value)  successState,}){
final _that = this;
switch (_that) {
case LoadingState():
return loadingState(_that);case ErrorState():
return errorState(_that);case SuccessState():
return successState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadingState value)?  loadingState,TResult? Function( ErrorState value)?  errorState,TResult? Function( SuccessState value)?  successState,}){
final _that = this;
switch (_that) {
case LoadingState() when loadingState != null:
return loadingState(_that);case ErrorState() when errorState != null:
return errorState(_that);case SuccessState() when successState != null:
return successState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadingState,TResult Function()?  errorState,TResult Function( List<NotificationItem> notifications,  NotificationItem? initialNotification)?  successState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadingState() when loadingState != null:
return loadingState();case ErrorState() when errorState != null:
return errorState();case SuccessState() when successState != null:
return successState(_that.notifications,_that.initialNotification);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadingState,required TResult Function()  errorState,required TResult Function( List<NotificationItem> notifications,  NotificationItem? initialNotification)  successState,}) {final _that = this;
switch (_that) {
case LoadingState():
return loadingState();case ErrorState():
return errorState();case SuccessState():
return successState(_that.notifications,_that.initialNotification);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadingState,TResult? Function()?  errorState,TResult? Function( List<NotificationItem> notifications,  NotificationItem? initialNotification)?  successState,}) {final _that = this;
switch (_that) {
case LoadingState() when loadingState != null:
return loadingState();case ErrorState() when errorState != null:
return errorState();case SuccessState() when successState != null:
return successState(_that.notifications,_that.initialNotification);case _:
  return null;

}
}

}

/// @nodoc


class LoadingState implements NotificationsState {
   LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationsState.loadingState()';
}


}




/// @nodoc


class ErrorState implements NotificationsState {
   ErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationsState.errorState()';
}


}




/// @nodoc


class SuccessState implements NotificationsState {
   SuccessState({required final  List<NotificationItem> notifications, this.initialNotification}): _notifications = notifications;
  

 final  List<NotificationItem> _notifications;
 List<NotificationItem> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

 final  NotificationItem? initialNotification;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessStateCopyWith<SuccessState> get copyWith => _$SuccessStateCopyWithImpl<SuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&(identical(other.initialNotification, initialNotification) || other.initialNotification == initialNotification));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications),initialNotification);

@override
String toString() {
  return 'NotificationsState.successState(notifications: $notifications, initialNotification: $initialNotification)';
}


}

/// @nodoc
abstract mixin class $SuccessStateCopyWith<$Res> implements $NotificationsStateCopyWith<$Res> {
  factory $SuccessStateCopyWith(SuccessState value, $Res Function(SuccessState) _then) = _$SuccessStateCopyWithImpl;
@useResult
$Res call({
 List<NotificationItem> notifications, NotificationItem? initialNotification
});




}
/// @nodoc
class _$SuccessStateCopyWithImpl<$Res>
    implements $SuccessStateCopyWith<$Res> {
  _$SuccessStateCopyWithImpl(this._self, this._then);

  final SuccessState _self;
  final $Res Function(SuccessState) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notifications = null,Object? initialNotification = freezed,}) {
  return _then(SuccessState(
notifications: null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<NotificationItem>,initialNotification: freezed == initialNotification ? _self.initialNotification : initialNotification // ignore: cast_nullable_to_non_nullable
as NotificationItem?,
  ));
}


}

// dart format on
