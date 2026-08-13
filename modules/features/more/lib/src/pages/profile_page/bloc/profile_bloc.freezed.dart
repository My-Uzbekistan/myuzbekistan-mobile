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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UserModel? userModel,  bool hasPin,  bool isLoading,  bool isPremium)?  dataState,TResult Function()?  guestState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfileBlocDataState() when dataState != null:
return dataState(_that.userModel,_that.hasPin,_that.isLoading,_that.isPremium);case ProfileBlocGuestState() when guestState != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UserModel? userModel,  bool hasPin,  bool isLoading,  bool isPremium)  dataState,required TResult Function()  guestState,}) {final _that = this;
switch (_that) {
case ProfileBlocDataState():
return dataState(_that.userModel,_that.hasPin,_that.isLoading,_that.isPremium);case ProfileBlocGuestState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UserModel? userModel,  bool hasPin,  bool isLoading,  bool isPremium)?  dataState,TResult? Function()?  guestState,}) {final _that = this;
switch (_that) {
case ProfileBlocDataState() when dataState != null:
return dataState(_that.userModel,_that.hasPin,_that.isLoading,_that.isPremium);case ProfileBlocGuestState() when guestState != null:
return guestState();case _:
  return null;

}
}

}

/// @nodoc


class ProfileBlocDataState with DiagnosticableTreeMixin implements ProfileBlocState {
   ProfileBlocDataState({this.userModel, this.hasPin = false, this.isLoading = false, this.isPremium = false});
  

 final  UserModel? userModel;
@JsonKey() final  bool hasPin;
@JsonKey() final  bool isLoading;
@JsonKey() final  bool isPremium;

/// Create a copy of ProfileBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileBlocDataStateCopyWith<ProfileBlocDataState> get copyWith => _$ProfileBlocDataStateCopyWithImpl<ProfileBlocDataState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocState.dataState'))
    ..add(DiagnosticsProperty('userModel', userModel))..add(DiagnosticsProperty('hasPin', hasPin))..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('isPremium', isPremium));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileBlocDataState&&(identical(other.userModel, userModel) || other.userModel == userModel)&&(identical(other.hasPin, hasPin) || other.hasPin == hasPin)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium));
}


@override
int get hashCode => Object.hash(runtimeType,userModel,hasPin,isLoading,isPremium);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocState.dataState(userModel: $userModel, hasPin: $hasPin, isLoading: $isLoading, isPremium: $isPremium)';
}


}

/// @nodoc
abstract mixin class $ProfileBlocDataStateCopyWith<$Res> implements $ProfileBlocStateCopyWith<$Res> {
  factory $ProfileBlocDataStateCopyWith(ProfileBlocDataState value, $Res Function(ProfileBlocDataState) _then) = _$ProfileBlocDataStateCopyWithImpl;
@useResult
$Res call({
 UserModel? userModel, bool hasPin, bool isLoading, bool isPremium
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
@pragma('vm:prefer-inline') $Res call({Object? userModel = freezed,Object? hasPin = null,Object? isLoading = null,Object? isPremium = null,}) {
  return _then(ProfileBlocDataState(
userModel: freezed == userModel ? _self.userModel : userModel // ignore: cast_nullable_to_non_nullable
as UserModel?,hasPin: null == hasPin ? _self.hasPin : hasPin // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProfileBlocInitEvent value)?  initEvent,TResult Function( _ProfileBlocLoadEvent value)?  loadEvent,TResult Function( _ProfileBlocLogOutEvent value)?  logOut,TResult Function( _ProfileBlocDeleteEvent value)?  deleteAccount,TResult Function( _ProfileBlocUploadAvatarEvent value)?  uploadAvatar,TResult Function( _ProfileBlocSyncAvatarEvent value)?  syncAvatar,TResult Function( _ProfileBlocSyncPremiumEvent value)?  syncPremium,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileBlocInitEvent() when initEvent != null:
return initEvent(_that);case _ProfileBlocLoadEvent() when loadEvent != null:
return loadEvent(_that);case _ProfileBlocLogOutEvent() when logOut != null:
return logOut(_that);case _ProfileBlocDeleteEvent() when deleteAccount != null:
return deleteAccount(_that);case _ProfileBlocUploadAvatarEvent() when uploadAvatar != null:
return uploadAvatar(_that);case _ProfileBlocSyncAvatarEvent() when syncAvatar != null:
return syncAvatar(_that);case _ProfileBlocSyncPremiumEvent() when syncPremium != null:
return syncPremium(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProfileBlocInitEvent value)  initEvent,required TResult Function( _ProfileBlocLoadEvent value)  loadEvent,required TResult Function( _ProfileBlocLogOutEvent value)  logOut,required TResult Function( _ProfileBlocDeleteEvent value)  deleteAccount,required TResult Function( _ProfileBlocUploadAvatarEvent value)  uploadAvatar,required TResult Function( _ProfileBlocSyncAvatarEvent value)  syncAvatar,required TResult Function( _ProfileBlocSyncPremiumEvent value)  syncPremium,}){
final _that = this;
switch (_that) {
case _ProfileBlocInitEvent():
return initEvent(_that);case _ProfileBlocLoadEvent():
return loadEvent(_that);case _ProfileBlocLogOutEvent():
return logOut(_that);case _ProfileBlocDeleteEvent():
return deleteAccount(_that);case _ProfileBlocUploadAvatarEvent():
return uploadAvatar(_that);case _ProfileBlocSyncAvatarEvent():
return syncAvatar(_that);case _ProfileBlocSyncPremiumEvent():
return syncPremium(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProfileBlocInitEvent value)?  initEvent,TResult? Function( _ProfileBlocLoadEvent value)?  loadEvent,TResult? Function( _ProfileBlocLogOutEvent value)?  logOut,TResult? Function( _ProfileBlocDeleteEvent value)?  deleteAccount,TResult? Function( _ProfileBlocUploadAvatarEvent value)?  uploadAvatar,TResult? Function( _ProfileBlocSyncAvatarEvent value)?  syncAvatar,TResult? Function( _ProfileBlocSyncPremiumEvent value)?  syncPremium,}){
final _that = this;
switch (_that) {
case _ProfileBlocInitEvent() when initEvent != null:
return initEvent(_that);case _ProfileBlocLoadEvent() when loadEvent != null:
return loadEvent(_that);case _ProfileBlocLogOutEvent() when logOut != null:
return logOut(_that);case _ProfileBlocDeleteEvent() when deleteAccount != null:
return deleteAccount(_that);case _ProfileBlocUploadAvatarEvent() when uploadAvatar != null:
return uploadAvatar(_that);case _ProfileBlocSyncAvatarEvent() when syncAvatar != null:
return syncAvatar(_that);case _ProfileBlocSyncPremiumEvent() when syncPremium != null:
return syncPremium(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initEvent,TResult Function()?  loadEvent,TResult Function()?  logOut,TResult Function()?  deleteAccount,TResult Function( File file)?  uploadAvatar,TResult Function()?  syncAvatar,TResult Function()?  syncPremium,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileBlocInitEvent() when initEvent != null:
return initEvent();case _ProfileBlocLoadEvent() when loadEvent != null:
return loadEvent();case _ProfileBlocLogOutEvent() when logOut != null:
return logOut();case _ProfileBlocDeleteEvent() when deleteAccount != null:
return deleteAccount();case _ProfileBlocUploadAvatarEvent() when uploadAvatar != null:
return uploadAvatar(_that.file);case _ProfileBlocSyncAvatarEvent() when syncAvatar != null:
return syncAvatar();case _ProfileBlocSyncPremiumEvent() when syncPremium != null:
return syncPremium();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initEvent,required TResult Function()  loadEvent,required TResult Function()  logOut,required TResult Function()  deleteAccount,required TResult Function( File file)  uploadAvatar,required TResult Function()  syncAvatar,required TResult Function()  syncPremium,}) {final _that = this;
switch (_that) {
case _ProfileBlocInitEvent():
return initEvent();case _ProfileBlocLoadEvent():
return loadEvent();case _ProfileBlocLogOutEvent():
return logOut();case _ProfileBlocDeleteEvent():
return deleteAccount();case _ProfileBlocUploadAvatarEvent():
return uploadAvatar(_that.file);case _ProfileBlocSyncAvatarEvent():
return syncAvatar();case _ProfileBlocSyncPremiumEvent():
return syncPremium();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initEvent,TResult? Function()?  loadEvent,TResult? Function()?  logOut,TResult? Function()?  deleteAccount,TResult? Function( File file)?  uploadAvatar,TResult? Function()?  syncAvatar,TResult? Function()?  syncPremium,}) {final _that = this;
switch (_that) {
case _ProfileBlocInitEvent() when initEvent != null:
return initEvent();case _ProfileBlocLoadEvent() when loadEvent != null:
return loadEvent();case _ProfileBlocLogOutEvent() when logOut != null:
return logOut();case _ProfileBlocDeleteEvent() when deleteAccount != null:
return deleteAccount();case _ProfileBlocUploadAvatarEvent() when uploadAvatar != null:
return uploadAvatar(_that.file);case _ProfileBlocSyncAvatarEvent() when syncAvatar != null:
return syncAvatar();case _ProfileBlocSyncPremiumEvent() when syncPremium != null:
return syncPremium();case _:
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




/// @nodoc


class _ProfileBlocUploadAvatarEvent with DiagnosticableTreeMixin implements ProfileBlocEvent {
   _ProfileBlocUploadAvatarEvent(this.file);
  

 final  File file;

/// Create a copy of ProfileBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileBlocUploadAvatarEventCopyWith<_ProfileBlocUploadAvatarEvent> get copyWith => __$ProfileBlocUploadAvatarEventCopyWithImpl<_ProfileBlocUploadAvatarEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocEvent.uploadAvatar'))
    ..add(DiagnosticsProperty('file', file));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileBlocUploadAvatarEvent&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocEvent.uploadAvatar(file: $file)';
}


}

/// @nodoc
abstract mixin class _$ProfileBlocUploadAvatarEventCopyWith<$Res> implements $ProfileBlocEventCopyWith<$Res> {
  factory _$ProfileBlocUploadAvatarEventCopyWith(_ProfileBlocUploadAvatarEvent value, $Res Function(_ProfileBlocUploadAvatarEvent) _then) = __$ProfileBlocUploadAvatarEventCopyWithImpl;
@useResult
$Res call({
 File file
});




}
/// @nodoc
class __$ProfileBlocUploadAvatarEventCopyWithImpl<$Res>
    implements _$ProfileBlocUploadAvatarEventCopyWith<$Res> {
  __$ProfileBlocUploadAvatarEventCopyWithImpl(this._self, this._then);

  final _ProfileBlocUploadAvatarEvent _self;
  final $Res Function(_ProfileBlocUploadAvatarEvent) _then;

/// Create a copy of ProfileBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(_ProfileBlocUploadAvatarEvent(
null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class _ProfileBlocSyncAvatarEvent with DiagnosticableTreeMixin implements ProfileBlocEvent {
   _ProfileBlocSyncAvatarEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocEvent.syncAvatar'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileBlocSyncAvatarEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocEvent.syncAvatar()';
}


}




/// @nodoc


class _ProfileBlocSyncPremiumEvent with DiagnosticableTreeMixin implements ProfileBlocEvent {
   _ProfileBlocSyncPremiumEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileBlocEvent.syncPremium'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileBlocSyncPremiumEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileBlocEvent.syncPremium()';
}


}




// dart format on
