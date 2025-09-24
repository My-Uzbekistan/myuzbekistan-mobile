// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryEvent()';
}


}

/// @nodoc
class $HistoryEventCopyWith<$Res>  {
$HistoryEventCopyWith(HistoryEvent _, $Res Function(HistoryEvent) __);
}


/// Adds pattern-matching-related methods to [HistoryEvent].
extension HistoryEventPatterns on HistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HistoryLoadNextEvent value)?  loadNext,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HistoryLoadNextEvent() when loadNext != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HistoryLoadNextEvent value)  loadNext,}){
final _that = this;
switch (_that) {
case HistoryLoadNextEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HistoryLoadNextEvent value)?  loadNext,}){
final _that = this;
switch (_that) {
case HistoryLoadNextEvent() when loadNext != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadNext,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HistoryLoadNextEvent() when loadNext != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadNext,}) {final _that = this;
switch (_that) {
case HistoryLoadNextEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadNext,}) {final _that = this;
switch (_that) {
case HistoryLoadNextEvent() when loadNext != null:
return loadNext();case _:
  return null;

}
}

}

/// @nodoc


class HistoryLoadNextEvent implements HistoryEvent {
  const HistoryLoadNextEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryLoadNextEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryEvent.loadNext()';
}


}




/// @nodoc
mixin _$HistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState()';
}


}

/// @nodoc
class $HistoryStateCopyWith<$Res>  {
$HistoryStateCopyWith(HistoryState _, $Res Function(HistoryState) __);
}


/// Adds pattern-matching-related methods to [HistoryState].
extension HistoryStatePatterns on HistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HistoryLoadingState value)?  loading,TResult Function( HistoryLoadedState value)?  loaded,TResult Function( HistoryErrorState value)?  errorState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HistoryLoadingState() when loading != null:
return loading(_that);case HistoryLoadedState() when loaded != null:
return loaded(_that);case HistoryErrorState() when errorState != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HistoryLoadingState value)  loading,required TResult Function( HistoryLoadedState value)  loaded,required TResult Function( HistoryErrorState value)  errorState,}){
final _that = this;
switch (_that) {
case HistoryLoadingState():
return loading(_that);case HistoryLoadedState():
return loaded(_that);case HistoryErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HistoryLoadingState value)?  loading,TResult? Function( HistoryLoadedState value)?  loaded,TResult? Function( HistoryErrorState value)?  errorState,}){
final _that = this;
switch (_that) {
case HistoryLoadingState() when loading != null:
return loading(_that);case HistoryLoadedState() when loaded != null:
return loaded(_that);case HistoryErrorState() when errorState != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<HistoryGroup> items)?  loaded,TResult Function()?  errorState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HistoryLoadingState() when loading != null:
return loading();case HistoryLoadedState() when loaded != null:
return loaded(_that.items);case HistoryErrorState() when errorState != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<HistoryGroup> items)  loaded,required TResult Function()  errorState,}) {final _that = this;
switch (_that) {
case HistoryLoadingState():
return loading();case HistoryLoadedState():
return loaded(_that.items);case HistoryErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<HistoryGroup> items)?  loaded,TResult? Function()?  errorState,}) {final _that = this;
switch (_that) {
case HistoryLoadingState() when loading != null:
return loading();case HistoryLoadedState() when loaded != null:
return loaded(_that.items);case HistoryErrorState() when errorState != null:
return errorState();case _:
  return null;

}
}

}

/// @nodoc


class HistoryLoadingState implements HistoryState {
  const HistoryLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState.loading()';
}


}




/// @nodoc


class HistoryLoadedState implements HistoryState {
  const HistoryLoadedState({final  List<HistoryGroup> items = const []}): _items = items;
  

 final  List<HistoryGroup> _items;
@JsonKey() List<HistoryGroup> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryLoadedStateCopyWith<HistoryLoadedState> get copyWith => _$HistoryLoadedStateCopyWithImpl<HistoryLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryLoadedState&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'HistoryState.loaded(items: $items)';
}


}

/// @nodoc
abstract mixin class $HistoryLoadedStateCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory $HistoryLoadedStateCopyWith(HistoryLoadedState value, $Res Function(HistoryLoadedState) _then) = _$HistoryLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<HistoryGroup> items
});




}
/// @nodoc
class _$HistoryLoadedStateCopyWithImpl<$Res>
    implements $HistoryLoadedStateCopyWith<$Res> {
  _$HistoryLoadedStateCopyWithImpl(this._self, this._then);

  final HistoryLoadedState _self;
  final $Res Function(HistoryLoadedState) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(HistoryLoadedState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<HistoryGroup>,
  ));
}


}

/// @nodoc


class HistoryErrorState implements HistoryState {
  const HistoryErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState.errorState()';
}


}




// dart format on
