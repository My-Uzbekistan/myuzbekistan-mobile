// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileEvent()';
}


}

/// @nodoc
class $EditProfileEventCopyWith<$Res>  {
$EditProfileEventCopyWith(EditProfileEvent _, $Res Function(EditProfileEvent) __);
}


/// Adds pattern-matching-related methods to [EditProfileEvent].
extension EditProfileEventPatterns on EditProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EditProfileFetch value)?  fetch,TResult Function( _EditProfileSave value)?  save,TResult Function( _EditProfileUploadAvatar value)?  uploadAvatar,TResult Function( _EditProfileDeleteAvatar value)?  deleteAvatar,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditProfileFetch() when fetch != null:
return fetch(_that);case _EditProfileSave() when save != null:
return save(_that);case _EditProfileUploadAvatar() when uploadAvatar != null:
return uploadAvatar(_that);case _EditProfileDeleteAvatar() when deleteAvatar != null:
return deleteAvatar(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EditProfileFetch value)  fetch,required TResult Function( _EditProfileSave value)  save,required TResult Function( _EditProfileUploadAvatar value)  uploadAvatar,required TResult Function( _EditProfileDeleteAvatar value)  deleteAvatar,}){
final _that = this;
switch (_that) {
case _EditProfileFetch():
return fetch(_that);case _EditProfileSave():
return save(_that);case _EditProfileUploadAvatar():
return uploadAvatar(_that);case _EditProfileDeleteAvatar():
return deleteAvatar(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EditProfileFetch value)?  fetch,TResult? Function( _EditProfileSave value)?  save,TResult? Function( _EditProfileUploadAvatar value)?  uploadAvatar,TResult? Function( _EditProfileDeleteAvatar value)?  deleteAvatar,}){
final _that = this;
switch (_that) {
case _EditProfileFetch() when fetch != null:
return fetch(_that);case _EditProfileSave() when save != null:
return save(_that);case _EditProfileUploadAvatar() when uploadAvatar != null:
return uploadAvatar(_that);case _EditProfileDeleteAvatar() when deleteAvatar != null:
return deleteAvatar(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,TResult Function( String? firstName,  String? lastName)?  save,TResult Function( File file)?  uploadAvatar,TResult Function()?  deleteAvatar,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditProfileFetch() when fetch != null:
return fetch();case _EditProfileSave() when save != null:
return save(_that.firstName,_that.lastName);case _EditProfileUploadAvatar() when uploadAvatar != null:
return uploadAvatar(_that.file);case _EditProfileDeleteAvatar() when deleteAvatar != null:
return deleteAvatar();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,required TResult Function( String? firstName,  String? lastName)  save,required TResult Function( File file)  uploadAvatar,required TResult Function()  deleteAvatar,}) {final _that = this;
switch (_that) {
case _EditProfileFetch():
return fetch();case _EditProfileSave():
return save(_that.firstName,_that.lastName);case _EditProfileUploadAvatar():
return uploadAvatar(_that.file);case _EditProfileDeleteAvatar():
return deleteAvatar();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,TResult? Function( String? firstName,  String? lastName)?  save,TResult? Function( File file)?  uploadAvatar,TResult? Function()?  deleteAvatar,}) {final _that = this;
switch (_that) {
case _EditProfileFetch() when fetch != null:
return fetch();case _EditProfileSave() when save != null:
return save(_that.firstName,_that.lastName);case _EditProfileUploadAvatar() when uploadAvatar != null:
return uploadAvatar(_that.file);case _EditProfileDeleteAvatar() when deleteAvatar != null:
return deleteAvatar();case _:
  return null;

}
}

}

/// @nodoc


class _EditProfileFetch implements EditProfileEvent {
   _EditProfileFetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileFetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileEvent.fetch()';
}


}




/// @nodoc


class _EditProfileSave implements EditProfileEvent {
   _EditProfileSave({this.firstName, this.lastName});
  

 final  String? firstName;
 final  String? lastName;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileSaveCopyWith<_EditProfileSave> get copyWith => __$EditProfileSaveCopyWithImpl<_EditProfileSave>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileSave&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName);

@override
String toString() {
  return 'EditProfileEvent.save(firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$EditProfileSaveCopyWith<$Res> implements $EditProfileEventCopyWith<$Res> {
  factory _$EditProfileSaveCopyWith(_EditProfileSave value, $Res Function(_EditProfileSave) _then) = __$EditProfileSaveCopyWithImpl;
@useResult
$Res call({
 String? firstName, String? lastName
});




}
/// @nodoc
class __$EditProfileSaveCopyWithImpl<$Res>
    implements _$EditProfileSaveCopyWith<$Res> {
  __$EditProfileSaveCopyWithImpl(this._self, this._then);

  final _EditProfileSave _self;
  final $Res Function(_EditProfileSave) _then;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,}) {
  return _then(_EditProfileSave(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _EditProfileUploadAvatar implements EditProfileEvent {
   _EditProfileUploadAvatar({required this.file});
  

 final  File file;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileUploadAvatarCopyWith<_EditProfileUploadAvatar> get copyWith => __$EditProfileUploadAvatarCopyWithImpl<_EditProfileUploadAvatar>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileUploadAvatar&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'EditProfileEvent.uploadAvatar(file: $file)';
}


}

/// @nodoc
abstract mixin class _$EditProfileUploadAvatarCopyWith<$Res> implements $EditProfileEventCopyWith<$Res> {
  factory _$EditProfileUploadAvatarCopyWith(_EditProfileUploadAvatar value, $Res Function(_EditProfileUploadAvatar) _then) = __$EditProfileUploadAvatarCopyWithImpl;
@useResult
$Res call({
 File file
});




}
/// @nodoc
class __$EditProfileUploadAvatarCopyWithImpl<$Res>
    implements _$EditProfileUploadAvatarCopyWith<$Res> {
  __$EditProfileUploadAvatarCopyWithImpl(this._self, this._then);

  final _EditProfileUploadAvatar _self;
  final $Res Function(_EditProfileUploadAvatar) _then;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(_EditProfileUploadAvatar(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class _EditProfileDeleteAvatar implements EditProfileEvent {
   _EditProfileDeleteAvatar();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileDeleteAvatar);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileEvent.deleteAvatar()';
}


}




/// @nodoc
mixin _$EditProfileState {

 UserProfile? get profile; bool get isLoading; bool get isSaving; bool get isAvatarLoading; bool get isSaved; String? get errorMessage;
/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileStateCopyWith<EditProfileState> get copyWith => _$EditProfileStateCopyWithImpl<EditProfileState>(this as EditProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileState&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.isAvatarLoading, isAvatarLoading) || other.isAvatarLoading == isAvatarLoading)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,profile,isLoading,isSaving,isAvatarLoading,isSaved,errorMessage);

@override
String toString() {
  return 'EditProfileState(profile: $profile, isLoading: $isLoading, isSaving: $isSaving, isAvatarLoading: $isAvatarLoading, isSaved: $isSaved, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $EditProfileStateCopyWith<$Res>  {
  factory $EditProfileStateCopyWith(EditProfileState value, $Res Function(EditProfileState) _then) = _$EditProfileStateCopyWithImpl;
@useResult
$Res call({
 UserProfile? profile, bool isLoading, bool isSaving, bool isAvatarLoading, bool isSaved, String? errorMessage
});




}
/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._self, this._then);

  final EditProfileState _self;
  final $Res Function(EditProfileState) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = freezed,Object? isLoading = null,Object? isSaving = null,Object? isAvatarLoading = null,Object? isSaved = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,isAvatarLoading: null == isAvatarLoading ? _self.isAvatarLoading : isAvatarLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditProfileState].
extension EditProfileStatePatterns on EditProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditProfileState value)  $default,){
final _that = this;
switch (_that) {
case _EditProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _EditProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProfile? profile,  bool isLoading,  bool isSaving,  bool isAvatarLoading,  bool isSaved,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditProfileState() when $default != null:
return $default(_that.profile,_that.isLoading,_that.isSaving,_that.isAvatarLoading,_that.isSaved,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProfile? profile,  bool isLoading,  bool isSaving,  bool isAvatarLoading,  bool isSaved,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _EditProfileState():
return $default(_that.profile,_that.isLoading,_that.isSaving,_that.isAvatarLoading,_that.isSaved,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProfile? profile,  bool isLoading,  bool isSaving,  bool isAvatarLoading,  bool isSaved,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _EditProfileState() when $default != null:
return $default(_that.profile,_that.isLoading,_that.isSaving,_that.isAvatarLoading,_that.isSaved,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _EditProfileState extends EditProfileState {
  const _EditProfileState({this.profile, this.isLoading = false, this.isSaving = false, this.isAvatarLoading = false, this.isSaved = false, this.errorMessage}): super._();
  

@override final  UserProfile? profile;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSaving;
@override@JsonKey() final  bool isAvatarLoading;
@override@JsonKey() final  bool isSaved;
@override final  String? errorMessage;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileStateCopyWith<_EditProfileState> get copyWith => __$EditProfileStateCopyWithImpl<_EditProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileState&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.isAvatarLoading, isAvatarLoading) || other.isAvatarLoading == isAvatarLoading)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,profile,isLoading,isSaving,isAvatarLoading,isSaved,errorMessage);

@override
String toString() {
  return 'EditProfileState(profile: $profile, isLoading: $isLoading, isSaving: $isSaving, isAvatarLoading: $isAvatarLoading, isSaved: $isSaved, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$EditProfileStateCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileStateCopyWith(_EditProfileState value, $Res Function(_EditProfileState) _then) = __$EditProfileStateCopyWithImpl;
@override @useResult
$Res call({
 UserProfile? profile, bool isLoading, bool isSaving, bool isAvatarLoading, bool isSaved, String? errorMessage
});




}
/// @nodoc
class __$EditProfileStateCopyWithImpl<$Res>
    implements _$EditProfileStateCopyWith<$Res> {
  __$EditProfileStateCopyWithImpl(this._self, this._then);

  final _EditProfileState _self;
  final $Res Function(_EditProfileState) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = freezed,Object? isLoading = null,Object? isSaving = null,Object? isAvatarLoading = null,Object? isSaved = null,Object? errorMessage = freezed,}) {
  return _then(_EditProfileState(
profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,isAvatarLoading: null == isAvatarLoading ? _self.isAvatarLoading : isAvatarLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
