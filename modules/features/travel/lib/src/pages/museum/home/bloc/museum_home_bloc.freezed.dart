// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'museum_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MuseumHomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumHomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumHomeEvent()';
}


}

/// @nodoc
class $MuseumHomeEventCopyWith<$Res>  {
$MuseumHomeEventCopyWith(MuseumHomeEvent _, $Res Function(MuseumHomeEvent) __);
}


/// Adds pattern-matching-related methods to [MuseumHomeEvent].
extension MuseumHomeEventPatterns on MuseumHomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MuseumHomeLoadDataEvent value)?  loadData,TResult Function( _MuseumHomeFavoriteChangedEvent value)?  favoriteChanged,TResult Function( _MuseumHomeToggleFavoriteEvent value)?  toggleFavorite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumHomeLoadDataEvent() when loadData != null:
return loadData(_that);case _MuseumHomeFavoriteChangedEvent() when favoriteChanged != null:
return favoriteChanged(_that);case _MuseumHomeToggleFavoriteEvent() when toggleFavorite != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MuseumHomeLoadDataEvent value)  loadData,required TResult Function( _MuseumHomeFavoriteChangedEvent value)  favoriteChanged,required TResult Function( _MuseumHomeToggleFavoriteEvent value)  toggleFavorite,}){
final _that = this;
switch (_that) {
case _MuseumHomeLoadDataEvent():
return loadData(_that);case _MuseumHomeFavoriteChangedEvent():
return favoriteChanged(_that);case _MuseumHomeToggleFavoriteEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MuseumHomeLoadDataEvent value)?  loadData,TResult? Function( _MuseumHomeFavoriteChangedEvent value)?  favoriteChanged,TResult? Function( _MuseumHomeToggleFavoriteEvent value)?  toggleFavorite,}){
final _that = this;
switch (_that) {
case _MuseumHomeLoadDataEvent() when loadData != null:
return loadData(_that);case _MuseumHomeFavoriteChangedEvent() when favoriteChanged != null:
return favoriteChanged(_that);case _MuseumHomeToggleFavoriteEvent() when toggleFavorite != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadData,TResult Function( ItemChange change)?  favoriteChanged,TResult Function( MuseumCard museum)?  toggleFavorite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumHomeLoadDataEvent() when loadData != null:
return loadData();case _MuseumHomeFavoriteChangedEvent() when favoriteChanged != null:
return favoriteChanged(_that.change);case _MuseumHomeToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.museum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadData,required TResult Function( ItemChange change)  favoriteChanged,required TResult Function( MuseumCard museum)  toggleFavorite,}) {final _that = this;
switch (_that) {
case _MuseumHomeLoadDataEvent():
return loadData();case _MuseumHomeFavoriteChangedEvent():
return favoriteChanged(_that.change);case _MuseumHomeToggleFavoriteEvent():
return toggleFavorite(_that.museum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadData,TResult? Function( ItemChange change)?  favoriteChanged,TResult? Function( MuseumCard museum)?  toggleFavorite,}) {final _that = this;
switch (_that) {
case _MuseumHomeLoadDataEvent() when loadData != null:
return loadData();case _MuseumHomeFavoriteChangedEvent() when favoriteChanged != null:
return favoriteChanged(_that.change);case _MuseumHomeToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.museum);case _:
  return null;

}
}

}

/// @nodoc


class _MuseumHomeLoadDataEvent implements MuseumHomeEvent {
   _MuseumHomeLoadDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumHomeLoadDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MuseumHomeEvent.loadData()';
}


}




/// @nodoc


class _MuseumHomeFavoriteChangedEvent implements MuseumHomeEvent {
   _MuseumHomeFavoriteChangedEvent({required this.change});
  

 final  ItemChange change;

/// Create a copy of MuseumHomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumHomeFavoriteChangedEventCopyWith<_MuseumHomeFavoriteChangedEvent> get copyWith => __$MuseumHomeFavoriteChangedEventCopyWithImpl<_MuseumHomeFavoriteChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumHomeFavoriteChangedEvent&&(identical(other.change, change) || other.change == change));
}


@override
int get hashCode => Object.hash(runtimeType,change);

@override
String toString() {
  return 'MuseumHomeEvent.favoriteChanged(change: $change)';
}


}

/// @nodoc
abstract mixin class _$MuseumHomeFavoriteChangedEventCopyWith<$Res> implements $MuseumHomeEventCopyWith<$Res> {
  factory _$MuseumHomeFavoriteChangedEventCopyWith(_MuseumHomeFavoriteChangedEvent value, $Res Function(_MuseumHomeFavoriteChangedEvent) _then) = __$MuseumHomeFavoriteChangedEventCopyWithImpl;
@useResult
$Res call({
 ItemChange change
});




}
/// @nodoc
class __$MuseumHomeFavoriteChangedEventCopyWithImpl<$Res>
    implements _$MuseumHomeFavoriteChangedEventCopyWith<$Res> {
  __$MuseumHomeFavoriteChangedEventCopyWithImpl(this._self, this._then);

  final _MuseumHomeFavoriteChangedEvent _self;
  final $Res Function(_MuseumHomeFavoriteChangedEvent) _then;

/// Create a copy of MuseumHomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? change = null,}) {
  return _then(_MuseumHomeFavoriteChangedEvent(
change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as ItemChange,
  ));
}


}

/// @nodoc


class _MuseumHomeToggleFavoriteEvent implements MuseumHomeEvent {
   _MuseumHomeToggleFavoriteEvent({required this.museum});
  

 final  MuseumCard museum;

/// Create a copy of MuseumHomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumHomeToggleFavoriteEventCopyWith<_MuseumHomeToggleFavoriteEvent> get copyWith => __$MuseumHomeToggleFavoriteEventCopyWithImpl<_MuseumHomeToggleFavoriteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumHomeToggleFavoriteEvent&&(identical(other.museum, museum) || other.museum == museum));
}


@override
int get hashCode => Object.hash(runtimeType,museum);

@override
String toString() {
  return 'MuseumHomeEvent.toggleFavorite(museum: $museum)';
}


}

/// @nodoc
abstract mixin class _$MuseumHomeToggleFavoriteEventCopyWith<$Res> implements $MuseumHomeEventCopyWith<$Res> {
  factory _$MuseumHomeToggleFavoriteEventCopyWith(_MuseumHomeToggleFavoriteEvent value, $Res Function(_MuseumHomeToggleFavoriteEvent) _then) = __$MuseumHomeToggleFavoriteEventCopyWithImpl;
@useResult
$Res call({
 MuseumCard museum
});




}
/// @nodoc
class __$MuseumHomeToggleFavoriteEventCopyWithImpl<$Res>
    implements _$MuseumHomeToggleFavoriteEventCopyWith<$Res> {
  __$MuseumHomeToggleFavoriteEventCopyWithImpl(this._self, this._then);

  final _MuseumHomeToggleFavoriteEvent _self;
  final $Res Function(_MuseumHomeToggleFavoriteEvent) _then;

/// Create a copy of MuseumHomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? museum = null,}) {
  return _then(_MuseumHomeToggleFavoriteEvent(
museum: null == museum ? _self.museum : museum // ignore: cast_nullable_to_non_nullable
as MuseumCard,
  ));
}


}

/// @nodoc
mixin _$MuseumHomeState {

 List<MuseumCity> get cities; List<MuseumCard> get popular; List<MuseumCard> get recommended; bool get isLoading; bool get loadFailed; String? get errorMessage;
/// Create a copy of MuseumHomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuseumHomeStateCopyWith<MuseumHomeState> get copyWith => _$MuseumHomeStateCopyWithImpl<MuseumHomeState>(this as MuseumHomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuseumHomeState&&const DeepCollectionEquality().equals(other.cities, cities)&&const DeepCollectionEquality().equals(other.popular, popular)&&const DeepCollectionEquality().equals(other.recommended, recommended)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cities),const DeepCollectionEquality().hash(popular),const DeepCollectionEquality().hash(recommended),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MuseumHomeState(cities: $cities, popular: $popular, recommended: $recommended, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MuseumHomeStateCopyWith<$Res>  {
  factory $MuseumHomeStateCopyWith(MuseumHomeState value, $Res Function(MuseumHomeState) _then) = _$MuseumHomeStateCopyWithImpl;
@useResult
$Res call({
 List<MuseumCity> cities, List<MuseumCard> popular, List<MuseumCard> recommended, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$MuseumHomeStateCopyWithImpl<$Res>
    implements $MuseumHomeStateCopyWith<$Res> {
  _$MuseumHomeStateCopyWithImpl(this._self, this._then);

  final MuseumHomeState _self;
  final $Res Function(MuseumHomeState) _then;

/// Create a copy of MuseumHomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cities = null,Object? popular = null,Object? recommended = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
cities: null == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as List<MuseumCity>,popular: null == popular ? _self.popular : popular // ignore: cast_nullable_to_non_nullable
as List<MuseumCard>,recommended: null == recommended ? _self.recommended : recommended // ignore: cast_nullable_to_non_nullable
as List<MuseumCard>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MuseumHomeState].
extension MuseumHomeStatePatterns on MuseumHomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuseumHomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuseumHomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuseumHomeState value)  $default,){
final _that = this;
switch (_that) {
case _MuseumHomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuseumHomeState value)?  $default,){
final _that = this;
switch (_that) {
case _MuseumHomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MuseumCity> cities,  List<MuseumCard> popular,  List<MuseumCard> recommended,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuseumHomeState() when $default != null:
return $default(_that.cities,_that.popular,_that.recommended,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MuseumCity> cities,  List<MuseumCard> popular,  List<MuseumCard> recommended,  bool isLoading,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MuseumHomeState():
return $default(_that.cities,_that.popular,_that.recommended,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MuseumCity> cities,  List<MuseumCard> popular,  List<MuseumCard> recommended,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MuseumHomeState() when $default != null:
return $default(_that.cities,_that.popular,_that.recommended,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MuseumHomeState extends MuseumHomeState {
   _MuseumHomeState({final  List<MuseumCity> cities = const [], final  List<MuseumCard> popular = const [], final  List<MuseumCard> recommended = const [], this.isLoading = false, this.loadFailed = false, this.errorMessage}): _cities = cities,_popular = popular,_recommended = recommended,super._();
  

 final  List<MuseumCity> _cities;
@override@JsonKey() List<MuseumCity> get cities {
  if (_cities is EqualUnmodifiableListView) return _cities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cities);
}

 final  List<MuseumCard> _popular;
@override@JsonKey() List<MuseumCard> get popular {
  if (_popular is EqualUnmodifiableListView) return _popular;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popular);
}

 final  List<MuseumCard> _recommended;
@override@JsonKey() List<MuseumCard> get recommended {
  if (_recommended is EqualUnmodifiableListView) return _recommended;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommended);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of MuseumHomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuseumHomeStateCopyWith<_MuseumHomeState> get copyWith => __$MuseumHomeStateCopyWithImpl<_MuseumHomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuseumHomeState&&const DeepCollectionEquality().equals(other._cities, _cities)&&const DeepCollectionEquality().equals(other._popular, _popular)&&const DeepCollectionEquality().equals(other._recommended, _recommended)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cities),const DeepCollectionEquality().hash(_popular),const DeepCollectionEquality().hash(_recommended),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MuseumHomeState(cities: $cities, popular: $popular, recommended: $recommended, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MuseumHomeStateCopyWith<$Res> implements $MuseumHomeStateCopyWith<$Res> {
  factory _$MuseumHomeStateCopyWith(_MuseumHomeState value, $Res Function(_MuseumHomeState) _then) = __$MuseumHomeStateCopyWithImpl;
@override @useResult
$Res call({
 List<MuseumCity> cities, List<MuseumCard> popular, List<MuseumCard> recommended, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$MuseumHomeStateCopyWithImpl<$Res>
    implements _$MuseumHomeStateCopyWith<$Res> {
  __$MuseumHomeStateCopyWithImpl(this._self, this._then);

  final _MuseumHomeState _self;
  final $Res Function(_MuseumHomeState) _then;

/// Create a copy of MuseumHomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cities = null,Object? popular = null,Object? recommended = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_MuseumHomeState(
cities: null == cities ? _self._cities : cities // ignore: cast_nullable_to_non_nullable
as List<MuseumCity>,popular: null == popular ? _self._popular : popular // ignore: cast_nullable_to_non_nullable
as List<MuseumCard>,recommended: null == recommended ? _self._recommended : recommended // ignore: cast_nullable_to_non_nullable
as List<MuseumCard>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
