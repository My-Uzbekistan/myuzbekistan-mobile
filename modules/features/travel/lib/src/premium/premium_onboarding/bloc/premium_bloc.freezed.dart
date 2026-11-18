// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'premium_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PremiumEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PremiumEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumEvent()';
}


}

/// @nodoc
class $PremiumEventCopyWith<$Res>  {
$PremiumEventCopyWith(PremiumEvent _, $Res Function(PremiumEvent) __);
}


/// Adds pattern-matching-related methods to [PremiumEvent].
extension PremiumEventPatterns on PremiumEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Plans value)?  plans,TResult Function( _Status value)?  status,TResult Function( _SelectPlan value)?  selectPlan,TResult Function( _Subscribed value)?  subscribed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Plans() when plans != null:
return plans(_that);case _Status() when status != null:
return status(_that);case _SelectPlan() when selectPlan != null:
return selectPlan(_that);case _Subscribed() when subscribed != null:
return subscribed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Plans value)  plans,required TResult Function( _Status value)  status,required TResult Function( _SelectPlan value)  selectPlan,required TResult Function( _Subscribed value)  subscribed,}){
final _that = this;
switch (_that) {
case _Plans():
return plans(_that);case _Status():
return status(_that);case _SelectPlan():
return selectPlan(_that);case _Subscribed():
return subscribed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Plans value)?  plans,TResult? Function( _Status value)?  status,TResult? Function( _SelectPlan value)?  selectPlan,TResult? Function( _Subscribed value)?  subscribed,}){
final _that = this;
switch (_that) {
case _Plans() when plans != null:
return plans(_that);case _Status() when status != null:
return status(_that);case _SelectPlan() when selectPlan != null:
return selectPlan(_that);case _Subscribed() when subscribed != null:
return subscribed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  plans,TResult Function()?  status,TResult Function( PremiumPlansModel item)?  selectPlan,TResult Function()?  subscribed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Plans() when plans != null:
return plans();case _Status() when status != null:
return status();case _SelectPlan() when selectPlan != null:
return selectPlan(_that.item);case _Subscribed() when subscribed != null:
return subscribed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  plans,required TResult Function()  status,required TResult Function( PremiumPlansModel item)  selectPlan,required TResult Function()  subscribed,}) {final _that = this;
switch (_that) {
case _Plans():
return plans();case _Status():
return status();case _SelectPlan():
return selectPlan(_that.item);case _Subscribed():
return subscribed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  plans,TResult? Function()?  status,TResult? Function( PremiumPlansModel item)?  selectPlan,TResult? Function()?  subscribed,}) {final _that = this;
switch (_that) {
case _Plans() when plans != null:
return plans();case _Status() when status != null:
return status();case _SelectPlan() when selectPlan != null:
return selectPlan(_that.item);case _Subscribed() when subscribed != null:
return subscribed();case _:
  return null;

}
}

}

/// @nodoc


class _Plans implements PremiumEvent {
   _Plans();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Plans);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumEvent.plans()';
}


}




/// @nodoc


class _Status implements PremiumEvent {
   _Status();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Status);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumEvent.status()';
}


}




/// @nodoc


class _SelectPlan implements PremiumEvent {
   _SelectPlan({required this.item});
  

 final  PremiumPlansModel item;

/// Create a copy of PremiumEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectPlanCopyWith<_SelectPlan> get copyWith => __$SelectPlanCopyWithImpl<_SelectPlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectPlan&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'PremiumEvent.selectPlan(item: $item)';
}


}

/// @nodoc
abstract mixin class _$SelectPlanCopyWith<$Res> implements $PremiumEventCopyWith<$Res> {
  factory _$SelectPlanCopyWith(_SelectPlan value, $Res Function(_SelectPlan) _then) = __$SelectPlanCopyWithImpl;
@useResult
$Res call({
 PremiumPlansModel item
});




}
/// @nodoc
class __$SelectPlanCopyWithImpl<$Res>
    implements _$SelectPlanCopyWith<$Res> {
  __$SelectPlanCopyWithImpl(this._self, this._then);

  final _SelectPlan _self;
  final $Res Function(_SelectPlan) _then;

/// Create a copy of PremiumEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_SelectPlan(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as PremiumPlansModel,
  ));
}


}

/// @nodoc


class _Subscribed implements PremiumEvent {
   _Subscribed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subscribed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumEvent.subscribed()';
}


}




/// @nodoc
mixin _$PremiumState {

 bool get isLoading; List<PremiumPlansModel> get plans; PremiumPlansModel? get item; PremiumStatusModel? get status;
/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PremiumStateCopyWith<PremiumState> get copyWith => _$PremiumStateCopyWithImpl<PremiumState>(this as PremiumState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PremiumState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.plans, plans)&&(identical(other.item, item) || other.item == item)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(plans),item,status);

@override
String toString() {
  return 'PremiumState(isLoading: $isLoading, plans: $plans, item: $item, status: $status)';
}


}

/// @nodoc
abstract mixin class $PremiumStateCopyWith<$Res>  {
  factory $PremiumStateCopyWith(PremiumState value, $Res Function(PremiumState) _then) = _$PremiumStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<PremiumPlansModel> plans, PremiumPlansModel? item, PremiumStatusModel? status
});




}
/// @nodoc
class _$PremiumStateCopyWithImpl<$Res>
    implements $PremiumStateCopyWith<$Res> {
  _$PremiumStateCopyWithImpl(this._self, this._then);

  final PremiumState _self;
  final $Res Function(PremiumState) _then;

/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? plans = null,Object? item = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,plans: null == plans ? _self.plans : plans // ignore: cast_nullable_to_non_nullable
as List<PremiumPlansModel>,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as PremiumPlansModel?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PremiumStatusModel?,
  ));
}

}


/// Adds pattern-matching-related methods to [PremiumState].
extension PremiumStatePatterns on PremiumState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PremiumState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PremiumState value)  $default,){
final _that = this;
switch (_that) {
case _PremiumState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PremiumState value)?  $default,){
final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<PremiumPlansModel> plans,  PremiumPlansModel? item,  PremiumStatusModel? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
return $default(_that.isLoading,_that.plans,_that.item,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<PremiumPlansModel> plans,  PremiumPlansModel? item,  PremiumStatusModel? status)  $default,) {final _that = this;
switch (_that) {
case _PremiumState():
return $default(_that.isLoading,_that.plans,_that.item,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<PremiumPlansModel> plans,  PremiumPlansModel? item,  PremiumStatusModel? status)?  $default,) {final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
return $default(_that.isLoading,_that.plans,_that.item,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _PremiumState implements PremiumState {
   _PremiumState({this.isLoading = true, final  List<PremiumPlansModel> plans = const [], this.item, this.status}): _plans = plans;
  

@override@JsonKey() final  bool isLoading;
 final  List<PremiumPlansModel> _plans;
@override@JsonKey() List<PremiumPlansModel> get plans {
  if (_plans is EqualUnmodifiableListView) return _plans;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_plans);
}

@override final  PremiumPlansModel? item;
@override final  PremiumStatusModel? status;

/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PremiumStateCopyWith<_PremiumState> get copyWith => __$PremiumStateCopyWithImpl<_PremiumState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PremiumState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._plans, _plans)&&(identical(other.item, item) || other.item == item)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_plans),item,status);

@override
String toString() {
  return 'PremiumState(isLoading: $isLoading, plans: $plans, item: $item, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PremiumStateCopyWith<$Res> implements $PremiumStateCopyWith<$Res> {
  factory _$PremiumStateCopyWith(_PremiumState value, $Res Function(_PremiumState) _then) = __$PremiumStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<PremiumPlansModel> plans, PremiumPlansModel? item, PremiumStatusModel? status
});




}
/// @nodoc
class __$PremiumStateCopyWithImpl<$Res>
    implements _$PremiumStateCopyWith<$Res> {
  __$PremiumStateCopyWithImpl(this._self, this._then);

  final _PremiumState _self;
  final $Res Function(_PremiumState) _then;

/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? plans = null,Object? item = freezed,Object? status = freezed,}) {
  return _then(_PremiumState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,plans: null == plans ? _self._plans : plans // ignore: cast_nullable_to_non_nullable
as List<PremiumPlansModel>,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as PremiumPlansModel?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PremiumStatusModel?,
  ));
}


}

// dart format on
