// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContractDetailEvent {

 int get id;
/// Create a copy of ContractDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContractDetailEventCopyWith<ContractDetailEvent> get copyWith => _$ContractDetailEventCopyWithImpl<ContractDetailEvent>(this as ContractDetailEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContractDetailEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ContractDetailEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $ContractDetailEventCopyWith<$Res>  {
  factory $ContractDetailEventCopyWith(ContractDetailEvent value, $Res Function(ContractDetailEvent) _then) = _$ContractDetailEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$ContractDetailEventCopyWithImpl<$Res>
    implements $ContractDetailEventCopyWith<$Res> {
  _$ContractDetailEventCopyWithImpl(this._self, this._then);

  final ContractDetailEvent _self;
  final $Res Function(ContractDetailEvent) _then;

/// Create a copy of ContractDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ContractDetailEvent].
extension ContractDetailEventPatterns on ContractDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Load value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Load value)  load,}){
final _that = this;
switch (_that) {
case _Load():
return load(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Load value)?  load,}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  load,}) {final _that = this;
switch (_that) {
case _Load():
return load(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  load,}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Load implements ContractDetailEvent {
   _Load(this.id);
  

@override final  int id;

/// Create a copy of ContractDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadCopyWith<_Load> get copyWith => __$LoadCopyWithImpl<_Load>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Load&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ContractDetailEvent.load(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LoadCopyWith<$Res> implements $ContractDetailEventCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) _then) = __$LoadCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$LoadCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(this._self, this._then);

  final _Load _self;
  final $Res Function(_Load) _then;

/// Create a copy of ContractDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Load(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ContractDetailState {

 bool get isLoading; Contract? get contract; String? get errorMessage;
/// Create a copy of ContractDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContractDetailStateCopyWith<ContractDetailState> get copyWith => _$ContractDetailStateCopyWithImpl<ContractDetailState>(this as ContractDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContractDetailState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.contract, contract) || other.contract == contract)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,contract,errorMessage);

@override
String toString() {
  return 'ContractDetailState(isLoading: $isLoading, contract: $contract, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ContractDetailStateCopyWith<$Res>  {
  factory $ContractDetailStateCopyWith(ContractDetailState value, $Res Function(ContractDetailState) _then) = _$ContractDetailStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, Contract? contract, String? errorMessage
});




}
/// @nodoc
class _$ContractDetailStateCopyWithImpl<$Res>
    implements $ContractDetailStateCopyWith<$Res> {
  _$ContractDetailStateCopyWithImpl(this._self, this._then);

  final ContractDetailState _self;
  final $Res Function(ContractDetailState) _then;

/// Create a copy of ContractDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? contract = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,contract: freezed == contract ? _self.contract : contract // ignore: cast_nullable_to_non_nullable
as Contract?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContractDetailState].
extension ContractDetailStatePatterns on ContractDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContractDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContractDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContractDetailState value)  $default,){
final _that = this;
switch (_that) {
case _ContractDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContractDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _ContractDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  Contract? contract,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContractDetailState() when $default != null:
return $default(_that.isLoading,_that.contract,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  Contract? contract,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ContractDetailState():
return $default(_that.isLoading,_that.contract,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  Contract? contract,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ContractDetailState() when $default != null:
return $default(_that.isLoading,_that.contract,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ContractDetailState implements ContractDetailState {
   _ContractDetailState({this.isLoading = true, this.contract, this.errorMessage});
  

@override@JsonKey() final  bool isLoading;
@override final  Contract? contract;
@override final  String? errorMessage;

/// Create a copy of ContractDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContractDetailStateCopyWith<_ContractDetailState> get copyWith => __$ContractDetailStateCopyWithImpl<_ContractDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContractDetailState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.contract, contract) || other.contract == contract)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,contract,errorMessage);

@override
String toString() {
  return 'ContractDetailState(isLoading: $isLoading, contract: $contract, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ContractDetailStateCopyWith<$Res> implements $ContractDetailStateCopyWith<$Res> {
  factory _$ContractDetailStateCopyWith(_ContractDetailState value, $Res Function(_ContractDetailState) _then) = __$ContractDetailStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, Contract? contract, String? errorMessage
});




}
/// @nodoc
class __$ContractDetailStateCopyWithImpl<$Res>
    implements _$ContractDetailStateCopyWith<$Res> {
  __$ContractDetailStateCopyWithImpl(this._self, this._then);

  final _ContractDetailState _self;
  final $Res Function(_ContractDetailState) _then;

/// Create a copy of ContractDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? contract = freezed,Object? errorMessage = freezed,}) {
  return _then(_ContractDetailState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,contract: freezed == contract ? _self.contract : contract // ignore: cast_nullable_to_non_nullable
as Contract?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
