// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'museum_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MuseumDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumDetailEvent()';
}


}

/// @nodoc
class $MuseumDetailEventCopyWith<$Res>  {
$MuseumDetailEventCopyWith(MuseumDetailEvent _, $Res Function(MuseumDetailEvent) __);
}


/// Adds pattern-matching-related methods to [MuseumDetailEvent].
extension MuseumDetailEventPatterns on MuseumDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MuseumDetailStartEvent value)?  start,TResult Function( _MuseumDetailRefreshEvent value)?  refresh,TResult Function( _MuseumDetailToggleFavoriteEvent value)?  toggleFavorite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumDetailStartEvent() when start != null:
return start(_that);case _MuseumDetailRefreshEvent() when refresh != null:
return refresh(_that);case _MuseumDetailToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MuseumDetailStartEvent value)  start,required TResult Function( _MuseumDetailRefreshEvent value)  refresh,required TResult Function( _MuseumDetailToggleFavoriteEvent value)  toggleFavorite,}){
final _that = this;
switch (_that) {
case _MuseumDetailStartEvent():
return start(_that);case _MuseumDetailRefreshEvent():
return refresh(_that);case _MuseumDetailToggleFavoriteEvent():
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MuseumDetailStartEvent value)?  start,TResult? Function( _MuseumDetailRefreshEvent value)?  refresh,TResult? Function( _MuseumDetailToggleFavoriteEvent value)?  toggleFavorite,}){
final _that = this;
switch (_that) {
case _MuseumDetailStartEvent() when start != null:
return start(_that);case _MuseumDetailRefreshEvent() when refresh != null:
return refresh(_that);case _MuseumDetailToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String museumId)?  start,TResult Function()?  refresh,TResult Function()?  toggleFavorite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumDetailStartEvent() when start != null:
return start(_that.museumId);case _MuseumDetailRefreshEvent() when refresh != null:
return refresh();case _MuseumDetailToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String museumId)  start,required TResult Function()  refresh,required TResult Function()  toggleFavorite,}) {final _that = this;
switch (_that) {
case _MuseumDetailStartEvent():
return start(_that.museumId);case _MuseumDetailRefreshEvent():
return refresh();case _MuseumDetailToggleFavoriteEvent():
return toggleFavorite();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String museumId)?  start,TResult? Function()?  refresh,TResult? Function()?  toggleFavorite,}) {final _that = this;
switch (_that) {
case _MuseumDetailStartEvent() when start != null:
return start(_that.museumId);case _MuseumDetailRefreshEvent() when refresh != null:
return refresh();case _MuseumDetailToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite();case _:
  return null;

}
}

}

/// @nodoc


class _MuseumDetailStartEvent implements MuseumDetailEvent {
   _MuseumDetailStartEvent({required this.museumId});
  

 final  String museumId;

/// Create a copy of MuseumDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumDetailStartEventCopyWith<_MuseumDetailStartEvent> get copyWith => __$MuseumDetailStartEventCopyWithImpl<_MuseumDetailStartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumDetailStartEvent&&(identical(other.museumId, museumId) || other.museumId == museumId));
}


@override
int get hashCode => Object.hash(runtimeType,museumId);

@override
String toString() {
  return 'MuseumDetailEvent.start(museumId: $museumId)';
}


}

/// @nodoc
abstract mixin class _$MuseumDetailStartEventCopyWith<$Res> implements $MuseumDetailEventCopyWith<$Res> {
  factory _$MuseumDetailStartEventCopyWith(_MuseumDetailStartEvent value, $Res Function(_MuseumDetailStartEvent) _then) = __$MuseumDetailStartEventCopyWithImpl;
@useResult
$Res call({
 String museumId
});




}
/// @nodoc
class __$MuseumDetailStartEventCopyWithImpl<$Res>
    implements _$MuseumDetailStartEventCopyWith<$Res> {
  __$MuseumDetailStartEventCopyWithImpl(this._self, this._then);

  final _MuseumDetailStartEvent _self;
  final $Res Function(_MuseumDetailStartEvent) _then;

/// Create a copy of MuseumDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? museumId = null,}) {
  return _then(_MuseumDetailStartEvent(
museumId: null == museumId ? _self.museumId : museumId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MuseumDetailRefreshEvent implements MuseumDetailEvent {
   _MuseumDetailRefreshEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumDetailRefreshEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumDetailEvent.refresh()';
}


}




/// @nodoc


class _MuseumDetailToggleFavoriteEvent implements MuseumDetailEvent {
   _MuseumDetailToggleFavoriteEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumDetailToggleFavoriteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumDetailEvent.toggleFavorite()';
}


}




/// @nodoc
mixin _$MuseumDetailState {

 String get museumId; MuseumDetail? get detail; MuseumReviews? get reviews; bool get isLoading; bool get isRefreshing; bool get loadFailed; String? get errorMessage;
/// Create a copy of MuseumDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuseumDetailStateCopyWith<MuseumDetailState> get copyWith => _$MuseumDetailStateCopyWithImpl<MuseumDetailState>(this as MuseumDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumDetailState&&(identical(other.museumId, museumId) || other.museumId == museumId)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.reviews, reviews) || other.reviews == reviews)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,museumId,detail,reviews,isLoading,isRefreshing,loadFailed,errorMessage);

@override
String toString() {
  return 'MuseumDetailState(museumId: $museumId, detail: $detail, reviews: $reviews, isLoading: $isLoading, isRefreshing: $isRefreshing, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MuseumDetailStateCopyWith<$Res>  {
  factory $MuseumDetailStateCopyWith(MuseumDetailState value, $Res Function(MuseumDetailState) _then) = _$MuseumDetailStateCopyWithImpl;
@useResult
$Res call({
 String museumId, MuseumDetail? detail, MuseumReviews? reviews, bool isLoading, bool isRefreshing, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$MuseumDetailStateCopyWithImpl<$Res>
    implements $MuseumDetailStateCopyWith<$Res> {
  _$MuseumDetailStateCopyWithImpl(this._self, this._then);

  final MuseumDetailState _self;
  final $Res Function(MuseumDetailState) _then;

/// Create a copy of MuseumDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? museumId = null,Object? detail = freezed,Object? reviews = freezed,Object? isLoading = null,Object? isRefreshing = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
museumId: null == museumId ? _self.museumId : museumId // ignore: cast_nullable_to_non_nullable
as String,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as MuseumDetail?,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as MuseumReviews?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MuseumDetailState].
extension MuseumDetailStatePatterns on MuseumDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuseumDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuseumDetailState value)  $default,){
final _that = this;
switch (_that) {
case _MuseumDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuseumDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _MuseumDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String museumId,  MuseumDetail? detail,  MuseumReviews? reviews,  bool isLoading,  bool isRefreshing,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumDetailState() when $default != null:
return $default(_that.museumId,_that.detail,_that.reviews,_that.isLoading,_that.isRefreshing,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String museumId,  MuseumDetail? detail,  MuseumReviews? reviews,  bool isLoading,  bool isRefreshing,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MuseumDetailState():
return $default(_that.museumId,_that.detail,_that.reviews,_that.isLoading,_that.isRefreshing,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String museumId,  MuseumDetail? detail,  MuseumReviews? reviews,  bool isLoading,  bool isRefreshing,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MuseumDetailState() when $default != null:
return $default(_that.museumId,_that.detail,_that.reviews,_that.isLoading,_that.isRefreshing,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MuseumDetailState implements MuseumDetailState {
   _MuseumDetailState({this.museumId = "", this.detail, this.reviews, this.isLoading = false, this.isRefreshing = false, this.loadFailed = false, this.errorMessage});
  

@override@JsonKey() final  String museumId;
@override final  MuseumDetail? detail;
@override final  MuseumReviews? reviews;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isRefreshing;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of MuseumDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumDetailStateCopyWith<_MuseumDetailState> get copyWith => __$MuseumDetailStateCopyWithImpl<_MuseumDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumDetailState&&(identical(other.museumId, museumId) || other.museumId == museumId)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.reviews, reviews) || other.reviews == reviews)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,museumId,detail,reviews,isLoading,isRefreshing,loadFailed,errorMessage);

@override
String toString() {
  return 'MuseumDetailState(museumId: $museumId, detail: $detail, reviews: $reviews, isLoading: $isLoading, isRefreshing: $isRefreshing, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MuseumDetailStateCopyWith<$Res> implements $MuseumDetailStateCopyWith<$Res> {
  factory _$MuseumDetailStateCopyWith(_MuseumDetailState value, $Res Function(_MuseumDetailState) _then) = __$MuseumDetailStateCopyWithImpl;
@override @useResult
$Res call({
 String museumId, MuseumDetail? detail, MuseumReviews? reviews, bool isLoading, bool isRefreshing, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$MuseumDetailStateCopyWithImpl<$Res>
    implements _$MuseumDetailStateCopyWith<$Res> {
  __$MuseumDetailStateCopyWithImpl(this._self, this._then);

  final _MuseumDetailState _self;
  final $Res Function(_MuseumDetailState) _then;

/// Create a copy of MuseumDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? museumId = null,Object? detail = freezed,Object? reviews = freezed,Object? isLoading = null,Object? isRefreshing = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_MuseumDetailState(
museumId: null == museumId ? _self.museumId : museumId // ignore: cast_nullable_to_non_nullable
as String,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as MuseumDetail?,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as MuseumReviews?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
