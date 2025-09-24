// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatalogEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogEvent()';
}


}

/// @nodoc
class $CatalogEventCopyWith<$Res>  {
$CatalogEventCopyWith(CatalogEvent _, $Res Function(CatalogEvent) __);
}


/// Adds pattern-matching-related methods to [CatalogEvent].
extension CatalogEventPatterns on CatalogEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CatalogLoadedData value)?  loadedData,TResult Function( _CatalogFetchEvent value)?  fetch,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogLoadedData() when loadedData != null:
return loadedData(_that);case _CatalogFetchEvent() when fetch != null:
return fetch(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CatalogLoadedData value)  loadedData,required TResult Function( _CatalogFetchEvent value)  fetch,}){
final _that = this;
switch (_that) {
case _CatalogLoadedData():
return loadedData(_that);case _CatalogFetchEvent():
return fetch(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CatalogLoadedData value)?  loadedData,TResult? Function( _CatalogFetchEvent value)?  fetch,}){
final _that = this;
switch (_that) {
case _CatalogLoadedData() when loadedData != null:
return loadedData(_that);case _CatalogFetchEvent() when fetch != null:
return fetch(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<CatalogItemModel> items)?  loadedData,TResult Function()?  fetch,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogLoadedData() when loadedData != null:
return loadedData(_that.items);case _CatalogFetchEvent() when fetch != null:
return fetch();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<CatalogItemModel> items)  loadedData,required TResult Function()  fetch,}) {final _that = this;
switch (_that) {
case _CatalogLoadedData():
return loadedData(_that.items);case _CatalogFetchEvent():
return fetch();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<CatalogItemModel> items)?  loadedData,TResult? Function()?  fetch,}) {final _that = this;
switch (_that) {
case _CatalogLoadedData() when loadedData != null:
return loadedData(_that.items);case _CatalogFetchEvent() when fetch != null:
return fetch();case _:
  return null;

}
}

}

/// @nodoc


class _CatalogLoadedData implements CatalogEvent {
   _CatalogLoadedData({required final  List<CatalogItemModel> items}): _items = items;
  

 final  List<CatalogItemModel> _items;
 List<CatalogItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogLoadedDataCopyWith<_CatalogLoadedData> get copyWith => __$CatalogLoadedDataCopyWithImpl<_CatalogLoadedData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogLoadedData&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'CatalogEvent.loadedData(items: $items)';
}


}

/// @nodoc
abstract mixin class _$CatalogLoadedDataCopyWith<$Res> implements $CatalogEventCopyWith<$Res> {
  factory _$CatalogLoadedDataCopyWith(_CatalogLoadedData value, $Res Function(_CatalogLoadedData) _then) = __$CatalogLoadedDataCopyWithImpl;
@useResult
$Res call({
 List<CatalogItemModel> items
});




}
/// @nodoc
class __$CatalogLoadedDataCopyWithImpl<$Res>
    implements _$CatalogLoadedDataCopyWith<$Res> {
  __$CatalogLoadedDataCopyWithImpl(this._self, this._then);

  final _CatalogLoadedData _self;
  final $Res Function(_CatalogLoadedData) _then;

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_CatalogLoadedData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CatalogItemModel>,
  ));
}


}

/// @nodoc


class _CatalogFetchEvent implements CatalogEvent {
   _CatalogFetchEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogFetchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogEvent.fetch()';
}


}




/// @nodoc
mixin _$CatalogState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogState()';
}


}

/// @nodoc
class $CatalogStateCopyWith<$Res>  {
$CatalogStateCopyWith(CatalogState _, $Res Function(CatalogState) __);
}


/// Adds pattern-matching-related methods to [CatalogState].
extension CatalogStatePatterns on CatalogState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadingState value)?  loading,TResult Function( _LoadedState value)?  loaded,TResult Function( _ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading(_that);case _LoadedState() when loaded != null:
return loaded(_that);case _ErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadingState value)  loading,required TResult Function( _LoadedState value)  loaded,required TResult Function( _ErrorState value)  error,}){
final _that = this;
switch (_that) {
case _LoadingState():
return loading(_that);case _LoadedState():
return loaded(_that);case _ErrorState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadingState value)?  loading,TResult? Function( _LoadedState value)?  loaded,TResult? Function( _ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading(_that);case _LoadedState() when loaded != null:
return loaded(_that);case _ErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<CatalogItemModel> items)?  loaded,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.items);case _ErrorState() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<CatalogItemModel> items)  loaded,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case _LoadingState():
return loading();case _LoadedState():
return loaded(_that.items);case _ErrorState():
return error();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<CatalogItemModel> items)?  loaded,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.items);case _ErrorState() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class _LoadingState implements CatalogState {
   _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogState.loading()';
}


}




/// @nodoc


class _LoadedState implements CatalogState {
   _LoadedState({required final  List<CatalogItemModel> items}): _items = items;
  

 final  List<CatalogItemModel> _items;
 List<CatalogItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedStateCopyWith<_LoadedState> get copyWith => __$LoadedStateCopyWithImpl<_LoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedState&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'CatalogState.loaded(items: $items)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $CatalogStateCopyWith<$Res> {
  factory _$LoadedStateCopyWith(_LoadedState value, $Res Function(_LoadedState) _then) = __$LoadedStateCopyWithImpl;
@useResult
$Res call({
 List<CatalogItemModel> items
});




}
/// @nodoc
class __$LoadedStateCopyWithImpl<$Res>
    implements _$LoadedStateCopyWith<$Res> {
  __$LoadedStateCopyWithImpl(this._self, this._then);

  final _LoadedState _self;
  final $Res Function(_LoadedState) _then;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_LoadedState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CatalogItemModel>,
  ));
}


}

/// @nodoc


class _ErrorState implements CatalogState {
   _ErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatalogState.error()';
}


}




// dart format on
