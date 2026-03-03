// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InvestmentsEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvestmentsEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvestmentsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvestmentsEvent()';
}


}

/// @nodoc
class $InvestmentsEventCopyWith<$Res>  {
$InvestmentsEventCopyWith(InvestmentsEvent _, $Res Function(InvestmentsEvent) __);
}


/// Adds pattern-matching-related methods to [InvestmentsEvent].
extension InvestmentsEventPatterns on InvestmentsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetContentIdEvent value)?  setCategoryId,TResult Function( _LoadMoreContentEvent value)?  loadMoreContents,TResult Function( _LoadMoreRecommendedEvent value)?  loadMoreRecommended,TResult Function( _LoadDataEvent value)?  loadDataEvent,TResult Function( _SortEvent value)?  sort,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetContentIdEvent() when setCategoryId != null:
return setCategoryId(_that);case _LoadMoreContentEvent() when loadMoreContents != null:
return loadMoreContents(_that);case _LoadMoreRecommendedEvent() when loadMoreRecommended != null:
return loadMoreRecommended(_that);case _LoadDataEvent() when loadDataEvent != null:
return loadDataEvent(_that);case _SortEvent() when sort != null:
return sort(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetContentIdEvent value)  setCategoryId,required TResult Function( _LoadMoreContentEvent value)  loadMoreContents,required TResult Function( _LoadMoreRecommendedEvent value)  loadMoreRecommended,required TResult Function( _LoadDataEvent value)  loadDataEvent,required TResult Function( _SortEvent value)  sort,}){
final _that = this;
switch (_that) {
case _SetContentIdEvent():
return setCategoryId(_that);case _LoadMoreContentEvent():
return loadMoreContents(_that);case _LoadMoreRecommendedEvent():
return loadMoreRecommended(_that);case _LoadDataEvent():
return loadDataEvent(_that);case _SortEvent():
return sort(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetContentIdEvent value)?  setCategoryId,TResult? Function( _LoadMoreContentEvent value)?  loadMoreContents,TResult? Function( _LoadMoreRecommendedEvent value)?  loadMoreRecommended,TResult? Function( _LoadDataEvent value)?  loadDataEvent,TResult? Function( _SortEvent value)?  sort,}){
final _that = this;
switch (_that) {
case _SetContentIdEvent() when setCategoryId != null:
return setCategoryId(_that);case _LoadMoreContentEvent() when loadMoreContents != null:
return loadMoreContents(_that);case _LoadMoreRecommendedEvent() when loadMoreRecommended != null:
return loadMoreRecommended(_that);case _LoadDataEvent() when loadDataEvent != null:
return loadDataEvent(_that);case _SortEvent() when sort != null:
return sort(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? contentsId,  int? topContentsCategoryId)?  setCategoryId,TResult Function()?  loadMoreContents,TResult Function()?  loadMoreRecommended,TResult Function( Region? selectedRegion,  InvestCurrencyType? currencyType,  SortType? sortType)?  loadDataEvent,TResult Function( InvestCurrencyType currencyType,  SortType? sortType,  Region? selectedRegion)?  sort,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetContentIdEvent() when setCategoryId != null:
return setCategoryId(_that.contentsId,_that.topContentsCategoryId);case _LoadMoreContentEvent() when loadMoreContents != null:
return loadMoreContents();case _LoadMoreRecommendedEvent() when loadMoreRecommended != null:
return loadMoreRecommended();case _LoadDataEvent() when loadDataEvent != null:
return loadDataEvent(_that.selectedRegion,_that.currencyType,_that.sortType);case _SortEvent() when sort != null:
return sort(_that.currencyType,_that.sortType,_that.selectedRegion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? contentsId,  int? topContentsCategoryId)  setCategoryId,required TResult Function()  loadMoreContents,required TResult Function()  loadMoreRecommended,required TResult Function( Region? selectedRegion,  InvestCurrencyType? currencyType,  SortType? sortType)  loadDataEvent,required TResult Function( InvestCurrencyType currencyType,  SortType? sortType,  Region? selectedRegion)  sort,}) {final _that = this;
switch (_that) {
case _SetContentIdEvent():
return setCategoryId(_that.contentsId,_that.topContentsCategoryId);case _LoadMoreContentEvent():
return loadMoreContents();case _LoadMoreRecommendedEvent():
return loadMoreRecommended();case _LoadDataEvent():
return loadDataEvent(_that.selectedRegion,_that.currencyType,_that.sortType);case _SortEvent():
return sort(_that.currencyType,_that.sortType,_that.selectedRegion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? contentsId,  int? topContentsCategoryId)?  setCategoryId,TResult? Function()?  loadMoreContents,TResult? Function()?  loadMoreRecommended,TResult? Function( Region? selectedRegion,  InvestCurrencyType? currencyType,  SortType? sortType)?  loadDataEvent,TResult? Function( InvestCurrencyType currencyType,  SortType? sortType,  Region? selectedRegion)?  sort,}) {final _that = this;
switch (_that) {
case _SetContentIdEvent() when setCategoryId != null:
return setCategoryId(_that.contentsId,_that.topContentsCategoryId);case _LoadMoreContentEvent() when loadMoreContents != null:
return loadMoreContents();case _LoadMoreRecommendedEvent() when loadMoreRecommended != null:
return loadMoreRecommended();case _LoadDataEvent() when loadDataEvent != null:
return loadDataEvent(_that.selectedRegion,_that.currencyType,_that.sortType);case _SortEvent() when sort != null:
return sort(_that.currencyType,_that.sortType,_that.selectedRegion);case _:
  return null;

}
}

}

/// @nodoc


class _SetContentIdEvent with DiagnosticableTreeMixin implements InvestmentsEvent {
   _SetContentIdEvent(this.contentsId, this.topContentsCategoryId);
  

 final  int? contentsId;
 final  int? topContentsCategoryId;

/// Create a copy of InvestmentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetContentIdEventCopyWith<_SetContentIdEvent> get copyWith => __$SetContentIdEventCopyWithImpl<_SetContentIdEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvestmentsEvent.setCategoryId'))
    ..add(DiagnosticsProperty('contentsId', contentsId))..add(DiagnosticsProperty('topContentsCategoryId', topContentsCategoryId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetContentIdEvent&&(identical(other.contentsId, contentsId) || other.contentsId == contentsId)&&(identical(other.topContentsCategoryId, topContentsCategoryId) || other.topContentsCategoryId == topContentsCategoryId));
}


@override
int get hashCode => Object.hash(runtimeType,contentsId,topContentsCategoryId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvestmentsEvent.setCategoryId(contentsId: $contentsId, topContentsCategoryId: $topContentsCategoryId)';
}


}

/// @nodoc
abstract mixin class _$SetContentIdEventCopyWith<$Res> implements $InvestmentsEventCopyWith<$Res> {
  factory _$SetContentIdEventCopyWith(_SetContentIdEvent value, $Res Function(_SetContentIdEvent) _then) = __$SetContentIdEventCopyWithImpl;
@useResult
$Res call({
 int? contentsId, int? topContentsCategoryId
});




}
/// @nodoc
class __$SetContentIdEventCopyWithImpl<$Res>
    implements _$SetContentIdEventCopyWith<$Res> {
  __$SetContentIdEventCopyWithImpl(this._self, this._then);

  final _SetContentIdEvent _self;
  final $Res Function(_SetContentIdEvent) _then;

/// Create a copy of InvestmentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contentsId = freezed,Object? topContentsCategoryId = freezed,}) {
  return _then(_SetContentIdEvent(
freezed == contentsId ? _self.contentsId : contentsId // ignore: cast_nullable_to_non_nullable
as int?,freezed == topContentsCategoryId ? _self.topContentsCategoryId : topContentsCategoryId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _LoadMoreContentEvent with DiagnosticableTreeMixin implements InvestmentsEvent {
   _LoadMoreContentEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvestmentsEvent.loadMoreContents'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreContentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvestmentsEvent.loadMoreContents()';
}


}




/// @nodoc


class _LoadMoreRecommendedEvent with DiagnosticableTreeMixin implements InvestmentsEvent {
   _LoadMoreRecommendedEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvestmentsEvent.loadMoreRecommended'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreRecommendedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvestmentsEvent.loadMoreRecommended()';
}


}




/// @nodoc


class _LoadDataEvent with DiagnosticableTreeMixin implements InvestmentsEvent {
   _LoadDataEvent({this.selectedRegion, this.currencyType, this.sortType});
  

 final  Region? selectedRegion;
 final  InvestCurrencyType? currencyType;
 final  SortType? sortType;

/// Create a copy of InvestmentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadDataEventCopyWith<_LoadDataEvent> get copyWith => __$LoadDataEventCopyWithImpl<_LoadDataEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvestmentsEvent.loadDataEvent'))
    ..add(DiagnosticsProperty('selectedRegion', selectedRegion))..add(DiagnosticsProperty('currencyType', currencyType))..add(DiagnosticsProperty('sortType', sortType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadDataEvent&&(identical(other.selectedRegion, selectedRegion) || other.selectedRegion == selectedRegion)&&(identical(other.currencyType, currencyType) || other.currencyType == currencyType)&&(identical(other.sortType, sortType) || other.sortType == sortType));
}


@override
int get hashCode => Object.hash(runtimeType,selectedRegion,currencyType,sortType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvestmentsEvent.loadDataEvent(selectedRegion: $selectedRegion, currencyType: $currencyType, sortType: $sortType)';
}


}

/// @nodoc
abstract mixin class _$LoadDataEventCopyWith<$Res> implements $InvestmentsEventCopyWith<$Res> {
  factory _$LoadDataEventCopyWith(_LoadDataEvent value, $Res Function(_LoadDataEvent) _then) = __$LoadDataEventCopyWithImpl;
@useResult
$Res call({
 Region? selectedRegion, InvestCurrencyType? currencyType, SortType? sortType
});




}
/// @nodoc
class __$LoadDataEventCopyWithImpl<$Res>
    implements _$LoadDataEventCopyWith<$Res> {
  __$LoadDataEventCopyWithImpl(this._self, this._then);

  final _LoadDataEvent _self;
  final $Res Function(_LoadDataEvent) _then;

/// Create a copy of InvestmentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedRegion = freezed,Object? currencyType = freezed,Object? sortType = freezed,}) {
  return _then(_LoadDataEvent(
selectedRegion: freezed == selectedRegion ? _self.selectedRegion : selectedRegion // ignore: cast_nullable_to_non_nullable
as Region?,currencyType: freezed == currencyType ? _self.currencyType : currencyType // ignore: cast_nullable_to_non_nullable
as InvestCurrencyType?,sortType: freezed == sortType ? _self.sortType : sortType // ignore: cast_nullable_to_non_nullable
as SortType?,
  ));
}


}

/// @nodoc


class _SortEvent with DiagnosticableTreeMixin implements InvestmentsEvent {
   _SortEvent({required this.currencyType, required this.sortType, this.selectedRegion});
  

 final  InvestCurrencyType currencyType;
 final  SortType? sortType;
 final  Region? selectedRegion;

/// Create a copy of InvestmentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SortEventCopyWith<_SortEvent> get copyWith => __$SortEventCopyWithImpl<_SortEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvestmentsEvent.sort'))
    ..add(DiagnosticsProperty('currencyType', currencyType))..add(DiagnosticsProperty('sortType', sortType))..add(DiagnosticsProperty('selectedRegion', selectedRegion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SortEvent&&(identical(other.currencyType, currencyType) || other.currencyType == currencyType)&&(identical(other.sortType, sortType) || other.sortType == sortType)&&(identical(other.selectedRegion, selectedRegion) || other.selectedRegion == selectedRegion));
}


@override
int get hashCode => Object.hash(runtimeType,currencyType,sortType,selectedRegion);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvestmentsEvent.sort(currencyType: $currencyType, sortType: $sortType, selectedRegion: $selectedRegion)';
}


}

/// @nodoc
abstract mixin class _$SortEventCopyWith<$Res> implements $InvestmentsEventCopyWith<$Res> {
  factory _$SortEventCopyWith(_SortEvent value, $Res Function(_SortEvent) _then) = __$SortEventCopyWithImpl;
@useResult
$Res call({
 InvestCurrencyType currencyType, SortType? sortType, Region? selectedRegion
});




}
/// @nodoc
class __$SortEventCopyWithImpl<$Res>
    implements _$SortEventCopyWith<$Res> {
  __$SortEventCopyWithImpl(this._self, this._then);

  final _SortEvent _self;
  final $Res Function(_SortEvent) _then;

/// Create a copy of InvestmentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currencyType = null,Object? sortType = freezed,Object? selectedRegion = freezed,}) {
  return _then(_SortEvent(
currencyType: null == currencyType ? _self.currencyType : currencyType // ignore: cast_nullable_to_non_nullable
as InvestCurrencyType,sortType: freezed == sortType ? _self.sortType : sortType // ignore: cast_nullable_to_non_nullable
as SortType?,selectedRegion: freezed == selectedRegion ? _self.selectedRegion : selectedRegion // ignore: cast_nullable_to_non_nullable
as Region?,
  ));
}


}

/// @nodoc
mixin _$InvestmentsState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvestmentsState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvestmentsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvestmentsState()';
}


}

/// @nodoc
class $InvestmentsStateCopyWith<$Res>  {
$InvestmentsStateCopyWith(InvestmentsState _, $Res Function(InvestmentsState) __);
}


/// Adds pattern-matching-related methods to [InvestmentsState].
extension InvestmentsStatePatterns on InvestmentsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InvestmentsDataState value)?  dataState,TResult Function( InvestmentsErrorState value)?  errorState,TResult Function( InvestmentsLoadingState value)?  loadingState,TResult Function( InvestmentsNoContentState value)?  noContentState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InvestmentsDataState() when dataState != null:
return dataState(_that);case InvestmentsErrorState() when errorState != null:
return errorState(_that);case InvestmentsLoadingState() when loadingState != null:
return loadingState(_that);case InvestmentsNoContentState() when noContentState != null:
return noContentState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InvestmentsDataState value)  dataState,required TResult Function( InvestmentsErrorState value)  errorState,required TResult Function( InvestmentsLoadingState value)  loadingState,required TResult Function( InvestmentsNoContentState value)  noContentState,}){
final _that = this;
switch (_that) {
case InvestmentsDataState():
return dataState(_that);case InvestmentsErrorState():
return errorState(_that);case InvestmentsLoadingState():
return loadingState(_that);case InvestmentsNoContentState():
return noContentState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InvestmentsDataState value)?  dataState,TResult? Function( InvestmentsErrorState value)?  errorState,TResult? Function( InvestmentsLoadingState value)?  loadingState,TResult? Function( InvestmentsNoContentState value)?  noContentState,}){
final _that = this;
switch (_that) {
case InvestmentsDataState() when dataState != null:
return dataState(_that);case InvestmentsErrorState() when errorState != null:
return errorState(_that);case InvestmentsLoadingState() when loadingState != null:
return loadingState(_that);case InvestmentsNoContentState() when noContentState != null:
return noContentState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<MainPageContent> contents,  List<MainPageContent> recommended,  InvestCurrencyType currencyType,  Region? region,  int page,  int pageSize,  bool isLoadingRecommended,  bool isLoadingContents,  bool hasMoreContents,  bool hasMoreRecommended)?  dataState,TResult Function()?  errorState,TResult Function()?  loadingState,TResult Function()?  noContentState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InvestmentsDataState() when dataState != null:
return dataState(_that.contents,_that.recommended,_that.currencyType,_that.region,_that.page,_that.pageSize,_that.isLoadingRecommended,_that.isLoadingContents,_that.hasMoreContents,_that.hasMoreRecommended);case InvestmentsErrorState() when errorState != null:
return errorState();case InvestmentsLoadingState() when loadingState != null:
return loadingState();case InvestmentsNoContentState() when noContentState != null:
return noContentState();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<MainPageContent> contents,  List<MainPageContent> recommended,  InvestCurrencyType currencyType,  Region? region,  int page,  int pageSize,  bool isLoadingRecommended,  bool isLoadingContents,  bool hasMoreContents,  bool hasMoreRecommended)  dataState,required TResult Function()  errorState,required TResult Function()  loadingState,required TResult Function()  noContentState,}) {final _that = this;
switch (_that) {
case InvestmentsDataState():
return dataState(_that.contents,_that.recommended,_that.currencyType,_that.region,_that.page,_that.pageSize,_that.isLoadingRecommended,_that.isLoadingContents,_that.hasMoreContents,_that.hasMoreRecommended);case InvestmentsErrorState():
return errorState();case InvestmentsLoadingState():
return loadingState();case InvestmentsNoContentState():
return noContentState();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<MainPageContent> contents,  List<MainPageContent> recommended,  InvestCurrencyType currencyType,  Region? region,  int page,  int pageSize,  bool isLoadingRecommended,  bool isLoadingContents,  bool hasMoreContents,  bool hasMoreRecommended)?  dataState,TResult? Function()?  errorState,TResult? Function()?  loadingState,TResult? Function()?  noContentState,}) {final _that = this;
switch (_that) {
case InvestmentsDataState() when dataState != null:
return dataState(_that.contents,_that.recommended,_that.currencyType,_that.region,_that.page,_that.pageSize,_that.isLoadingRecommended,_that.isLoadingContents,_that.hasMoreContents,_that.hasMoreRecommended);case InvestmentsErrorState() when errorState != null:
return errorState();case InvestmentsLoadingState() when loadingState != null:
return loadingState();case InvestmentsNoContentState() when noContentState != null:
return noContentState();case _:
  return null;

}
}

}

/// @nodoc


class InvestmentsDataState with DiagnosticableTreeMixin implements InvestmentsState {
   InvestmentsDataState({final  List<MainPageContent> contents = const [], final  List<MainPageContent> recommended = const [], this.currencyType = InvestCurrencyType.uzs, this.region, this.page = 1, this.pageSize = 20, this.isLoadingRecommended = false, this.isLoadingContents = false, this.hasMoreContents = true, this.hasMoreRecommended = true}): _contents = contents,_recommended = recommended;
  

 final  List<MainPageContent> _contents;
@JsonKey() List<MainPageContent> get contents {
  if (_contents is EqualUnmodifiableListView) return _contents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contents);
}

 final  List<MainPageContent> _recommended;
@JsonKey() List<MainPageContent> get recommended {
  if (_recommended is EqualUnmodifiableListView) return _recommended;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommended);
}

@JsonKey() final  InvestCurrencyType currencyType;
 final  Region? region;
@JsonKey() final  int page;
@JsonKey() final  int pageSize;
@JsonKey() final  bool isLoadingRecommended;
@JsonKey() final  bool isLoadingContents;
@JsonKey() final  bool hasMoreContents;
@JsonKey() final  bool hasMoreRecommended;

/// Create a copy of InvestmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvestmentsDataStateCopyWith<InvestmentsDataState> get copyWith => _$InvestmentsDataStateCopyWithImpl<InvestmentsDataState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvestmentsState.dataState'))
    ..add(DiagnosticsProperty('contents', contents))..add(DiagnosticsProperty('recommended', recommended))..add(DiagnosticsProperty('currencyType', currencyType))..add(DiagnosticsProperty('region', region))..add(DiagnosticsProperty('page', page))..add(DiagnosticsProperty('pageSize', pageSize))..add(DiagnosticsProperty('isLoadingRecommended', isLoadingRecommended))..add(DiagnosticsProperty('isLoadingContents', isLoadingContents))..add(DiagnosticsProperty('hasMoreContents', hasMoreContents))..add(DiagnosticsProperty('hasMoreRecommended', hasMoreRecommended));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvestmentsDataState&&const DeepCollectionEquality().equals(other._contents, _contents)&&const DeepCollectionEquality().equals(other._recommended, _recommended)&&(identical(other.currencyType, currencyType) || other.currencyType == currencyType)&&(identical(other.region, region) || other.region == region)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.isLoadingRecommended, isLoadingRecommended) || other.isLoadingRecommended == isLoadingRecommended)&&(identical(other.isLoadingContents, isLoadingContents) || other.isLoadingContents == isLoadingContents)&&(identical(other.hasMoreContents, hasMoreContents) || other.hasMoreContents == hasMoreContents)&&(identical(other.hasMoreRecommended, hasMoreRecommended) || other.hasMoreRecommended == hasMoreRecommended));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contents),const DeepCollectionEquality().hash(_recommended),currencyType,region,page,pageSize,isLoadingRecommended,isLoadingContents,hasMoreContents,hasMoreRecommended);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvestmentsState.dataState(contents: $contents, recommended: $recommended, currencyType: $currencyType, region: $region, page: $page, pageSize: $pageSize, isLoadingRecommended: $isLoadingRecommended, isLoadingContents: $isLoadingContents, hasMoreContents: $hasMoreContents, hasMoreRecommended: $hasMoreRecommended)';
}


}

/// @nodoc
abstract mixin class $InvestmentsDataStateCopyWith<$Res> implements $InvestmentsStateCopyWith<$Res> {
  factory $InvestmentsDataStateCopyWith(InvestmentsDataState value, $Res Function(InvestmentsDataState) _then) = _$InvestmentsDataStateCopyWithImpl;
@useResult
$Res call({
 List<MainPageContent> contents, List<MainPageContent> recommended, InvestCurrencyType currencyType, Region? region, int page, int pageSize, bool isLoadingRecommended, bool isLoadingContents, bool hasMoreContents, bool hasMoreRecommended
});




}
/// @nodoc
class _$InvestmentsDataStateCopyWithImpl<$Res>
    implements $InvestmentsDataStateCopyWith<$Res> {
  _$InvestmentsDataStateCopyWithImpl(this._self, this._then);

  final InvestmentsDataState _self;
  final $Res Function(InvestmentsDataState) _then;

/// Create a copy of InvestmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contents = null,Object? recommended = null,Object? currencyType = null,Object? region = freezed,Object? page = null,Object? pageSize = null,Object? isLoadingRecommended = null,Object? isLoadingContents = null,Object? hasMoreContents = null,Object? hasMoreRecommended = null,}) {
  return _then(InvestmentsDataState(
contents: null == contents ? _self._contents : contents // ignore: cast_nullable_to_non_nullable
as List<MainPageContent>,recommended: null == recommended ? _self._recommended : recommended // ignore: cast_nullable_to_non_nullable
as List<MainPageContent>,currencyType: null == currencyType ? _self.currencyType : currencyType // ignore: cast_nullable_to_non_nullable
as InvestCurrencyType,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as Region?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,isLoadingRecommended: null == isLoadingRecommended ? _self.isLoadingRecommended : isLoadingRecommended // ignore: cast_nullable_to_non_nullable
as bool,isLoadingContents: null == isLoadingContents ? _self.isLoadingContents : isLoadingContents // ignore: cast_nullable_to_non_nullable
as bool,hasMoreContents: null == hasMoreContents ? _self.hasMoreContents : hasMoreContents // ignore: cast_nullable_to_non_nullable
as bool,hasMoreRecommended: null == hasMoreRecommended ? _self.hasMoreRecommended : hasMoreRecommended // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class InvestmentsErrorState with DiagnosticableTreeMixin implements InvestmentsState {
   InvestmentsErrorState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvestmentsState.errorState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvestmentsErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvestmentsState.errorState()';
}


}




/// @nodoc


class InvestmentsLoadingState with DiagnosticableTreeMixin implements InvestmentsState {
   InvestmentsLoadingState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvestmentsState.loadingState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvestmentsLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvestmentsState.loadingState()';
}


}




/// @nodoc


class InvestmentsNoContentState with DiagnosticableTreeMixin implements InvestmentsState {
   InvestmentsNoContentState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvestmentsState.noContentState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvestmentsNoContentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvestmentsState.noContentState()';
}


}




// dart format on
