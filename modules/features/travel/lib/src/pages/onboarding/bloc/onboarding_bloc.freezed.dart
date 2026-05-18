// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingState {

 List<OnboardingItem>? get items;
/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingStateCopyWith<OnboardingState> get copyWith => _$OnboardingStateCopyWithImpl<OnboardingState>(this as OnboardingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingState&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'OnboardingState(items: $items)';
}


}

/// @nodoc
abstract mixin class $OnboardingStateCopyWith<$Res>  {
  factory $OnboardingStateCopyWith(OnboardingState value, $Res Function(OnboardingState) _then) = _$OnboardingStateCopyWithImpl;
@useResult
$Res call({
 List<OnboardingItem>? items
});




}
/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._self, this._then);

  final OnboardingState _self;
  final $Res Function(OnboardingState) _then;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = freezed,}) {
  return _then(_self.copyWith(
items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OnboardingItem>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingState].
extension OnboardingStatePatterns on OnboardingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingState value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingState value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OnboardingItem>? items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OnboardingItem>? items)  $default,) {final _that = this;
switch (_that) {
case _OnboardingState():
return $default(_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OnboardingItem>? items)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingState implements OnboardingState {
   _OnboardingState({final  List<OnboardingItem>? items}): _items = items;
  

 final  List<OnboardingItem>? _items;
@override List<OnboardingItem>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingStateCopyWith<_OnboardingState> get copyWith => __$OnboardingStateCopyWithImpl<_OnboardingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingState&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'OnboardingState(items: $items)';
}


}

/// @nodoc
abstract mixin class _$OnboardingStateCopyWith<$Res> implements $OnboardingStateCopyWith<$Res> {
  factory _$OnboardingStateCopyWith(_OnboardingState value, $Res Function(_OnboardingState) _then) = __$OnboardingStateCopyWithImpl;
@override @useResult
$Res call({
 List<OnboardingItem>? items
});




}
/// @nodoc
class __$OnboardingStateCopyWithImpl<$Res>
    implements _$OnboardingStateCopyWith<$Res> {
  __$OnboardingStateCopyWithImpl(this._self, this._then);

  final _OnboardingState _self;
  final $Res Function(_OnboardingState) _then;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = freezed,}) {
  return _then(_OnboardingState(
items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OnboardingItem>?,
  ));
}


}

/// @nodoc
mixin _$OnboardingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent()';
}


}

/// @nodoc
class $OnboardingEventCopyWith<$Res>  {
$OnboardingEventCopyWith(OnboardingEvent _, $Res Function(OnboardingEvent) __);
}


/// Adds pattern-matching-related methods to [OnboardingEvent].
extension OnboardingEventPatterns on OnboardingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OnboardingLoadDataEvent value)?  loadData,TResult Function( _OnboardingTrackViewEvent value)?  trackView,TResult Function( _OnboardingTrackClicEvent value)?  trackClick,TResult Function( _OnboardingClearEvent value)?  clearDataEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingLoadDataEvent() when loadData != null:
return loadData(_that);case _OnboardingTrackViewEvent() when trackView != null:
return trackView(_that);case _OnboardingTrackClicEvent() when trackClick != null:
return trackClick(_that);case _OnboardingClearEvent() when clearDataEvent != null:
return clearDataEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OnboardingLoadDataEvent value)  loadData,required TResult Function( _OnboardingTrackViewEvent value)  trackView,required TResult Function( _OnboardingTrackClicEvent value)  trackClick,required TResult Function( _OnboardingClearEvent value)  clearDataEvent,}){
final _that = this;
switch (_that) {
case _OnboardingLoadDataEvent():
return loadData(_that);case _OnboardingTrackViewEvent():
return trackView(_that);case _OnboardingTrackClicEvent():
return trackClick(_that);case _OnboardingClearEvent():
return clearDataEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OnboardingLoadDataEvent value)?  loadData,TResult? Function( _OnboardingTrackViewEvent value)?  trackView,TResult? Function( _OnboardingTrackClicEvent value)?  trackClick,TResult? Function( _OnboardingClearEvent value)?  clearDataEvent,}){
final _that = this;
switch (_that) {
case _OnboardingLoadDataEvent() when loadData != null:
return loadData(_that);case _OnboardingTrackViewEvent() when trackView != null:
return trackView(_that);case _OnboardingTrackClicEvent() when trackClick != null:
return trackClick(_that);case _OnboardingClearEvent() when clearDataEvent != null:
return clearDataEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadData,TResult Function( int index)?  trackView,TResult Function( int index)?  trackClick,TResult Function()?  clearDataEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingLoadDataEvent() when loadData != null:
return loadData();case _OnboardingTrackViewEvent() when trackView != null:
return trackView(_that.index);case _OnboardingTrackClicEvent() when trackClick != null:
return trackClick(_that.index);case _OnboardingClearEvent() when clearDataEvent != null:
return clearDataEvent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadData,required TResult Function( int index)  trackView,required TResult Function( int index)  trackClick,required TResult Function()  clearDataEvent,}) {final _that = this;
switch (_that) {
case _OnboardingLoadDataEvent():
return loadData();case _OnboardingTrackViewEvent():
return trackView(_that.index);case _OnboardingTrackClicEvent():
return trackClick(_that.index);case _OnboardingClearEvent():
return clearDataEvent();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadData,TResult? Function( int index)?  trackView,TResult? Function( int index)?  trackClick,TResult? Function()?  clearDataEvent,}) {final _that = this;
switch (_that) {
case _OnboardingLoadDataEvent() when loadData != null:
return loadData();case _OnboardingTrackViewEvent() when trackView != null:
return trackView(_that.index);case _OnboardingTrackClicEvent() when trackClick != null:
return trackClick(_that.index);case _OnboardingClearEvent() when clearDataEvent != null:
return clearDataEvent();case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingLoadDataEvent implements OnboardingEvent {
   _OnboardingLoadDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingLoadDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent.loadData()';
}


}




/// @nodoc


class _OnboardingTrackViewEvent implements OnboardingEvent {
   _OnboardingTrackViewEvent({required this.index});
  

 final  int index;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingTrackViewEventCopyWith<_OnboardingTrackViewEvent> get copyWith => __$OnboardingTrackViewEventCopyWithImpl<_OnboardingTrackViewEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingTrackViewEvent&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'OnboardingEvent.trackView(index: $index)';
}


}

/// @nodoc
abstract mixin class _$OnboardingTrackViewEventCopyWith<$Res> implements $OnboardingEventCopyWith<$Res> {
  factory _$OnboardingTrackViewEventCopyWith(_OnboardingTrackViewEvent value, $Res Function(_OnboardingTrackViewEvent) _then) = __$OnboardingTrackViewEventCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$OnboardingTrackViewEventCopyWithImpl<$Res>
    implements _$OnboardingTrackViewEventCopyWith<$Res> {
  __$OnboardingTrackViewEventCopyWithImpl(this._self, this._then);

  final _OnboardingTrackViewEvent _self;
  final $Res Function(_OnboardingTrackViewEvent) _then;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_OnboardingTrackViewEvent(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _OnboardingTrackClicEvent implements OnboardingEvent {
   _OnboardingTrackClicEvent({required this.index});
  

 final  int index;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingTrackClicEventCopyWith<_OnboardingTrackClicEvent> get copyWith => __$OnboardingTrackClicEventCopyWithImpl<_OnboardingTrackClicEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingTrackClicEvent&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'OnboardingEvent.trackClick(index: $index)';
}


}

/// @nodoc
abstract mixin class _$OnboardingTrackClicEventCopyWith<$Res> implements $OnboardingEventCopyWith<$Res> {
  factory _$OnboardingTrackClicEventCopyWith(_OnboardingTrackClicEvent value, $Res Function(_OnboardingTrackClicEvent) _then) = __$OnboardingTrackClicEventCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$OnboardingTrackClicEventCopyWithImpl<$Res>
    implements _$OnboardingTrackClicEventCopyWith<$Res> {
  __$OnboardingTrackClicEventCopyWithImpl(this._self, this._then);

  final _OnboardingTrackClicEvent _self;
  final $Res Function(_OnboardingTrackClicEvent) _then;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_OnboardingTrackClicEvent(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _OnboardingClearEvent implements OnboardingEvent {
   _OnboardingClearEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingClearEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent.clearDataEvent()';
}


}




// dart format on
