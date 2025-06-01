// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
