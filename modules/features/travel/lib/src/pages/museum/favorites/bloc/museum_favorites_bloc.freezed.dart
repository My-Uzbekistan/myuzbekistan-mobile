// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'museum_favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MuseumFavoritesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumFavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumFavoritesEvent()';
}


}

/// @nodoc
class $MuseumFavoritesEventCopyWith<$Res>  {
$MuseumFavoritesEventCopyWith(MuseumFavoritesEvent _, $Res Function(MuseumFavoritesEvent) __);
}


/// Adds pattern-matching-related methods to [MuseumFavoritesEvent].
extension MuseumFavoritesEventPatterns on MuseumFavoritesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MuseumFavoritesLoadDataEvent value)?  loadData,TResult Function( _MuseumFavoritesRemoveEvent value)?  remove,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumFavoritesLoadDataEvent() when loadData != null:
return loadData(_that);case _MuseumFavoritesRemoveEvent() when remove != null:
return remove(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MuseumFavoritesLoadDataEvent value)  loadData,required TResult Function( _MuseumFavoritesRemoveEvent value)  remove,}){
final _that = this;
switch (_that) {
case _MuseumFavoritesLoadDataEvent():
return loadData(_that);case _MuseumFavoritesRemoveEvent():
return remove(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MuseumFavoritesLoadDataEvent value)?  loadData,TResult? Function( _MuseumFavoritesRemoveEvent value)?  remove,}){
final _that = this;
switch (_that) {
case _MuseumFavoritesLoadDataEvent() when loadData != null:
return loadData(_that);case _MuseumFavoritesRemoveEvent() when remove != null:
return remove(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadData,TResult Function( MuseumCard museum)?  remove,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumFavoritesLoadDataEvent() when loadData != null:
return loadData();case _MuseumFavoritesRemoveEvent() when remove != null:
return remove(_that.museum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadData,required TResult Function( MuseumCard museum)  remove,}) {final _that = this;
switch (_that) {
case _MuseumFavoritesLoadDataEvent():
return loadData();case _MuseumFavoritesRemoveEvent():
return remove(_that.museum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadData,TResult? Function( MuseumCard museum)?  remove,}) {final _that = this;
switch (_that) {
case _MuseumFavoritesLoadDataEvent() when loadData != null:
return loadData();case _MuseumFavoritesRemoveEvent() when remove != null:
return remove(_that.museum);case _:
  return null;

}
}

}

/// @nodoc


class _MuseumFavoritesLoadDataEvent implements MuseumFavoritesEvent {
   _MuseumFavoritesLoadDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumFavoritesLoadDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumFavoritesEvent.loadData()';
}


}




/// @nodoc


class _MuseumFavoritesRemoveEvent implements MuseumFavoritesEvent {
   _MuseumFavoritesRemoveEvent({required this.museum});
  

 final  MuseumCard museum;

/// Create a copy of MuseumFavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumFavoritesRemoveEventCopyWith<_MuseumFavoritesRemoveEvent> get copyWith => __$MuseumFavoritesRemoveEventCopyWithImpl<_MuseumFavoritesRemoveEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumFavoritesRemoveEvent&&(identical(other.museum, museum) || other.museum == museum));
}


@override
int get hashCode => Object.hash(runtimeType,museum);

@override
String toString() {
  return 'MuseumFavoritesEvent.remove(museum: $museum)';
}


}

/// @nodoc
abstract mixin class _$MuseumFavoritesRemoveEventCopyWith<$Res> implements $MuseumFavoritesEventCopyWith<$Res> {
  factory _$MuseumFavoritesRemoveEventCopyWith(_MuseumFavoritesRemoveEvent value, $Res Function(_MuseumFavoritesRemoveEvent) _then) = __$MuseumFavoritesRemoveEventCopyWithImpl;
@useResult
$Res call({
 MuseumCard museum
});




}
/// @nodoc
class __$MuseumFavoritesRemoveEventCopyWithImpl<$Res>
    implements _$MuseumFavoritesRemoveEventCopyWith<$Res> {
  __$MuseumFavoritesRemoveEventCopyWithImpl(this._self, this._then);

  final _MuseumFavoritesRemoveEvent _self;
  final $Res Function(_MuseumFavoritesRemoveEvent) _then;

/// Create a copy of MuseumFavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? museum = null,}) {
  return _then(_MuseumFavoritesRemoveEvent(
museum: null == museum ? _self.museum : museum // ignore: cast_nullable_to_non_nullable
as MuseumCard,
  ));
}


}

/// @nodoc
mixin _$MuseumFavoritesState {

 List<MuseumCard> get museums; bool get isLoading; bool get loadFailed; String? get errorMessage;
/// Create a copy of MuseumFavoritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuseumFavoritesStateCopyWith<MuseumFavoritesState> get copyWith => _$MuseumFavoritesStateCopyWithImpl<MuseumFavoritesState>(this as MuseumFavoritesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumFavoritesState&&const DeepCollectionEquality().equals(other.museums, museums)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(museums),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MuseumFavoritesState(museums: $museums, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MuseumFavoritesStateCopyWith<$Res>  {
  factory $MuseumFavoritesStateCopyWith(MuseumFavoritesState value, $Res Function(MuseumFavoritesState) _then) = _$MuseumFavoritesStateCopyWithImpl;
@useResult
$Res call({
 List<MuseumCard> museums, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$MuseumFavoritesStateCopyWithImpl<$Res>
    implements $MuseumFavoritesStateCopyWith<$Res> {
  _$MuseumFavoritesStateCopyWithImpl(this._self, this._then);

  final MuseumFavoritesState _self;
  final $Res Function(MuseumFavoritesState) _then;

/// Create a copy of MuseumFavoritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? museums = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
museums: null == museums ? _self.museums : museums // ignore: cast_nullable_to_non_nullable
as List<MuseumCard>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MuseumFavoritesState].
extension MuseumFavoritesStatePatterns on MuseumFavoritesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuseumFavoritesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumFavoritesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuseumFavoritesState value)  $default,){
final _that = this;
switch (_that) {
case _MuseumFavoritesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuseumFavoritesState value)?  $default,){
final _that = this;
switch (_that) {
case _MuseumFavoritesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MuseumCard> museums,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumFavoritesState() when $default != null:
return $default(_that.museums,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MuseumCard> museums,  bool isLoading,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MuseumFavoritesState():
return $default(_that.museums,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MuseumCard> museums,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MuseumFavoritesState() when $default != null:
return $default(_that.museums,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MuseumFavoritesState implements MuseumFavoritesState {
   _MuseumFavoritesState({final  List<MuseumCard> museums = const [], this.isLoading = false, this.loadFailed = false, this.errorMessage}): _museums = museums;
  

 final  List<MuseumCard> _museums;
@override@JsonKey() List<MuseumCard> get museums {
  if (_museums is EqualUnmodifiableListView) return _museums;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_museums);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of MuseumFavoritesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumFavoritesStateCopyWith<_MuseumFavoritesState> get copyWith => __$MuseumFavoritesStateCopyWithImpl<_MuseumFavoritesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumFavoritesState&&const DeepCollectionEquality().equals(other._museums, _museums)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_museums),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MuseumFavoritesState(museums: $museums, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MuseumFavoritesStateCopyWith<$Res> implements $MuseumFavoritesStateCopyWith<$Res> {
  factory _$MuseumFavoritesStateCopyWith(_MuseumFavoritesState value, $Res Function(_MuseumFavoritesState) _then) = __$MuseumFavoritesStateCopyWithImpl;
@override @useResult
$Res call({
 List<MuseumCard> museums, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$MuseumFavoritesStateCopyWithImpl<$Res>
    implements _$MuseumFavoritesStateCopyWith<$Res> {
  __$MuseumFavoritesStateCopyWithImpl(this._self, this._then);

  final _MuseumFavoritesState _self;
  final $Res Function(_MuseumFavoritesState) _then;

/// Create a copy of MuseumFavoritesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? museums = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_MuseumFavoritesState(
museums: null == museums ? _self._museums : museums // ignore: cast_nullable_to_non_nullable
as List<MuseumCard>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
