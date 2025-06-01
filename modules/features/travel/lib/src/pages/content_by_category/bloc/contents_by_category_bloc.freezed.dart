// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contents_by_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContentByCategoryEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentByCategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryEvent()';
}


}

/// @nodoc
class $ContentByCategoryEventCopyWith<$Res>  {
$ContentByCategoryEventCopyWith(ContentByCategoryEvent _, $Res Function(ContentByCategoryEvent) __);
}


/// @nodoc


class _InitialEvent with DiagnosticableTreeMixin implements ContentByCategoryEvent {
   _InitialEvent(this.categoryId);
  

 final  int categoryId;

/// Create a copy of ContentByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialEventCopyWith<_InitialEvent> get copyWith => __$InitialEventCopyWithImpl<_InitialEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryEvent.init'))
    ..add(DiagnosticsProperty('categoryId', categoryId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialEvent&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryEvent.init(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$InitialEventCopyWith<$Res> implements $ContentByCategoryEventCopyWith<$Res> {
  factory _$InitialEventCopyWith(_InitialEvent value, $Res Function(_InitialEvent) _then) = __$InitialEventCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class __$InitialEventCopyWithImpl<$Res>
    implements _$InitialEventCopyWith<$Res> {
  __$InitialEventCopyWithImpl(this._self, this._then);

  final _InitialEvent _self;
  final $Res Function(_InitialEvent) _then;

/// Create a copy of ContentByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(_InitialEvent(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _InitialFavoriteEvent with DiagnosticableTreeMixin implements ContentByCategoryEvent {
   _InitialFavoriteEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryEvent.initFavorite'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialFavoriteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryEvent.initFavorite()';
}


}




/// @nodoc


class _LoadFavoritesEvent with DiagnosticableTreeMixin implements ContentByCategoryEvent {
   _LoadFavoritesEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryEvent.loadFavorites'))
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
  return 'ContentByCategoryEvent.loadFavorites()';
}


}




/// @nodoc


class _RequestFavorieEvent with DiagnosticableTreeMixin implements ContentByCategoryEvent {
   _RequestFavorieEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryEvent.requestFavorite'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestFavorieEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryEvent.requestFavorite()';
}


}




/// @nodoc


class _LoadMoreEvent with DiagnosticableTreeMixin implements ContentByCategoryEvent {
   _LoadMoreEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryEvent.loadMore'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryEvent.loadMore()';
}


}




/// @nodoc


class _SetQueryEvent with DiagnosticableTreeMixin implements ContentByCategoryEvent {
   _SetQueryEvent(this.query);
  

 final  String query;

/// Create a copy of ContentByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetQueryEventCopyWith<_SetQueryEvent> get copyWith => __$SetQueryEventCopyWithImpl<_SetQueryEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryEvent.setQuery'))
    ..add(DiagnosticsProperty('query', query));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetQueryEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryEvent.setQuery(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SetQueryEventCopyWith<$Res> implements $ContentByCategoryEventCopyWith<$Res> {
  factory _$SetQueryEventCopyWith(_SetQueryEvent value, $Res Function(_SetQueryEvent) _then) = __$SetQueryEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SetQueryEventCopyWithImpl<$Res>
    implements _$SetQueryEventCopyWith<$Res> {
  __$SetQueryEventCopyWithImpl(this._self, this._then);

  final _SetQueryEvent _self;
  final $Res Function(_SetQueryEvent) _then;

/// Create a copy of ContentByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SetQueryEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadContentEvent with DiagnosticableTreeMixin implements ContentByCategoryEvent {
   _LoadContentEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryEvent.loadContentEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadContentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryEvent.loadContentEvent()';
}


}




/// @nodoc


class _UpdateItemFavoriteWithPopResult with DiagnosticableTreeMixin implements ContentByCategoryEvent {
   _UpdateItemFavoriteWithPopResult({required this.isFavorite, required this.contentId});
  

 final  bool isFavorite;
 final  int contentId;

/// Create a copy of ContentByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateItemFavoriteWithPopResultCopyWith<_UpdateItemFavoriteWithPopResult> get copyWith => __$UpdateItemFavoriteWithPopResultCopyWithImpl<_UpdateItemFavoriteWithPopResult>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryEvent.updateItemFavoriteWithPopResult'))
    ..add(DiagnosticsProperty('isFavorite', isFavorite))..add(DiagnosticsProperty('contentId', contentId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateItemFavoriteWithPopResult&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.contentId, contentId) || other.contentId == contentId));
}


@override
int get hashCode => Object.hash(runtimeType,isFavorite,contentId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryEvent.updateItemFavoriteWithPopResult(isFavorite: $isFavorite, contentId: $contentId)';
}


}

/// @nodoc
abstract mixin class _$UpdateItemFavoriteWithPopResultCopyWith<$Res> implements $ContentByCategoryEventCopyWith<$Res> {
  factory _$UpdateItemFavoriteWithPopResultCopyWith(_UpdateItemFavoriteWithPopResult value, $Res Function(_UpdateItemFavoriteWithPopResult) _then) = __$UpdateItemFavoriteWithPopResultCopyWithImpl;
@useResult
$Res call({
 bool isFavorite, int contentId
});




}
/// @nodoc
class __$UpdateItemFavoriteWithPopResultCopyWithImpl<$Res>
    implements _$UpdateItemFavoriteWithPopResultCopyWith<$Res> {
  __$UpdateItemFavoriteWithPopResultCopyWithImpl(this._self, this._then);

  final _UpdateItemFavoriteWithPopResult _self;
  final $Res Function(_UpdateItemFavoriteWithPopResult) _then;

/// Create a copy of ContentByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isFavorite = null,Object? contentId = null,}) {
  return _then(_UpdateItemFavoriteWithPopResult(
isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateItemFavoriteEvent with DiagnosticableTreeMixin implements ContentByCategoryEvent {
   _UpdateItemFavoriteEvent({required this.contentId, required this.isFavorite});
  

 final  int contentId;
 final  bool isFavorite;

/// Create a copy of ContentByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateItemFavoriteEventCopyWith<_UpdateItemFavoriteEvent> get copyWith => __$UpdateItemFavoriteEventCopyWithImpl<_UpdateItemFavoriteEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryEvent.updateItemFavorite'))
    ..add(DiagnosticsProperty('contentId', contentId))..add(DiagnosticsProperty('isFavorite', isFavorite));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateItemFavoriteEvent&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,contentId,isFavorite);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryEvent.updateItemFavorite(contentId: $contentId, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$UpdateItemFavoriteEventCopyWith<$Res> implements $ContentByCategoryEventCopyWith<$Res> {
  factory _$UpdateItemFavoriteEventCopyWith(_UpdateItemFavoriteEvent value, $Res Function(_UpdateItemFavoriteEvent) _then) = __$UpdateItemFavoriteEventCopyWithImpl;
@useResult
$Res call({
 int contentId, bool isFavorite
});




}
/// @nodoc
class __$UpdateItemFavoriteEventCopyWithImpl<$Res>
    implements _$UpdateItemFavoriteEventCopyWith<$Res> {
  __$UpdateItemFavoriteEventCopyWithImpl(this._self, this._then);

  final _UpdateItemFavoriteEvent _self;
  final $Res Function(_UpdateItemFavoriteEvent) _then;

/// Create a copy of ContentByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contentId = null,Object? isFavorite = null,}) {
  return _then(_UpdateItemFavoriteEvent(
contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as int,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ContentByCategoryState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentByCategoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryState()';
}


}

/// @nodoc
class $ContentByCategoryStateCopyWith<$Res>  {
$ContentByCategoryStateCopyWith(ContentByCategoryState _, $Res Function(ContentByCategoryState) __);
}


/// @nodoc


class ContentByCategoryDataState with DiagnosticableTreeMixin implements ContentByCategoryState {
   ContentByCategoryDataState({final  List<MainPageContent> contents = const [], this.categoryId = 0, this.page = 1, this.pageSize = 20, this.isLoading = true, this.hasMore = true, this.type = ContentByCategoryType.contents, this.query, this.navState, this.errorState}): _contents = contents;
  

 final  List<MainPageContent> _contents;
@JsonKey() List<MainPageContent> get contents {
  if (_contents is EqualUnmodifiableListView) return _contents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contents);
}

@JsonKey() final  int categoryId;
@JsonKey() final  int page;
@JsonKey() final  int pageSize;
@JsonKey() final  bool isLoading;
@JsonKey() final  bool hasMore;
@JsonKey() final  ContentByCategoryType type;
 final  String? query;
 final  ContentsByCategoryNavState? navState;
 final  ErrorState? errorState;

/// Create a copy of ContentByCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentByCategoryDataStateCopyWith<ContentByCategoryDataState> get copyWith => _$ContentByCategoryDataStateCopyWithImpl<ContentByCategoryDataState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryState.dataState'))
    ..add(DiagnosticsProperty('contents', contents))..add(DiagnosticsProperty('categoryId', categoryId))..add(DiagnosticsProperty('page', page))..add(DiagnosticsProperty('pageSize', pageSize))..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('hasMore', hasMore))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('query', query))..add(DiagnosticsProperty('navState', navState))..add(DiagnosticsProperty('errorState', errorState));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentByCategoryDataState&&const DeepCollectionEquality().equals(other._contents, _contents)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.type, type) || other.type == type)&&(identical(other.query, query) || other.query == query)&&(identical(other.navState, navState) || other.navState == navState)&&(identical(other.errorState, errorState) || other.errorState == errorState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contents),categoryId,page,pageSize,isLoading,hasMore,type,query,navState,errorState);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryState.dataState(contents: $contents, categoryId: $categoryId, page: $page, pageSize: $pageSize, isLoading: $isLoading, hasMore: $hasMore, type: $type, query: $query, navState: $navState, errorState: $errorState)';
}


}

/// @nodoc
abstract mixin class $ContentByCategoryDataStateCopyWith<$Res> implements $ContentByCategoryStateCopyWith<$Res> {
  factory $ContentByCategoryDataStateCopyWith(ContentByCategoryDataState value, $Res Function(ContentByCategoryDataState) _then) = _$ContentByCategoryDataStateCopyWithImpl;
@useResult
$Res call({
 List<MainPageContent> contents, int categoryId, int page, int pageSize, bool isLoading, bool hasMore, ContentByCategoryType type, String? query, ContentsByCategoryNavState? navState, ErrorState? errorState
});


$ContentsByCategoryNavStateCopyWith<$Res>? get navState;$ErrorStateCopyWith<$Res>? get errorState;

}
/// @nodoc
class _$ContentByCategoryDataStateCopyWithImpl<$Res>
    implements $ContentByCategoryDataStateCopyWith<$Res> {
  _$ContentByCategoryDataStateCopyWithImpl(this._self, this._then);

  final ContentByCategoryDataState _self;
  final $Res Function(ContentByCategoryDataState) _then;

/// Create a copy of ContentByCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contents = null,Object? categoryId = null,Object? page = null,Object? pageSize = null,Object? isLoading = null,Object? hasMore = null,Object? type = null,Object? query = freezed,Object? navState = freezed,Object? errorState = freezed,}) {
  return _then(ContentByCategoryDataState(
contents: null == contents ? _self._contents : contents // ignore: cast_nullable_to_non_nullable
as List<MainPageContent>,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ContentByCategoryType,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,navState: freezed == navState ? _self.navState : navState // ignore: cast_nullable_to_non_nullable
as ContentsByCategoryNavState?,errorState: freezed == errorState ? _self.errorState : errorState // ignore: cast_nullable_to_non_nullable
as ErrorState?,
  ));
}

/// Create a copy of ContentByCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentsByCategoryNavStateCopyWith<$Res>? get navState {
    if (_self.navState == null) {
    return null;
  }

  return $ContentsByCategoryNavStateCopyWith<$Res>(_self.navState!, (value) {
    return _then(_self.copyWith(navState: value));
  });
}/// Create a copy of ContentByCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorStateCopyWith<$Res>? get errorState {
    if (_self.errorState == null) {
    return null;
  }

  return $ErrorStateCopyWith<$Res>(_self.errorState!, (value) {
    return _then(_self.copyWith(errorState: value));
  });
}
}

/// @nodoc


class ContentByCategoryErrorState with DiagnosticableTreeMixin implements ContentByCategoryState {
   ContentByCategoryErrorState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryState.errorState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentByCategoryErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryState.errorState()';
}


}




/// @nodoc


class ContentByCategoryNoContentState with DiagnosticableTreeMixin implements ContentByCategoryState {
   ContentByCategoryNoContentState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentByCategoryState.noContentState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentByCategoryNoContentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentByCategoryState.noContentState()';
}


}




/// @nodoc
mixin _$ContentsByCategoryNavState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentsByCategoryNavState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentsByCategoryNavState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentsByCategoryNavState()';
}


}

/// @nodoc
class $ContentsByCategoryNavStateCopyWith<$Res>  {
$ContentsByCategoryNavStateCopyWith(ContentsByCategoryNavState _, $Res Function(ContentsByCategoryNavState) __);
}


/// @nodoc


class Unauthorized with DiagnosticableTreeMixin implements ContentsByCategoryNavState {
  const Unauthorized();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ContentsByCategoryNavState.unauthorized'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ContentsByCategoryNavState.unauthorized()';
}


}




/// @nodoc
mixin _$ErrorState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ErrorState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ErrorState()';
}


}

/// @nodoc
class $ErrorStateCopyWith<$Res>  {
$ErrorStateCopyWith(ErrorState _, $Res Function(ErrorState) __);
}


/// @nodoc


class _NotFoundState with DiagnosticableTreeMixin implements ErrorState {
  const _NotFoundState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ErrorState.notFound'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotFoundState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ErrorState.notFound()';
}


}




/// @nodoc


class __FailureState with DiagnosticableTreeMixin implements ErrorState {
  const __FailureState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ErrorState.failure'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is __FailureState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ErrorState.failure()';
}


}




// dart format on
