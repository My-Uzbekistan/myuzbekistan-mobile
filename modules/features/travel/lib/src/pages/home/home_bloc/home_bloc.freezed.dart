// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeBlocEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeBlocEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeBlocEvent()';
}


}

/// @nodoc
class $HomeBlocEventCopyWith<$Res>  {
$HomeBlocEventCopyWith(HomeBlocEvent _, $Res Function(HomeBlocEvent) __);
}


/// Adds pattern-matching-related methods to [HomeBlocEvent].
extension HomeBlocEventPatterns on HomeBlocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HomeBlocInitialEvent value)?  initial,TResult Function( _LoadDataEvent value)?  loadDataEvent,TResult Function( _ChangeRegion value)?  changeRegion,TResult Function( _LoadContentsEvent value)?  loadContents,TResult Function( _CheckPermissionEvent value)?  checkPermission,TResult Function( _LoadFavoritesEvent value)?  loadFavorites,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeBlocInitialEvent() when initial != null:
return initial(_that);case _LoadDataEvent() when loadDataEvent != null:
return loadDataEvent(_that);case _ChangeRegion() when changeRegion != null:
return changeRegion(_that);case _LoadContentsEvent() when loadContents != null:
return loadContents(_that);case _CheckPermissionEvent() when checkPermission != null:
return checkPermission(_that);case _LoadFavoritesEvent() when loadFavorites != null:
return loadFavorites(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HomeBlocInitialEvent value)  initial,required TResult Function( _LoadDataEvent value)  loadDataEvent,required TResult Function( _ChangeRegion value)  changeRegion,required TResult Function( _LoadContentsEvent value)  loadContents,required TResult Function( _CheckPermissionEvent value)  checkPermission,required TResult Function( _LoadFavoritesEvent value)  loadFavorites,}){
final _that = this;
switch (_that) {
case _HomeBlocInitialEvent():
return initial(_that);case _LoadDataEvent():
return loadDataEvent(_that);case _ChangeRegion():
return changeRegion(_that);case _LoadContentsEvent():
return loadContents(_that);case _CheckPermissionEvent():
return checkPermission(_that);case _LoadFavoritesEvent():
return loadFavorites(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HomeBlocInitialEvent value)?  initial,TResult? Function( _LoadDataEvent value)?  loadDataEvent,TResult? Function( _ChangeRegion value)?  changeRegion,TResult? Function( _LoadContentsEvent value)?  loadContents,TResult? Function( _CheckPermissionEvent value)?  checkPermission,TResult? Function( _LoadFavoritesEvent value)?  loadFavorites,}){
final _that = this;
switch (_that) {
case _HomeBlocInitialEvent() when initial != null:
return initial(_that);case _LoadDataEvent() when loadDataEvent != null:
return loadDataEvent(_that);case _ChangeRegion() when changeRegion != null:
return changeRegion(_that);case _LoadContentsEvent() when loadContents != null:
return loadContents(_that);case _CheckPermissionEvent() when checkPermission != null:
return checkPermission(_that);case _LoadFavoritesEvent() when loadFavorites != null:
return loadFavorites(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool isRefresh)?  loadDataEvent,TResult Function( int regionId)?  changeRegion,TResult Function()?  loadContents,TResult Function()?  checkPermission,TResult Function()?  loadFavorites,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeBlocInitialEvent() when initial != null:
return initial();case _LoadDataEvent() when loadDataEvent != null:
return loadDataEvent(_that.isRefresh);case _ChangeRegion() when changeRegion != null:
return changeRegion(_that.regionId);case _LoadContentsEvent() when loadContents != null:
return loadContents();case _CheckPermissionEvent() when checkPermission != null:
return checkPermission();case _LoadFavoritesEvent() when loadFavorites != null:
return loadFavorites();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool isRefresh)  loadDataEvent,required TResult Function( int regionId)  changeRegion,required TResult Function()  loadContents,required TResult Function()  checkPermission,required TResult Function()  loadFavorites,}) {final _that = this;
switch (_that) {
case _HomeBlocInitialEvent():
return initial();case _LoadDataEvent():
return loadDataEvent(_that.isRefresh);case _ChangeRegion():
return changeRegion(_that.regionId);case _LoadContentsEvent():
return loadContents();case _CheckPermissionEvent():
return checkPermission();case _LoadFavoritesEvent():
return loadFavorites();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool isRefresh)?  loadDataEvent,TResult? Function( int regionId)?  changeRegion,TResult? Function()?  loadContents,TResult? Function()?  checkPermission,TResult? Function()?  loadFavorites,}) {final _that = this;
switch (_that) {
case _HomeBlocInitialEvent() when initial != null:
return initial();case _LoadDataEvent() when loadDataEvent != null:
return loadDataEvent(_that.isRefresh);case _ChangeRegion() when changeRegion != null:
return changeRegion(_that.regionId);case _LoadContentsEvent() when loadContents != null:
return loadContents();case _CheckPermissionEvent() when checkPermission != null:
return checkPermission();case _LoadFavoritesEvent() when loadFavorites != null:
return loadFavorites();case _:
  return null;

}
}

}

/// @nodoc


class _HomeBlocInitialEvent with DiagnosticableTreeMixin implements HomeBlocEvent {
   _HomeBlocInitialEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeBlocEvent.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeBlocInitialEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeBlocEvent.initial()';
}


}




/// @nodoc


class _LoadDataEvent with DiagnosticableTreeMixin implements HomeBlocEvent {
   _LoadDataEvent({this.isRefresh = false});
  

@JsonKey() final  bool isRefresh;

/// Create a copy of HomeBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadDataEventCopyWith<_LoadDataEvent> get copyWith => __$LoadDataEventCopyWithImpl<_LoadDataEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeBlocEvent.loadDataEvent'))
    ..add(DiagnosticsProperty('isRefresh', isRefresh));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadDataEvent&&(identical(other.isRefresh, isRefresh) || other.isRefresh == isRefresh));
}


@override
int get hashCode => Object.hash(runtimeType,isRefresh);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeBlocEvent.loadDataEvent(isRefresh: $isRefresh)';
}


}

/// @nodoc
abstract mixin class _$LoadDataEventCopyWith<$Res> implements $HomeBlocEventCopyWith<$Res> {
  factory _$LoadDataEventCopyWith(_LoadDataEvent value, $Res Function(_LoadDataEvent) _then) = __$LoadDataEventCopyWithImpl;
@useResult
$Res call({
 bool isRefresh
});




}
/// @nodoc
class __$LoadDataEventCopyWithImpl<$Res>
    implements _$LoadDataEventCopyWith<$Res> {
  __$LoadDataEventCopyWithImpl(this._self, this._then);

  final _LoadDataEvent _self;
  final $Res Function(_LoadDataEvent) _then;

/// Create a copy of HomeBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isRefresh = null,}) {
  return _then(_LoadDataEvent(
isRefresh: null == isRefresh ? _self.isRefresh : isRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ChangeRegion with DiagnosticableTreeMixin implements HomeBlocEvent {
   _ChangeRegion(this.regionId);
  

 final  int regionId;

/// Create a copy of HomeBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeRegionCopyWith<_ChangeRegion> get copyWith => __$ChangeRegionCopyWithImpl<_ChangeRegion>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeBlocEvent.changeRegion'))
    ..add(DiagnosticsProperty('regionId', regionId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeRegion&&(identical(other.regionId, regionId) || other.regionId == regionId));
}


@override
int get hashCode => Object.hash(runtimeType,regionId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeBlocEvent.changeRegion(regionId: $regionId)';
}


}

/// @nodoc
abstract mixin class _$ChangeRegionCopyWith<$Res> implements $HomeBlocEventCopyWith<$Res> {
  factory _$ChangeRegionCopyWith(_ChangeRegion value, $Res Function(_ChangeRegion) _then) = __$ChangeRegionCopyWithImpl;
@useResult
$Res call({
 int regionId
});




}
/// @nodoc
class __$ChangeRegionCopyWithImpl<$Res>
    implements _$ChangeRegionCopyWith<$Res> {
  __$ChangeRegionCopyWithImpl(this._self, this._then);

  final _ChangeRegion _self;
  final $Res Function(_ChangeRegion) _then;

/// Create a copy of HomeBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? regionId = null,}) {
  return _then(_ChangeRegion(
null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadContentsEvent with DiagnosticableTreeMixin implements HomeBlocEvent {
   _LoadContentsEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeBlocEvent.loadContents'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadContentsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeBlocEvent.loadContents()';
}


}




/// @nodoc


class _CheckPermissionEvent with DiagnosticableTreeMixin implements HomeBlocEvent {
   _CheckPermissionEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeBlocEvent.checkPermission'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckPermissionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeBlocEvent.checkPermission()';
}


}




/// @nodoc


class _LoadFavoritesEvent with DiagnosticableTreeMixin implements HomeBlocEvent {
   _LoadFavoritesEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeBlocEvent.loadFavorites'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadFavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeBlocEvent.loadFavorites()';
}


}




/// @nodoc
mixin _$HomeBlocState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeBlocState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeBlocState()';
}


}

/// @nodoc
class $HomeBlocStateCopyWith<$Res>  {
$HomeBlocStateCopyWith(HomeBlocState _, $Res Function(HomeBlocState) __);
}


/// Adds pattern-matching-related methods to [HomeBlocState].
extension HomeBlocStatePatterns on HomeBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeBlocLoadingState value)?  loading,TResult Function( HomeBlocDataState value)?  dataState,TResult Function( HomeBlocErrorState value)?  errorState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeBlocLoadingState() when loading != null:
return loading(_that);case HomeBlocDataState() when dataState != null:
return dataState(_that);case HomeBlocErrorState() when errorState != null:
return errorState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeBlocLoadingState value)  loading,required TResult Function( HomeBlocDataState value)  dataState,required TResult Function( HomeBlocErrorState value)  errorState,}){
final _that = this;
switch (_that) {
case HomeBlocLoadingState():
return loading(_that);case HomeBlocDataState():
return dataState(_that);case HomeBlocErrorState():
return errorState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeBlocLoadingState value)?  loading,TResult? Function( HomeBlocDataState value)?  dataState,TResult? Function( HomeBlocErrorState value)?  errorState,}){
final _that = this;
switch (_that) {
case HomeBlocLoadingState() when loading != null:
return loading(_that);case HomeBlocDataState() when dataState != null:
return dataState(_that);case HomeBlocErrorState() when errorState != null:
return errorState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<Categories> categories,  List<ContentCategories> contents,  Temperature? temperature,  List<Region> regions,  List<String> favorites,  int totalFavoriteCount,  Region? selectedRegion,  bool loadingContents,  bool isRefreshing)?  dataState,TResult Function()?  errorState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeBlocLoadingState() when loading != null:
return loading();case HomeBlocDataState() when dataState != null:
return dataState(_that.categories,_that.contents,_that.temperature,_that.regions,_that.favorites,_that.totalFavoriteCount,_that.selectedRegion,_that.loadingContents,_that.isRefreshing);case HomeBlocErrorState() when errorState != null:
return errorState();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<Categories> categories,  List<ContentCategories> contents,  Temperature? temperature,  List<Region> regions,  List<String> favorites,  int totalFavoriteCount,  Region? selectedRegion,  bool loadingContents,  bool isRefreshing)  dataState,required TResult Function()  errorState,}) {final _that = this;
switch (_that) {
case HomeBlocLoadingState():
return loading();case HomeBlocDataState():
return dataState(_that.categories,_that.contents,_that.temperature,_that.regions,_that.favorites,_that.totalFavoriteCount,_that.selectedRegion,_that.loadingContents,_that.isRefreshing);case HomeBlocErrorState():
return errorState();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<Categories> categories,  List<ContentCategories> contents,  Temperature? temperature,  List<Region> regions,  List<String> favorites,  int totalFavoriteCount,  Region? selectedRegion,  bool loadingContents,  bool isRefreshing)?  dataState,TResult? Function()?  errorState,}) {final _that = this;
switch (_that) {
case HomeBlocLoadingState() when loading != null:
return loading();case HomeBlocDataState() when dataState != null:
return dataState(_that.categories,_that.contents,_that.temperature,_that.regions,_that.favorites,_that.totalFavoriteCount,_that.selectedRegion,_that.loadingContents,_that.isRefreshing);case HomeBlocErrorState() when errorState != null:
return errorState();case _:
  return null;

}
}

}

/// @nodoc


class HomeBlocLoadingState with DiagnosticableTreeMixin implements HomeBlocState {
  const HomeBlocLoadingState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeBlocState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBlocLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeBlocState.loading()';
}


}




/// @nodoc


class HomeBlocDataState with DiagnosticableTreeMixin implements HomeBlocState {
  const HomeBlocDataState({final  List<Categories> categories = const [], final  List<ContentCategories> contents = const [], this.temperature, final  List<Region> regions = const [], final  List<String> favorites = const [], this.totalFavoriteCount = 0, this.selectedRegion, this.loadingContents = true, this.isRefreshing = false}): _categories = categories,_contents = contents,_regions = regions,_favorites = favorites;
  

 final  List<Categories> _categories;
@JsonKey() List<Categories> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<ContentCategories> _contents;
@JsonKey() List<ContentCategories> get contents {
  if (_contents is EqualUnmodifiableListView) return _contents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contents);
}

 final  Temperature? temperature;
 final  List<Region> _regions;
@JsonKey() List<Region> get regions {
  if (_regions is EqualUnmodifiableListView) return _regions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_regions);
}

 final  List<String> _favorites;
@JsonKey() List<String> get favorites {
  if (_favorites is EqualUnmodifiableListView) return _favorites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favorites);
}

@JsonKey() final  int totalFavoriteCount;
 final  Region? selectedRegion;
@JsonKey() final  bool loadingContents;
@JsonKey() final  bool isRefreshing;

/// Create a copy of HomeBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeBlocDataStateCopyWith<HomeBlocDataState> get copyWith => _$HomeBlocDataStateCopyWithImpl<HomeBlocDataState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeBlocState.dataState'))
    ..add(DiagnosticsProperty('categories', categories))..add(DiagnosticsProperty('contents', contents))..add(DiagnosticsProperty('temperature', temperature))..add(DiagnosticsProperty('regions', regions))..add(DiagnosticsProperty('favorites', favorites))..add(DiagnosticsProperty('totalFavoriteCount', totalFavoriteCount))..add(DiagnosticsProperty('selectedRegion', selectedRegion))..add(DiagnosticsProperty('loadingContents', loadingContents))..add(DiagnosticsProperty('isRefreshing', isRefreshing));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBlocDataState&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._contents, _contents)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&const DeepCollectionEquality().equals(other._regions, _regions)&&const DeepCollectionEquality().equals(other._favorites, _favorites)&&(identical(other.totalFavoriteCount, totalFavoriteCount) || other.totalFavoriteCount == totalFavoriteCount)&&(identical(other.selectedRegion, selectedRegion) || other.selectedRegion == selectedRegion)&&(identical(other.loadingContents, loadingContents) || other.loadingContents == loadingContents)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_contents),temperature,const DeepCollectionEquality().hash(_regions),const DeepCollectionEquality().hash(_favorites),totalFavoriteCount,selectedRegion,loadingContents,isRefreshing);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeBlocState.dataState(categories: $categories, contents: $contents, temperature: $temperature, regions: $regions, favorites: $favorites, totalFavoriteCount: $totalFavoriteCount, selectedRegion: $selectedRegion, loadingContents: $loadingContents, isRefreshing: $isRefreshing)';
}


}

/// @nodoc
abstract mixin class $HomeBlocDataStateCopyWith<$Res> implements $HomeBlocStateCopyWith<$Res> {
  factory $HomeBlocDataStateCopyWith(HomeBlocDataState value, $Res Function(HomeBlocDataState) _then) = _$HomeBlocDataStateCopyWithImpl;
@useResult
$Res call({
 List<Categories> categories, List<ContentCategories> contents, Temperature? temperature, List<Region> regions, List<String> favorites, int totalFavoriteCount, Region? selectedRegion, bool loadingContents, bool isRefreshing
});




}
/// @nodoc
class _$HomeBlocDataStateCopyWithImpl<$Res>
    implements $HomeBlocDataStateCopyWith<$Res> {
  _$HomeBlocDataStateCopyWithImpl(this._self, this._then);

  final HomeBlocDataState _self;
  final $Res Function(HomeBlocDataState) _then;

/// Create a copy of HomeBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? contents = null,Object? temperature = freezed,Object? regions = null,Object? favorites = null,Object? totalFavoriteCount = null,Object? selectedRegion = freezed,Object? loadingContents = null,Object? isRefreshing = null,}) {
  return _then(HomeBlocDataState(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Categories>,contents: null == contents ? _self._contents : contents // ignore: cast_nullable_to_non_nullable
as List<ContentCategories>,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as Temperature?,regions: null == regions ? _self._regions : regions // ignore: cast_nullable_to_non_nullable
as List<Region>,favorites: null == favorites ? _self._favorites : favorites // ignore: cast_nullable_to_non_nullable
as List<String>,totalFavoriteCount: null == totalFavoriteCount ? _self.totalFavoriteCount : totalFavoriteCount // ignore: cast_nullable_to_non_nullable
as int,selectedRegion: freezed == selectedRegion ? _self.selectedRegion : selectedRegion // ignore: cast_nullable_to_non_nullable
as Region?,loadingContents: null == loadingContents ? _self.loadingContents : loadingContents // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class HomeBlocErrorState with DiagnosticableTreeMixin implements HomeBlocState {
  const HomeBlocErrorState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeBlocState.errorState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBlocErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeBlocState.errorState()';
}


}




// dart format on
