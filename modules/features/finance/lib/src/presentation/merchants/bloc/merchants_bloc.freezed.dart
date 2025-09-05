// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchants_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MerchantsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MerchantsEvent()';
}


}

/// @nodoc
class $MerchantsEventCopyWith<$Res>  {
$MerchantsEventCopyWith(MerchantsEvent _, $Res Function(MerchantsEvent) __);
}



/// @nodoc
mixin _$MerchantsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MerchantsState()';
}


}

/// @nodoc
class $MerchantsStateCopyWith<$Res>  {
$MerchantsStateCopyWith(MerchantsState _, $Res Function(MerchantsState) __);
}


/// Adds pattern-matching-related methods to [MerchantsState].
extension MerchantsStatePatterns on MerchantsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadingState value)?  loading,TResult Function( DataState value)?  dataState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading(_that);case DataState() when dataState != null:
return dataState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadingState value)  loading,required TResult Function( DataState value)  dataState,}){
final _that = this;
switch (_that) {
case LoadingState():
return loading(_that);case DataState():
return dataState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadingState value)?  loading,TResult? Function( DataState value)?  dataState,}){
final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading(_that);case DataState() when dataState != null:
return dataState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<GroupBy<Merchant>> groups)?  dataState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading();case DataState() when dataState != null:
return dataState(_that.groups);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<GroupBy<Merchant>> groups)  dataState,}) {final _that = this;
switch (_that) {
case LoadingState():
return loading();case DataState():
return dataState(_that.groups);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<GroupBy<Merchant>> groups)?  dataState,}) {final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading();case DataState() when dataState != null:
return dataState(_that.groups);case _:
  return null;

}
}

}

/// @nodoc


class LoadingState implements MerchantsState {
   LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MerchantsState.loading()';
}


}




/// @nodoc


class DataState implements MerchantsState {
   DataState({required final  List<GroupBy<Merchant>> groups}): _groups = groups;
  

 final  List<GroupBy<Merchant>> _groups;
 List<GroupBy<Merchant>> get groups {
  if (_groups is EqualUnmodifiableListView) return _groups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groups);
}


/// Create a copy of MerchantsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataStateCopyWith<DataState> get copyWith => _$DataStateCopyWithImpl<DataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataState&&const DeepCollectionEquality().equals(other._groups, _groups));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_groups));

@override
String toString() {
  return 'MerchantsState.dataState(groups: $groups)';
}


}

/// @nodoc
abstract mixin class $DataStateCopyWith<$Res> implements $MerchantsStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) _then) = _$DataStateCopyWithImpl;
@useResult
$Res call({
 List<GroupBy<Merchant>> groups
});




}
/// @nodoc
class _$DataStateCopyWithImpl<$Res>
    implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(this._self, this._then);

  final DataState _self;
  final $Res Function(DataState) _then;

/// Create a copy of MerchantsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groups = null,}) {
  return _then(DataState(
groups: null == groups ? _self._groups : groups // ignore: cast_nullable_to_non_nullable
as List<GroupBy<Merchant>>,
  ));
}


}

// dart format on
