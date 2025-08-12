// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_content_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadContentCategoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadContentCategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadContentCategoryEvent()';
}


}

/// @nodoc
class $LoadContentCategoryEventCopyWith<$Res>  {
$LoadContentCategoryEventCopyWith(LoadContentCategoryEvent _, $Res Function(LoadContentCategoryEvent) __);
}


/// Adds pattern-matching-related methods to [LoadContentCategoryEvent].
extension LoadContentCategoryEventPatterns on LoadContentCategoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialEvent value)?  init,TResult Function( _LoadNextEvent value)?  loadNext,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialEvent() when init != null:
return init(_that);case _LoadNextEvent() when loadNext != null:
return loadNext(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialEvent value)  init,required TResult Function( _LoadNextEvent value)  loadNext,}){
final _that = this;
switch (_that) {
case _InitialEvent():
return init(_that);case _LoadNextEvent():
return loadNext(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialEvent value)?  init,TResult? Function( _LoadNextEvent value)?  loadNext,}){
final _that = this;
switch (_that) {
case _InitialEvent() when init != null:
return init(_that);case _LoadNextEvent() when loadNext != null:
return loadNext(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int categoryId,  List<MainPageContent> contents)?  init,TResult Function()?  loadNext,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialEvent() when init != null:
return init(_that.categoryId,_that.contents);case _LoadNextEvent() when loadNext != null:
return loadNext();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int categoryId,  List<MainPageContent> contents)  init,required TResult Function()  loadNext,}) {final _that = this;
switch (_that) {
case _InitialEvent():
return init(_that.categoryId,_that.contents);case _LoadNextEvent():
return loadNext();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int categoryId,  List<MainPageContent> contents)?  init,TResult? Function()?  loadNext,}) {final _that = this;
switch (_that) {
case _InitialEvent() when init != null:
return init(_that.categoryId,_that.contents);case _LoadNextEvent() when loadNext != null:
return loadNext();case _:
  return null;

}
}

}

/// @nodoc


class _InitialEvent implements LoadContentCategoryEvent {
   _InitialEvent(this.categoryId, final  List<MainPageContent> contents): _contents = contents;
  

 final  int categoryId;
 final  List<MainPageContent> _contents;
 List<MainPageContent> get contents {
  if (_contents is EqualUnmodifiableListView) return _contents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contents);
}


/// Create a copy of LoadContentCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialEventCopyWith<_InitialEvent> get copyWith => __$InitialEventCopyWithImpl<_InitialEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialEvent&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other._contents, _contents));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,const DeepCollectionEquality().hash(_contents));

@override
String toString() {
  return 'LoadContentCategoryEvent.init(categoryId: $categoryId, contents: $contents)';
}


}

/// @nodoc
abstract mixin class _$InitialEventCopyWith<$Res> implements $LoadContentCategoryEventCopyWith<$Res> {
  factory _$InitialEventCopyWith(_InitialEvent value, $Res Function(_InitialEvent) _then) = __$InitialEventCopyWithImpl;
@useResult
$Res call({
 int categoryId, List<MainPageContent> contents
});




}
/// @nodoc
class __$InitialEventCopyWithImpl<$Res>
    implements _$InitialEventCopyWith<$Res> {
  __$InitialEventCopyWithImpl(this._self, this._then);

  final _InitialEvent _self;
  final $Res Function(_InitialEvent) _then;

/// Create a copy of LoadContentCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? contents = null,}) {
  return _then(_InitialEvent(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,null == contents ? _self._contents : contents // ignore: cast_nullable_to_non_nullable
as List<MainPageContent>,
  ));
}


}

/// @nodoc


class _LoadNextEvent implements LoadContentCategoryEvent {
   _LoadNextEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadNextEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadContentCategoryEvent.loadNext()';
}


}




/// @nodoc
mixin _$LoadContentCategoryState {

 List<MainPageContent> get contents; int get categoryId; int get page; int get pageSize; bool get isLoading; bool get hasMore;
/// Create a copy of LoadContentCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadContentCategoryStateCopyWith<LoadContentCategoryState> get copyWith => _$LoadContentCategoryStateCopyWithImpl<LoadContentCategoryState>(this as LoadContentCategoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadContentCategoryState&&const DeepCollectionEquality().equals(other.contents, contents)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(contents),categoryId,page,pageSize,isLoading,hasMore);

@override
String toString() {
  return 'LoadContentCategoryState(contents: $contents, categoryId: $categoryId, page: $page, pageSize: $pageSize, isLoading: $isLoading, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $LoadContentCategoryStateCopyWith<$Res>  {
  factory $LoadContentCategoryStateCopyWith(LoadContentCategoryState value, $Res Function(LoadContentCategoryState) _then) = _$LoadContentCategoryStateCopyWithImpl;
@useResult
$Res call({
 List<MainPageContent> contents, int categoryId, int page, int pageSize, bool isLoading, bool hasMore
});




}
/// @nodoc
class _$LoadContentCategoryStateCopyWithImpl<$Res>
    implements $LoadContentCategoryStateCopyWith<$Res> {
  _$LoadContentCategoryStateCopyWithImpl(this._self, this._then);

  final LoadContentCategoryState _self;
  final $Res Function(LoadContentCategoryState) _then;

/// Create a copy of LoadContentCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contents = null,Object? categoryId = null,Object? page = null,Object? pageSize = null,Object? isLoading = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
contents: null == contents ? _self.contents : contents // ignore: cast_nullable_to_non_nullable
as List<MainPageContent>,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LoadContentCategoryState].
extension LoadContentCategoryStatePatterns on LoadContentCategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoadContentCategoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadContentCategoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoadContentCategoryState value)  $default,){
final _that = this;
switch (_that) {
case _LoadContentCategoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoadContentCategoryState value)?  $default,){
final _that = this;
switch (_that) {
case _LoadContentCategoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MainPageContent> contents,  int categoryId,  int page,  int pageSize,  bool isLoading,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadContentCategoryState() when $default != null:
return $default(_that.contents,_that.categoryId,_that.page,_that.pageSize,_that.isLoading,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MainPageContent> contents,  int categoryId,  int page,  int pageSize,  bool isLoading,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _LoadContentCategoryState():
return $default(_that.contents,_that.categoryId,_that.page,_that.pageSize,_that.isLoading,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MainPageContent> contents,  int categoryId,  int page,  int pageSize,  bool isLoading,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _LoadContentCategoryState() when $default != null:
return $default(_that.contents,_that.categoryId,_that.page,_that.pageSize,_that.isLoading,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _LoadContentCategoryState implements LoadContentCategoryState {
   _LoadContentCategoryState({final  List<MainPageContent> contents = const [], this.categoryId = 0, this.page = 1, this.pageSize = 20, this.isLoading = true, this.hasMore = true}): _contents = contents;
  

 final  List<MainPageContent> _contents;
@override@JsonKey() List<MainPageContent> get contents {
  if (_contents is EqualUnmodifiableListView) return _contents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contents);
}

@override@JsonKey() final  int categoryId;
@override@JsonKey() final  int page;
@override@JsonKey() final  int pageSize;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool hasMore;

/// Create a copy of LoadContentCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadContentCategoryStateCopyWith<_LoadContentCategoryState> get copyWith => __$LoadContentCategoryStateCopyWithImpl<_LoadContentCategoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadContentCategoryState&&const DeepCollectionEquality().equals(other._contents, _contents)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contents),categoryId,page,pageSize,isLoading,hasMore);

@override
String toString() {
  return 'LoadContentCategoryState(contents: $contents, categoryId: $categoryId, page: $page, pageSize: $pageSize, isLoading: $isLoading, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$LoadContentCategoryStateCopyWith<$Res> implements $LoadContentCategoryStateCopyWith<$Res> {
  factory _$LoadContentCategoryStateCopyWith(_LoadContentCategoryState value, $Res Function(_LoadContentCategoryState) _then) = __$LoadContentCategoryStateCopyWithImpl;
@override @useResult
$Res call({
 List<MainPageContent> contents, int categoryId, int page, int pageSize, bool isLoading, bool hasMore
});




}
/// @nodoc
class __$LoadContentCategoryStateCopyWithImpl<$Res>
    implements _$LoadContentCategoryStateCopyWith<$Res> {
  __$LoadContentCategoryStateCopyWithImpl(this._self, this._then);

  final _LoadContentCategoryState _self;
  final $Res Function(_LoadContentCategoryState) _then;

/// Create a copy of LoadContentCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contents = null,Object? categoryId = null,Object? page = null,Object? pageSize = null,Object? isLoading = null,Object? hasMore = null,}) {
  return _then(_LoadContentCategoryState(
contents: null == contents ? _self._contents : contents // ignore: cast_nullable_to_non_nullable
as List<MainPageContent>,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
