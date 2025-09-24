// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [DetailBlocEvent].
extension DetailBlocEventPatterns on DetailBlocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DetailBlocInitialEvent value)?  initial,TResult Function( _DetailBlocChangeFavorite value)?  changeFavoriteState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailBlocInitialEvent() when initial != null:
return initial(_that);case _DetailBlocChangeFavorite() when changeFavoriteState != null:
return changeFavoriteState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DetailBlocInitialEvent value)  initial,required TResult Function( _DetailBlocChangeFavorite value)  changeFavoriteState,}){
final _that = this;
switch (_that) {
case _DetailBlocInitialEvent():
return initial(_that);case _DetailBlocChangeFavorite():
return changeFavoriteState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DetailBlocInitialEvent value)?  initial,TResult? Function( _DetailBlocChangeFavorite value)?  changeFavoriteState,}){
final _that = this;
switch (_that) {
case _DetailBlocInitialEvent() when initial != null:
return initial(_that);case _DetailBlocChangeFavorite() when changeFavoriteState != null:
return changeFavoriteState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ContentDetail? content,  String contentId)?  initial,TResult Function( bool isSetFavorite)?  changeFavoriteState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailBlocInitialEvent() when initial != null:
return initial(_that.content,_that.contentId);case _DetailBlocChangeFavorite() when changeFavoriteState != null:
return changeFavoriteState(_that.isSetFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ContentDetail? content,  String contentId)  initial,required TResult Function( bool isSetFavorite)  changeFavoriteState,}) {final _that = this;
switch (_that) {
case _DetailBlocInitialEvent():
return initial(_that.content,_that.contentId);case _DetailBlocChangeFavorite():
return changeFavoriteState(_that.isSetFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ContentDetail? content,  String contentId)?  initial,TResult? Function( bool isSetFavorite)?  changeFavoriteState,}) {final _that = this;
switch (_that) {
case _DetailBlocInitialEvent() when initial != null:
return initial(_that.content,_that.contentId);case _DetailBlocChangeFavorite() when changeFavoriteState != null:
return changeFavoriteState(_that.isSetFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _DetailBlocInitialEvent implements DetailBlocEvent {
  const _DetailBlocInitialEvent({this.content, required this.contentId});
  

 final  ContentDetail? content;
 final  String contentId;

/// Create a copy of DetailBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailBlocInitialEventCopyWith<_DetailBlocInitialEvent> get copyWith => __$DetailBlocInitialEventCopyWithImpl<_DetailBlocInitialEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailBlocInitialEvent&&(identical(other.content, content) || other.content == content)&&(identical(other.contentId, contentId) || other.contentId == contentId));
}


@override
int get hashCode => Object.hash(runtimeType,content,contentId);

@override
String toString() {
  return 'DetailBlocEvent.initial(content: $content, contentId: $contentId)';
}


}

/// @nodoc
abstract mixin class _$DetailBlocInitialEventCopyWith<$Res> implements $DetailBlocEventCopyWith<$Res> {
  factory _$DetailBlocInitialEventCopyWith(_DetailBlocInitialEvent value, $Res Function(_DetailBlocInitialEvent) _then) = __$DetailBlocInitialEventCopyWithImpl;
@useResult
$Res call({
 ContentDetail? content, String contentId
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
@pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? contentId = null,}) {
  return _then(_DetailBlocInitialEvent(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as ContentDetail?,contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [DetailBlocState].
extension DetailBlocStatePatterns on DetailBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DetailBlocLoadingState value)?  loadingState,TResult Function( DetailBlocDataState value)?  dataState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DetailBlocLoadingState() when loadingState != null:
return loadingState(_that);case DetailBlocDataState() when dataState != null:
return dataState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DetailBlocLoadingState value)  loadingState,required TResult Function( DetailBlocDataState value)  dataState,}){
final _that = this;
switch (_that) {
case DetailBlocLoadingState():
return loadingState(_that);case DetailBlocDataState():
return dataState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DetailBlocLoadingState value)?  loadingState,TResult? Function( DetailBlocDataState value)?  dataState,}){
final _that = this;
switch (_that) {
case DetailBlocLoadingState() when loadingState != null:
return loadingState(_that);case DetailBlocDataState() when dataState != null:
return dataState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadingState,TResult Function( ContentDetail contentDetail,  int contentId,  bool isLoading,  NavState? navState)?  dataState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DetailBlocLoadingState() when loadingState != null:
return loadingState();case DetailBlocDataState() when dataState != null:
return dataState(_that.contentDetail,_that.contentId,_that.isLoading,_that.navState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadingState,required TResult Function( ContentDetail contentDetail,  int contentId,  bool isLoading,  NavState? navState)  dataState,}) {final _that = this;
switch (_that) {
case DetailBlocLoadingState():
return loadingState();case DetailBlocDataState():
return dataState(_that.contentDetail,_that.contentId,_that.isLoading,_that.navState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadingState,TResult? Function( ContentDetail contentDetail,  int contentId,  bool isLoading,  NavState? navState)?  dataState,}) {final _that = this;
switch (_that) {
case DetailBlocLoadingState() when loadingState != null:
return loadingState();case DetailBlocDataState() when dataState != null:
return dataState(_that.contentDetail,_that.contentId,_that.isLoading,_that.navState);case _:
  return null;

}
}

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
  const DetailBlocDataState({required this.contentDetail, required this.contentId, this.isLoading = true, this.navState});
  

 final  ContentDetail contentDetail;
 final  int contentId;
@JsonKey() final  bool isLoading;
 final  NavState? navState;

/// Create a copy of DetailBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailBlocDataStateCopyWith<DetailBlocDataState> get copyWith => _$DetailBlocDataStateCopyWithImpl<DetailBlocDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailBlocDataState&&(identical(other.contentDetail, contentDetail) || other.contentDetail == contentDetail)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.navState, navState) || other.navState == navState));
}


@override
int get hashCode => Object.hash(runtimeType,contentDetail,contentId,isLoading,navState);

@override
String toString() {
  return 'DetailBlocState.dataState(contentDetail: $contentDetail, contentId: $contentId, isLoading: $isLoading, navState: $navState)';
}


}

/// @nodoc
abstract mixin class $DetailBlocDataStateCopyWith<$Res> implements $DetailBlocStateCopyWith<$Res> {
  factory $DetailBlocDataStateCopyWith(DetailBlocDataState value, $Res Function(DetailBlocDataState) _then) = _$DetailBlocDataStateCopyWithImpl;
@useResult
$Res call({
 ContentDetail contentDetail, int contentId, bool isLoading, NavState? navState
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
@pragma('vm:prefer-inline') $Res call({Object? contentDetail = null,Object? contentId = null,Object? isLoading = null,Object? navState = freezed,}) {
  return _then(DetailBlocDataState(
contentDetail: null == contentDetail ? _self.contentDetail : contentDetail // ignore: cast_nullable_to_non_nullable
as ContentDetail,contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,navState: freezed == navState ? _self.navState : navState // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [NavState].
extension NavStatePatterns on NavState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Unauthorized value)?  unauthorized,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Unauthorized() when unauthorized != null:
return unauthorized(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Unauthorized value)  unauthorized,}){
final _that = this;
switch (_that) {
case Unauthorized():
return unauthorized(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Unauthorized value)?  unauthorized,}){
final _that = this;
switch (_that) {
case Unauthorized() when unauthorized != null:
return unauthorized(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  unauthorized,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Unauthorized() when unauthorized != null:
return unauthorized();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  unauthorized,}) {final _that = this;
switch (_that) {
case Unauthorized():
return unauthorized();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  unauthorized,}) {final _that = this;
switch (_that) {
case Unauthorized() when unauthorized != null:
return unauthorized();case _:
  return null;

}
}

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
