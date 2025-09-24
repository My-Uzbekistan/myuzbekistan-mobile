// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MoreEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreEvent()';
}


}

/// @nodoc
class $MoreEventCopyWith<$Res>  {
$MoreEventCopyWith(MoreEvent _, $Res Function(MoreEvent) __);
}


/// Adds pattern-matching-related methods to [MoreEvent].
extension MoreEventPatterns on MoreEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MoreEventFetch value)?  fetch,TResult Function( _MoreCheckedPrayerWidget value)?  checkedPrayerWidget,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoreEventFetch() when fetch != null:
return fetch(_that);case _MoreCheckedPrayerWidget() when checkedPrayerWidget != null:
return checkedPrayerWidget(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MoreEventFetch value)  fetch,required TResult Function( _MoreCheckedPrayerWidget value)  checkedPrayerWidget,}){
final _that = this;
switch (_that) {
case _MoreEventFetch():
return fetch(_that);case _MoreCheckedPrayerWidget():
return checkedPrayerWidget(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MoreEventFetch value)?  fetch,TResult? Function( _MoreCheckedPrayerWidget value)?  checkedPrayerWidget,}){
final _that = this;
switch (_that) {
case _MoreEventFetch() when fetch != null:
return fetch(_that);case _MoreCheckedPrayerWidget() when checkedPrayerWidget != null:
return checkedPrayerWidget(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,TResult Function()?  checkedPrayerWidget,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoreEventFetch() when fetch != null:
return fetch();case _MoreCheckedPrayerWidget() when checkedPrayerWidget != null:
return checkedPrayerWidget();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,required TResult Function()  checkedPrayerWidget,}) {final _that = this;
switch (_that) {
case _MoreEventFetch():
return fetch();case _MoreCheckedPrayerWidget():
return checkedPrayerWidget();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,TResult? Function()?  checkedPrayerWidget,}) {final _that = this;
switch (_that) {
case _MoreEventFetch() when fetch != null:
return fetch();case _MoreCheckedPrayerWidget() when checkedPrayerWidget != null:
return checkedPrayerWidget();case _:
  return null;

}
}

}

/// @nodoc


class _MoreEventFetch implements MoreEvent {
   _MoreEventFetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreEventFetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreEvent.fetch()';
}


}




/// @nodoc


class _MoreCheckedPrayerWidget implements MoreEvent {
   _MoreCheckedPrayerWidget();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreCheckedPrayerWidget);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreEvent.checkedPrayerWidget()';
}


}




/// @nodoc
mixin _$MoreState {

 List<MoreItem> get abouts; List<MoreItem> get useFull; bool get prayerWidgetChecked; bool get isLoading;
/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoreStateCopyWith<MoreState> get copyWith => _$MoreStateCopyWithImpl<MoreState>(this as MoreState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreState&&const DeepCollectionEquality().equals(other.abouts, abouts)&&const DeepCollectionEquality().equals(other.useFull, useFull)&&(identical(other.prayerWidgetChecked, prayerWidgetChecked) || other.prayerWidgetChecked == prayerWidgetChecked)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(abouts),const DeepCollectionEquality().hash(useFull),prayerWidgetChecked,isLoading);

@override
String toString() {
  return 'MoreState(abouts: $abouts, useFull: $useFull, prayerWidgetChecked: $prayerWidgetChecked, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $MoreStateCopyWith<$Res>  {
  factory $MoreStateCopyWith(MoreState value, $Res Function(MoreState) _then) = _$MoreStateCopyWithImpl;
@useResult
$Res call({
 List<MoreItem> abouts, List<MoreItem> useFull, bool prayerWidgetChecked, bool isLoading
});




}
/// @nodoc
class _$MoreStateCopyWithImpl<$Res>
    implements $MoreStateCopyWith<$Res> {
  _$MoreStateCopyWithImpl(this._self, this._then);

  final MoreState _self;
  final $Res Function(MoreState) _then;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? abouts = null,Object? useFull = null,Object? prayerWidgetChecked = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
abouts: null == abouts ? _self.abouts : abouts // ignore: cast_nullable_to_non_nullable
as List<MoreItem>,useFull: null == useFull ? _self.useFull : useFull // ignore: cast_nullable_to_non_nullable
as List<MoreItem>,prayerWidgetChecked: null == prayerWidgetChecked ? _self.prayerWidgetChecked : prayerWidgetChecked // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MoreState].
extension MoreStatePatterns on MoreState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( MoreDataState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case MoreDataState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( MoreDataState value)  $default,){
final _that = this;
switch (_that) {
case MoreDataState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( MoreDataState value)?  $default,){
final _that = this;
switch (_that) {
case MoreDataState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MoreItem> abouts,  List<MoreItem> useFull,  bool prayerWidgetChecked,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case MoreDataState() when $default != null:
return $default(_that.abouts,_that.useFull,_that.prayerWidgetChecked,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MoreItem> abouts,  List<MoreItem> useFull,  bool prayerWidgetChecked,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case MoreDataState():
return $default(_that.abouts,_that.useFull,_that.prayerWidgetChecked,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MoreItem> abouts,  List<MoreItem> useFull,  bool prayerWidgetChecked,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case MoreDataState() when $default != null:
return $default(_that.abouts,_that.useFull,_that.prayerWidgetChecked,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class MoreDataState implements MoreState {
   MoreDataState({final  List<MoreItem> abouts = const [], final  List<MoreItem> useFull = const [], this.prayerWidgetChecked = false, this.isLoading = true}): _abouts = abouts,_useFull = useFull;
  

 final  List<MoreItem> _abouts;
@override@JsonKey() List<MoreItem> get abouts {
  if (_abouts is EqualUnmodifiableListView) return _abouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abouts);
}

 final  List<MoreItem> _useFull;
@override@JsonKey() List<MoreItem> get useFull {
  if (_useFull is EqualUnmodifiableListView) return _useFull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_useFull);
}

@override@JsonKey() final  bool prayerWidgetChecked;
@override@JsonKey() final  bool isLoading;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoreDataStateCopyWith<MoreDataState> get copyWith => _$MoreDataStateCopyWithImpl<MoreDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreDataState&&const DeepCollectionEquality().equals(other._abouts, _abouts)&&const DeepCollectionEquality().equals(other._useFull, _useFull)&&(identical(other.prayerWidgetChecked, prayerWidgetChecked) || other.prayerWidgetChecked == prayerWidgetChecked)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_abouts),const DeepCollectionEquality().hash(_useFull),prayerWidgetChecked,isLoading);

@override
String toString() {
  return 'MoreState(abouts: $abouts, useFull: $useFull, prayerWidgetChecked: $prayerWidgetChecked, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $MoreDataStateCopyWith<$Res> implements $MoreStateCopyWith<$Res> {
  factory $MoreDataStateCopyWith(MoreDataState value, $Res Function(MoreDataState) _then) = _$MoreDataStateCopyWithImpl;
@override @useResult
$Res call({
 List<MoreItem> abouts, List<MoreItem> useFull, bool prayerWidgetChecked, bool isLoading
});




}
/// @nodoc
class _$MoreDataStateCopyWithImpl<$Res>
    implements $MoreDataStateCopyWith<$Res> {
  _$MoreDataStateCopyWithImpl(this._self, this._then);

  final MoreDataState _self;
  final $Res Function(MoreDataState) _then;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? abouts = null,Object? useFull = null,Object? prayerWidgetChecked = null,Object? isLoading = null,}) {
  return _then(MoreDataState(
abouts: null == abouts ? _self._abouts : abouts // ignore: cast_nullable_to_non_nullable
as List<MoreItem>,useFull: null == useFull ? _self._useFull : useFull // ignore: cast_nullable_to_non_nullable
as List<MoreItem>,prayerWidgetChecked: null == prayerWidgetChecked ? _self.prayerWidgetChecked : prayerWidgetChecked // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
