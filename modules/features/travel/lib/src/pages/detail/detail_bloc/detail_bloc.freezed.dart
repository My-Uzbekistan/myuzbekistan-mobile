// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailBlocEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailBlocEvent()';
}


}

/// @nodoc
class $DetailBlocEventCopyWith<$Res>  {
$DetailBlocEventCopyWith(DetailBlocEvent _, $Res Function(DetailBlocEvent) __);
}


/// @nodoc


class _DetailBlocInitialEvent implements DetailBlocEvent {
  const _DetailBlocInitialEvent({required this.contentId});
  

 final  String contentId;

/// Create a copy of DetailBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailBlocInitialEventCopyWith<_DetailBlocInitialEvent> get copyWith => __$DetailBlocInitialEventCopyWithImpl<_DetailBlocInitialEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailBlocInitialEvent&&(identical(other.contentId, contentId) || other.contentId == contentId));
}


@override
int get hashCode => Object.hash(runtimeType,contentId);

@override
String toString() {
  return 'DetailBlocEvent.initial(contentId: $contentId)';
}


}

/// @nodoc
abstract mixin class _$DetailBlocInitialEventCopyWith<$Res> implements $DetailBlocEventCopyWith<$Res> {
  factory _$DetailBlocInitialEventCopyWith(_DetailBlocInitialEvent value, $Res Function(_DetailBlocInitialEvent) _then) = __$DetailBlocInitialEventCopyWithImpl;
@useResult
$Res call({
 String contentId
});




}
/// @nodoc
class __$DetailBlocInitialEventCopyWithImpl<$Res>
    implements _$DetailBlocInitialEventCopyWith<$Res> {
  __$DetailBlocInitialEventCopyWithImpl(this._self, this._then);

  final _DetailBlocInitialEvent _self;
  final $Res Function(_DetailBlocInitialEvent) _then;

/// Create a copy of DetailBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contentId = null,}) {
  return _then(_DetailBlocInitialEvent(
contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DetailBlocChangeFavorite implements DetailBlocEvent {
  const _DetailBlocChangeFavorite({required this.isSetFavorite});
  

 final  bool isSetFavorite;

/// Create a copy of DetailBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailBlocChangeFavoriteCopyWith<_DetailBlocChangeFavorite> get copyWith => __$DetailBlocChangeFavoriteCopyWithImpl<_DetailBlocChangeFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailBlocChangeFavorite&&(identical(other.isSetFavorite, isSetFavorite) || other.isSetFavorite == isSetFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,isSetFavorite);

@override
String toString() {
  return 'DetailBlocEvent.changeFavoriteState(isSetFavorite: $isSetFavorite)';
}


}

/// @nodoc
abstract mixin class _$DetailBlocChangeFavoriteCopyWith<$Res> implements $DetailBlocEventCopyWith<$Res> {
  factory _$DetailBlocChangeFavoriteCopyWith(_DetailBlocChangeFavorite value, $Res Function(_DetailBlocChangeFavorite) _then) = __$DetailBlocChangeFavoriteCopyWithImpl;
@useResult
$Res call({
 bool isSetFavorite
});




}
/// @nodoc
class __$DetailBlocChangeFavoriteCopyWithImpl<$Res>
    implements _$DetailBlocChangeFavoriteCopyWith<$Res> {
  __$DetailBlocChangeFavoriteCopyWithImpl(this._self, this._then);

  final _DetailBlocChangeFavorite _self;
  final $Res Function(_DetailBlocChangeFavorite) _then;

/// Create a copy of DetailBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isSetFavorite = null,}) {
  return _then(_DetailBlocChangeFavorite(
isSetFavorite: null == isSetFavorite ? _self.isSetFavorite : isSetFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$DetailBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailBlocState()';
}


}

/// @nodoc
class $DetailBlocStateCopyWith<$Res>  {
$DetailBlocStateCopyWith(DetailBlocState _, $Res Function(DetailBlocState) __);
}


/// @nodoc


class DetailBlocLoadingState implements DetailBlocState {
  const DetailBlocLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailBlocLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailBlocState.loadingState()';
}


}




/// @nodoc


class DetailBlocDataState implements DetailBlocState {
  const DetailBlocDataState({required this.contentDetail, this.navState});
  

 final  ContentDetail contentDetail;
 final  NavState? navState;

/// Create a copy of DetailBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailBlocDataStateCopyWith<DetailBlocDataState> get copyWith => _$DetailBlocDataStateCopyWithImpl<DetailBlocDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailBlocDataState&&(identical(other.contentDetail, contentDetail) || other.contentDetail == contentDetail)&&(identical(other.navState, navState) || other.navState == navState));
}


@override
int get hashCode => Object.hash(runtimeType,contentDetail,navState);

@override
String toString() {
  return 'DetailBlocState.dataState(contentDetail: $contentDetail, navState: $navState)';
}


}

/// @nodoc
abstract mixin class $DetailBlocDataStateCopyWith<$Res> implements $DetailBlocStateCopyWith<$Res> {
  factory $DetailBlocDataStateCopyWith(DetailBlocDataState value, $Res Function(DetailBlocDataState) _then) = _$DetailBlocDataStateCopyWithImpl;
@useResult
$Res call({
 ContentDetail contentDetail, NavState? navState
});


$NavStateCopyWith<$Res>? get navState;

}
/// @nodoc
class _$DetailBlocDataStateCopyWithImpl<$Res>
    implements $DetailBlocDataStateCopyWith<$Res> {
  _$DetailBlocDataStateCopyWithImpl(this._self, this._then);

  final DetailBlocDataState _self;
  final $Res Function(DetailBlocDataState) _then;

/// Create a copy of DetailBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contentDetail = null,Object? navState = freezed,}) {
  return _then(DetailBlocDataState(
contentDetail: null == contentDetail ? _self.contentDetail : contentDetail // ignore: cast_nullable_to_non_nullable
as ContentDetail,navState: freezed == navState ? _self.navState : navState // ignore: cast_nullable_to_non_nullable
as NavState?,
  ));
}

/// Create a copy of DetailBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NavStateCopyWith<$Res>? get navState {
    if (_self.navState == null) {
    return null;
  }

  return $NavStateCopyWith<$Res>(_self.navState!, (value) {
    return _then(_self.copyWith(navState: value));
  });
}
}

/// @nodoc
mixin _$NavState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NavState()';
}


}

/// @nodoc
class $NavStateCopyWith<$Res>  {
$NavStateCopyWith(NavState _, $Res Function(NavState) __);
}


/// @nodoc


class Unauthorized implements NavState {
  const Unauthorized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NavState.unauthorized()';
}


}




// dart format on
