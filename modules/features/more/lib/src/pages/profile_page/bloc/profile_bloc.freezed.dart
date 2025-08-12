// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileBlocState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocState()';
}


}

/// @nodoc
class $ProfileBlocStateCopyWith<$Res>  {
$ProfileBlocStateCopyWith(ProfileBlocState _, $Res Function(ProfileBlocState) __);
}


/// Adds pattern-matching-related methods to [ProfileBlocState].
extension ProfileBlocStatePatterns on ProfileBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfileBlocDataState value)?  dataState,TResult Function( ProfileBlocGuestState value)?  guestState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfileBlocDataState() when dataState != null:
return dataState(_that);case ProfileBlocGuestState() when guestState != null:
return guestState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfileBlocDataState value)  dataState,required TResult Function( ProfileBlocGuestState value)  guestState,}){
final _that = this;
switch (_that) {
case ProfileBlocDataState():
return dataState(_that);case ProfileBlocGuestState():
return guestState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfileBlocDataState value)?  dataState,TResult? Function( ProfileBlocGuestState value)?  guestState,}){
final _that = this;
switch (_that) {
case ProfileBlocDataState() when dataState != null:
return dataState(_that);case ProfileBlocGuestState() when guestState != null:
return guestState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UserModel? userModel)?  dataState,TResult Function()?  guestState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfileBlocDataState() when dataState != null:
return dataState(_that.userModel);case ProfileBlocGuestState() when guestState != null:
return guestState();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UserModel? userModel)  dataState,required TResult Function()  guestState,}) {final _that = this;
switch (_that) {
case ProfileBlocDataState():
return dataState(_that.userModel);case ProfileBlocGuestState():
return guestState();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UserModel? userModel)?  dataState,TResult? Function()?  guestState,}) {final _that = this;
switch (_that) {
case ProfileBlocDataState() when dataState != null:
return dataState(_that.userModel);case ProfileBlocGuestState() when guestState != null:
return guestState();case _:
  return null;

}
}

}

/// @nodoc


class ProfileBlocDataState with DiagnosticableTreeMixin implements ProfileBlocState {
   ProfileBlocDataState({this.userModel});
  

 final  UserModel? userModel;

/// Create a copy of ProfileBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileBlocDataStateCopyWith<ProfileBlocDataState> get copyWith => _$ProfileBlocDataStateCopyWithImpl<ProfileBlocDataState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocState.dataState'))
    ..add(DiagnosticsProperty('userModel', userModel));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileBlocDataState&&(identical(other.userModel, userModel) || other.userModel == userModel));
}


@override
int get hashCode => Object.hash(runtimeType,userModel);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocState.dataState(userModel: $userModel)';
}


}

/// @nodoc
abstract mixin class $ProfileBlocDataStateCopyWith<$Res> implements $ProfileBlocStateCopyWith<$Res> {
  factory $ProfileBlocDataStateCopyWith(ProfileBlocDataState value, $Res Function(ProfileBlocDataState) _then) = _$ProfileBlocDataStateCopyWithImpl;
@useResult
$Res call({
 UserModel? userModel
});




}
/// @nodoc
class _$ProfileBlocDataStateCopyWithImpl<$Res>
    implements $ProfileBlocDataStateCopyWith<$Res> {
  _$ProfileBlocDataStateCopyWithImpl(this._self, this._then);

  final ProfileBlocDataState _self;
  final $Res Function(ProfileBlocDataState) _then;

/// Create a copy of ProfileBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userModel = freezed,}) {
  return _then(ProfileBlocDataState(
userModel: freezed == userModel ? _self.userModel : userModel // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}


}

/// @nodoc


class ProfileBlocGuestState with DiagnosticableTreeMixin implements ProfileBlocState {
   ProfileBlocGuestState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocState.guestState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileBlocGuestState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocState.guestState()';
}


}




/// @nodoc
mixin _$ProfileBlocEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocEvent()';
}


}

/// @nodoc
class $ProfileBlocEventCopyWith<$Res>  {
$ProfileBlocEventCopyWith(ProfileBlocEvent _, $Res Function(ProfileBlocEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileBlocEvent].
extension ProfileBlocEventPatterns on ProfileBlocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProfileBlocInitEvent value)?  initEvent,TResult Function( _ProfileBlocLoadEvent value)?  loadEvent,TResult Function( _ProfileBlocLogOutEvent value)?  logOut,TResult Function( _ProfileBlocDeleteEvent value)?  deleteAccount,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileBlocInitEvent() when initEvent != null:
return initEvent(_that);case _ProfileBlocLoadEvent() when loadEvent != null:
return loadEvent(_that);case _ProfileBlocLogOutEvent() when logOut != null:
return logOut(_that);case _ProfileBlocDeleteEvent() when deleteAccount != null:
return deleteAccount(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProfileBlocInitEvent value)  initEvent,required TResult Function( _ProfileBlocLoadEvent value)  loadEvent,required TResult Function( _ProfileBlocLogOutEvent value)  logOut,required TResult Function( _ProfileBlocDeleteEvent value)  deleteAccount,}){
final _that = this;
switch (_that) {
case _ProfileBlocInitEvent():
return initEvent(_that);case _ProfileBlocLoadEvent():
return loadEvent(_that);case _ProfileBlocLogOutEvent():
return logOut(_that);case _ProfileBlocDeleteEvent():
return deleteAccount(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProfileBlocInitEvent value)?  initEvent,TResult? Function( _ProfileBlocLoadEvent value)?  loadEvent,TResult? Function( _ProfileBlocLogOutEvent value)?  logOut,TResult? Function( _ProfileBlocDeleteEvent value)?  deleteAccount,}){
final _that = this;
switch (_that) {
case _ProfileBlocInitEvent() when initEvent != null:
return initEvent(_that);case _ProfileBlocLoadEvent() when loadEvent != null:
return loadEvent(_that);case _ProfileBlocLogOutEvent() when logOut != null:
return logOut(_that);case _ProfileBlocDeleteEvent() when deleteAccount != null:
return deleteAccount(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initEvent,TResult Function()?  loadEvent,TResult Function()?  logOut,TResult Function()?  deleteAccount,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileBlocInitEvent() when initEvent != null:
return initEvent();case _ProfileBlocLoadEvent() when loadEvent != null:
return loadEvent();case _ProfileBlocLogOutEvent() when logOut != null:
return logOut();case _ProfileBlocDeleteEvent() when deleteAccount != null:
return deleteAccount();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initEvent,required TResult Function()  loadEvent,required TResult Function()  logOut,required TResult Function()  deleteAccount,}) {final _that = this;
switch (_that) {
case _ProfileBlocInitEvent():
return initEvent();case _ProfileBlocLoadEvent():
return loadEvent();case _ProfileBlocLogOutEvent():
return logOut();case _ProfileBlocDeleteEvent():
return deleteAccount();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initEvent,TResult? Function()?  loadEvent,TResult? Function()?  logOut,TResult? Function()?  deleteAccount,}) {final _that = this;
switch (_that) {
case _ProfileBlocInitEvent() when initEvent != null:
return initEvent();case _ProfileBlocLoadEvent() when loadEvent != null:
return loadEvent();case _ProfileBlocLogOutEvent() when logOut != null:
return logOut();case _ProfileBlocDeleteEvent() when deleteAccount != null:
return deleteAccount();case _:
  return null;

}
}

}

/// @nodoc


class _ProfileBlocInitEvent with DiagnosticableTreeMixin implements ProfileBlocEvent {
   _ProfileBlocInitEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocEvent.initEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileBlocInitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocEvent.initEvent()';
}


}




/// @nodoc


class _ProfileBlocLoadEvent with DiagnosticableTreeMixin implements ProfileBlocEvent {
   _ProfileBlocLoadEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocEvent.loadEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileBlocLoadEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocEvent.loadEvent()';
}


}




/// @nodoc


class _ProfileBlocLogOutEvent with DiagnosticableTreeMixin implements ProfileBlocEvent {
   _ProfileBlocLogOutEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocEvent.logOut'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileBlocLogOutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocEvent.logOut()';
}


}




/// @nodoc


class _ProfileBlocDeleteEvent with DiagnosticableTreeMixin implements ProfileBlocEvent {
   _ProfileBlocDeleteEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocEvent.deleteAccount'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileBlocDeleteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocEvent.deleteAccount()';
}


}




// dart format on
