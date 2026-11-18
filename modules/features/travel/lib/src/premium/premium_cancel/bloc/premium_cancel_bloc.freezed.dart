// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'premium_cancel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PremiumCancelEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PremiumCancelEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumCancelEvent()';
}


}

/// @nodoc
class $PremiumCancelEventCopyWith<$Res>  {
$PremiumCancelEventCopyWith(PremiumCancelEvent _, $Res Function(PremiumCancelEvent) __);
}


/// Adds pattern-matching-related methods to [PremiumCancelEvent].
extension PremiumCancelEventPatterns on PremiumCancelEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Cancel value)?  cancel,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cancel() when cancel != null:
return cancel(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Cancel value)  cancel,}){
final _that = this;
switch (_that) {
case _Cancel():
return cancel(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Cancel value)?  cancel,}){
final _that = this;
switch (_that) {
case _Cancel() when cancel != null:
return cancel(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  cancel,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cancel() when cancel != null:
return cancel();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  cancel,}) {final _that = this;
switch (_that) {
case _Cancel():
return cancel();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  cancel,}) {final _that = this;
switch (_that) {
case _Cancel() when cancel != null:
return cancel();case _:
  return null;

}
}

}

/// @nodoc


class _Cancel implements PremiumCancelEvent {
   _Cancel();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cancel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumCancelEvent.cancel()';
}


}




/// @nodoc
mixin _$PremiumCancelState {

 bool get isLoading; bool get isCancelling; bool get isCancelled; PremiumStatusModel? get status;
/// Create a copy of PremiumCancelState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PremiumCancelStateCopyWith<PremiumCancelState> get copyWith => _$PremiumCancelStateCopyWithImpl<PremiumCancelState>(this as PremiumCancelState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PremiumCancelState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCancelling, isCancelling) || other.isCancelling == isCancelling)&&(identical(other.isCancelled, isCancelled) || other.isCancelled == isCancelled)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isCancelling,isCancelled,status);

@override
String toString() {
  return 'PremiumCancelState(isLoading: $isLoading, isCancelling: $isCancelling, isCancelled: $isCancelled, status: $status)';
}


}

/// @nodoc
abstract mixin class $PremiumCancelStateCopyWith<$Res>  {
  factory $PremiumCancelStateCopyWith(PremiumCancelState value, $Res Function(PremiumCancelState) _then) = _$PremiumCancelStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isCancelling, bool isCancelled, PremiumStatusModel? status
});




}
/// @nodoc
class _$PremiumCancelStateCopyWithImpl<$Res>
    implements $PremiumCancelStateCopyWith<$Res> {
  _$PremiumCancelStateCopyWithImpl(this._self, this._then);

  final PremiumCancelState _self;
  final $Res Function(PremiumCancelState) _then;

/// Create a copy of PremiumCancelState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isCancelling = null,Object? isCancelled = null,Object? status = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCancelling: null == isCancelling ? _self.isCancelling : isCancelling // ignore: cast_nullable_to_non_nullable
as bool,isCancelled: null == isCancelled ? _self.isCancelled : isCancelled // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PremiumStatusModel?,
  ));
}

}


/// Adds pattern-matching-related methods to [PremiumCancelState].
extension PremiumCancelStatePatterns on PremiumCancelState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PremiumCancelState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PremiumCancelState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PremiumCancelState value)  $default,){
final _that = this;
switch (_that) {
case _PremiumCancelState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PremiumCancelState value)?  $default,){
final _that = this;
switch (_that) {
case _PremiumCancelState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isCancelling,  bool isCancelled,  PremiumStatusModel? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PremiumCancelState() when $default != null:
return $default(_that.isLoading,_that.isCancelling,_that.isCancelled,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isCancelling,  bool isCancelled,  PremiumStatusModel? status)  $default,) {final _that = this;
switch (_that) {
case _PremiumCancelState():
return $default(_that.isLoading,_that.isCancelling,_that.isCancelled,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isCancelling,  bool isCancelled,  PremiumStatusModel? status)?  $default,) {final _that = this;
switch (_that) {
case _PremiumCancelState() when $default != null:
return $default(_that.isLoading,_that.isCancelling,_that.isCancelled,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _PremiumCancelState implements PremiumCancelState {
   _PremiumCancelState({this.isLoading = true, this.isCancelling = false, this.isCancelled = false, this.status});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isCancelling;
@override@JsonKey() final  bool isCancelled;
@override final  PremiumStatusModel? status;

/// Create a copy of PremiumCancelState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PremiumCancelStateCopyWith<_PremiumCancelState> get copyWith => __$PremiumCancelStateCopyWithImpl<_PremiumCancelState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PremiumCancelState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCancelling, isCancelling) || other.isCancelling == isCancelling)&&(identical(other.isCancelled, isCancelled) || other.isCancelled == isCancelled)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isCancelling,isCancelled,status);

@override
String toString() {
  return 'PremiumCancelState(isLoading: $isLoading, isCancelling: $isCancelling, isCancelled: $isCancelled, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PremiumCancelStateCopyWith<$Res> implements $PremiumCancelStateCopyWith<$Res> {
  factory _$PremiumCancelStateCopyWith(_PremiumCancelState value, $Res Function(_PremiumCancelState) _then) = __$PremiumCancelStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isCancelling, bool isCancelled, PremiumStatusModel? status
});




}
/// @nodoc
class __$PremiumCancelStateCopyWithImpl<$Res>
    implements _$PremiumCancelStateCopyWith<$Res> {
  __$PremiumCancelStateCopyWithImpl(this._self, this._then);

  final _PremiumCancelState _self;
  final $Res Function(_PremiumCancelState) _then;

/// Create a copy of PremiumCancelState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isCancelling = null,Object? isCancelled = null,Object? status = freezed,}) {
  return _then(_PremiumCancelState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCancelling: null == isCancelling ? _self.isCancelling : isCancelling // ignore: cast_nullable_to_non_nullable
as bool,isCancelled: null == isCancelled ? _self.isCancelled : isCancelled // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PremiumStatusModel?,
  ));
}


}

// dart format on
