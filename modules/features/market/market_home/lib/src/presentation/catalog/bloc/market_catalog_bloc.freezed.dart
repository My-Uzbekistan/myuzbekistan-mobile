// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_catalog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketCatalogEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketCatalogEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketCatalogEvent()';
}


}

/// @nodoc
class $MarketCatalogEventCopyWith<$Res>  {
$MarketCatalogEventCopyWith(MarketCatalogEvent _, $Res Function(MarketCatalogEvent) __);
}


/// Adds pattern-matching-related methods to [MarketCatalogEvent].
extension MarketCatalogEventPatterns on MarketCatalogEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MarketCatalogLoadDataEvent value)?  loadData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketCatalogLoadDataEvent() when loadData != null:
return loadData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MarketCatalogLoadDataEvent value)  loadData,}){
final _that = this;
switch (_that) {
case _MarketCatalogLoadDataEvent():
return loadData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MarketCatalogLoadDataEvent value)?  loadData,}){
final _that = this;
switch (_that) {
case _MarketCatalogLoadDataEvent() when loadData != null:
return loadData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketCatalogLoadDataEvent() when loadData != null:
return loadData();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadData,}) {final _that = this;
switch (_that) {
case _MarketCatalogLoadDataEvent():
return loadData();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadData,}) {final _that = this;
switch (_that) {
case _MarketCatalogLoadDataEvent() when loadData != null:
return loadData();case _:
  return null;

}
}

}

/// @nodoc


class _MarketCatalogLoadDataEvent implements MarketCatalogEvent {
   _MarketCatalogLoadDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCatalogLoadDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketCatalogEvent.loadData()';
}


}




/// @nodoc
mixin _$MarketCatalogState {

 List<MarketCategory> get categories; bool get isLoading; bool get loadFailed; String? get errorMessage;
/// Create a copy of MarketCatalogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketCatalogStateCopyWith<MarketCatalogState> get copyWith => _$MarketCatalogStateCopyWithImpl<MarketCatalogState>(this as MarketCatalogState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketCatalogState&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MarketCatalogState(categories: $categories, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MarketCatalogStateCopyWith<$Res>  {
  factory $MarketCatalogStateCopyWith(MarketCatalogState value, $Res Function(MarketCatalogState) _then) = _$MarketCatalogStateCopyWithImpl;
@useResult
$Res call({
 List<MarketCategory> categories, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$MarketCatalogStateCopyWithImpl<$Res>
    implements $MarketCatalogStateCopyWith<$Res> {
  _$MarketCatalogStateCopyWithImpl(this._self, this._then);

  final MarketCatalogState _self;
  final $Res Function(MarketCatalogState) _then;

/// Create a copy of MarketCatalogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<MarketCategory>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketCatalogState].
extension MarketCatalogStatePatterns on MarketCatalogState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketCatalogState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketCatalogState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketCatalogState value)  $default,){
final _that = this;
switch (_that) {
case _MarketCatalogState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketCatalogState value)?  $default,){
final _that = this;
switch (_that) {
case _MarketCatalogState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MarketCategory> categories,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketCatalogState() when $default != null:
return $default(_that.categories,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MarketCategory> categories,  bool isLoading,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MarketCatalogState():
return $default(_that.categories,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MarketCategory> categories,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MarketCatalogState() when $default != null:
return $default(_that.categories,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MarketCatalogState implements MarketCatalogState {
   _MarketCatalogState({final  List<MarketCategory> categories = const [], this.isLoading = false, this.loadFailed = false, this.errorMessage}): _categories = categories;
  

 final  List<MarketCategory> _categories;
@override@JsonKey() List<MarketCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of MarketCatalogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCatalogStateCopyWith<_MarketCatalogState> get copyWith => __$MarketCatalogStateCopyWithImpl<_MarketCatalogState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCatalogState&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'MarketCatalogState(categories: $categories, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MarketCatalogStateCopyWith<$Res> implements $MarketCatalogStateCopyWith<$Res> {
  factory _$MarketCatalogStateCopyWith(_MarketCatalogState value, $Res Function(_MarketCatalogState) _then) = __$MarketCatalogStateCopyWithImpl;
@override @useResult
$Res call({
 List<MarketCategory> categories, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$MarketCatalogStateCopyWithImpl<$Res>
    implements _$MarketCatalogStateCopyWith<$Res> {
  __$MarketCatalogStateCopyWithImpl(this._self, this._then);

  final _MarketCatalogState _self;
  final $Res Function(_MarketCatalogState) _then;

/// Create a copy of MarketCatalogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_MarketCatalogState(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MarketCategory>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
