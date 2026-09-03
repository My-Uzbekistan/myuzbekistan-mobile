// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GiftBlocEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiftBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GiftBlocEvent()';
}


}

/// @nodoc
class $GiftBlocEventCopyWith<$Res>  {
$GiftBlocEventCopyWith(GiftBlocEvent _, $Res Function(GiftBlocEvent) __);
}


/// Adds pattern-matching-related methods to [GiftBlocEvent].
extension GiftBlocEventPatterns on GiftBlocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialGiftBlocEvent value)?  initial,TResult Function( _ActiveteGiftGiftBlocEvent value)?  activeGift,TResult Function( _LoadGiftHistoryGiftBlocEvent value)?  loadGiftHistory,TResult Function( _ClearActiveGiftBlocEvent value)?  clearActiveGift,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialGiftBlocEvent() when initial != null:
return initial(_that);case _ActiveteGiftGiftBlocEvent() when activeGift != null:
return activeGift(_that);case _LoadGiftHistoryGiftBlocEvent() when loadGiftHistory != null:
return loadGiftHistory(_that);case _ClearActiveGiftBlocEvent() when clearActiveGift != null:
return clearActiveGift(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialGiftBlocEvent value)  initial,required TResult Function( _ActiveteGiftGiftBlocEvent value)  activeGift,required TResult Function( _LoadGiftHistoryGiftBlocEvent value)  loadGiftHistory,required TResult Function( _ClearActiveGiftBlocEvent value)  clearActiveGift,}){
final _that = this;
switch (_that) {
case _InitialGiftBlocEvent():
return initial(_that);case _ActiveteGiftGiftBlocEvent():
return activeGift(_that);case _LoadGiftHistoryGiftBlocEvent():
return loadGiftHistory(_that);case _ClearActiveGiftBlocEvent():
return clearActiveGift(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialGiftBlocEvent value)?  initial,TResult? Function( _ActiveteGiftGiftBlocEvent value)?  activeGift,TResult? Function( _LoadGiftHistoryGiftBlocEvent value)?  loadGiftHistory,TResult? Function( _ClearActiveGiftBlocEvent value)?  clearActiveGift,}){
final _that = this;
switch (_that) {
case _InitialGiftBlocEvent() when initial != null:
return initial(_that);case _ActiveteGiftGiftBlocEvent() when activeGift != null:
return activeGift(_that);case _LoadGiftHistoryGiftBlocEvent() when loadGiftHistory != null:
return loadGiftHistory(_that);case _ClearActiveGiftBlocEvent() when clearActiveGift != null:
return clearActiveGift(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  activeGift,TResult Function()?  loadGiftHistory,TResult Function()?  clearActiveGift,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialGiftBlocEvent() when initial != null:
return initial();case _ActiveteGiftGiftBlocEvent() when activeGift != null:
return activeGift();case _LoadGiftHistoryGiftBlocEvent() when loadGiftHistory != null:
return loadGiftHistory();case _ClearActiveGiftBlocEvent() when clearActiveGift != null:
return clearActiveGift();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  activeGift,required TResult Function()  loadGiftHistory,required TResult Function()  clearActiveGift,}) {final _that = this;
switch (_that) {
case _InitialGiftBlocEvent():
return initial();case _ActiveteGiftGiftBlocEvent():
return activeGift();case _LoadGiftHistoryGiftBlocEvent():
return loadGiftHistory();case _ClearActiveGiftBlocEvent():
return clearActiveGift();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  activeGift,TResult? Function()?  loadGiftHistory,TResult? Function()?  clearActiveGift,}) {final _that = this;
switch (_that) {
case _InitialGiftBlocEvent() when initial != null:
return initial();case _ActiveteGiftGiftBlocEvent() when activeGift != null:
return activeGift();case _LoadGiftHistoryGiftBlocEvent() when loadGiftHistory != null:
return loadGiftHistory();case _ClearActiveGiftBlocEvent() when clearActiveGift != null:
return clearActiveGift();case _:
  return null;

}
}

}

/// @nodoc


class _InitialGiftBlocEvent implements GiftBlocEvent {
   _InitialGiftBlocEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialGiftBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GiftBlocEvent.initial()';
}


}




/// @nodoc


class _ActiveteGiftGiftBlocEvent implements GiftBlocEvent {
   _ActiveteGiftGiftBlocEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActiveteGiftGiftBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GiftBlocEvent.activeGift()';
}


}




/// @nodoc


class _LoadGiftHistoryGiftBlocEvent implements GiftBlocEvent {
   _LoadGiftHistoryGiftBlocEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadGiftHistoryGiftBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GiftBlocEvent.loadGiftHistory()';
}


}




/// @nodoc


class _ClearActiveGiftBlocEvent implements GiftBlocEvent {
   _ClearActiveGiftBlocEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearActiveGiftBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GiftBlocEvent.clearActiveGift()';
}


}




/// @nodoc
mixin _$GiftBlocState {

 bool get isLoading; dynamic get haveGift; ClaimStatus? get claimStatus; int? get activeStatusCode; dynamic get giftActivated; ClaimHistory? get activeClaim; List<ClaimHistory> get items; String? get errorMessage;
/// Create a copy of GiftBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GiftBlocStateCopyWith<GiftBlocState> get copyWith => _$GiftBlocStateCopyWithImpl<GiftBlocState>(this as GiftBlocState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiftBlocState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.haveGift, haveGift)&&(identical(other.claimStatus, claimStatus) || other.claimStatus == claimStatus)&&(identical(other.activeStatusCode, activeStatusCode) || other.activeStatusCode == activeStatusCode)&&const DeepCollectionEquality().equals(other.giftActivated, giftActivated)&&(identical(other.activeClaim, activeClaim) || other.activeClaim == activeClaim)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(haveGift),claimStatus,activeStatusCode,const DeepCollectionEquality().hash(giftActivated),activeClaim,const DeepCollectionEquality().hash(items),errorMessage);

@override
String toString() {
  return 'GiftBlocState(isLoading: $isLoading, haveGift: $haveGift, claimStatus: $claimStatus, activeStatusCode: $activeStatusCode, giftActivated: $giftActivated, activeClaim: $activeClaim, items: $items, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $GiftBlocStateCopyWith<$Res>  {
  factory $GiftBlocStateCopyWith(GiftBlocState value, $Res Function(GiftBlocState) _then) = _$GiftBlocStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, dynamic haveGift, ClaimStatus? claimStatus, int? activeStatusCode, dynamic giftActivated, ClaimHistory? activeClaim, List<ClaimHistory> items, String? errorMessage
});




}
/// @nodoc
class _$GiftBlocStateCopyWithImpl<$Res>
    implements $GiftBlocStateCopyWith<$Res> {
  _$GiftBlocStateCopyWithImpl(this._self, this._then);

  final GiftBlocState _self;
  final $Res Function(GiftBlocState) _then;

/// Create a copy of GiftBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? haveGift = freezed,Object? claimStatus = freezed,Object? activeStatusCode = freezed,Object? giftActivated = freezed,Object? activeClaim = freezed,Object? items = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,haveGift: freezed == haveGift ? _self.haveGift : haveGift // ignore: cast_nullable_to_non_nullable
as dynamic,claimStatus: freezed == claimStatus ? _self.claimStatus : claimStatus // ignore: cast_nullable_to_non_nullable
as ClaimStatus?,activeStatusCode: freezed == activeStatusCode ? _self.activeStatusCode : activeStatusCode // ignore: cast_nullable_to_non_nullable
as int?,giftActivated: freezed == giftActivated ? _self.giftActivated : giftActivated // ignore: cast_nullable_to_non_nullable
as dynamic,activeClaim: freezed == activeClaim ? _self.activeClaim : activeClaim // ignore: cast_nullable_to_non_nullable
as ClaimHistory?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ClaimHistory>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GiftBlocState].
extension GiftBlocStatePatterns on GiftBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GiftBlocState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GiftBlocState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GiftBlocState value)  $default,){
final _that = this;
switch (_that) {
case _GiftBlocState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GiftBlocState value)?  $default,){
final _that = this;
switch (_that) {
case _GiftBlocState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  dynamic haveGift,  ClaimStatus? claimStatus,  int? activeStatusCode,  dynamic giftActivated,  ClaimHistory? activeClaim,  List<ClaimHistory> items,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GiftBlocState() when $default != null:
return $default(_that.isLoading,_that.haveGift,_that.claimStatus,_that.activeStatusCode,_that.giftActivated,_that.activeClaim,_that.items,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  dynamic haveGift,  ClaimStatus? claimStatus,  int? activeStatusCode,  dynamic giftActivated,  ClaimHistory? activeClaim,  List<ClaimHistory> items,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _GiftBlocState():
return $default(_that.isLoading,_that.haveGift,_that.claimStatus,_that.activeStatusCode,_that.giftActivated,_that.activeClaim,_that.items,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  dynamic haveGift,  ClaimStatus? claimStatus,  int? activeStatusCode,  dynamic giftActivated,  ClaimHistory? activeClaim,  List<ClaimHistory> items,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _GiftBlocState() when $default != null:
return $default(_that.isLoading,_that.haveGift,_that.claimStatus,_that.activeStatusCode,_that.giftActivated,_that.activeClaim,_that.items,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _GiftBlocState implements GiftBlocState {
   _GiftBlocState({this.isLoading = true, this.haveGift = false, this.claimStatus, this.activeStatusCode, this.giftActivated = false, this.activeClaim, final  List<ClaimHistory> items = const [], this.errorMessage}): _items = items;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  dynamic haveGift;
@override final  ClaimStatus? claimStatus;
@override final  int? activeStatusCode;
@override@JsonKey() final  dynamic giftActivated;
@override final  ClaimHistory? activeClaim;
 final  List<ClaimHistory> _items;
@override@JsonKey() List<ClaimHistory> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? errorMessage;

/// Create a copy of GiftBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GiftBlocStateCopyWith<_GiftBlocState> get copyWith => __$GiftBlocStateCopyWithImpl<_GiftBlocState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GiftBlocState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.haveGift, haveGift)&&(identical(other.claimStatus, claimStatus) || other.claimStatus == claimStatus)&&(identical(other.activeStatusCode, activeStatusCode) || other.activeStatusCode == activeStatusCode)&&const DeepCollectionEquality().equals(other.giftActivated, giftActivated)&&(identical(other.activeClaim, activeClaim) || other.activeClaim == activeClaim)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(haveGift),claimStatus,activeStatusCode,const DeepCollectionEquality().hash(giftActivated),activeClaim,const DeepCollectionEquality().hash(_items),errorMessage);

@override
String toString() {
  return 'GiftBlocState(isLoading: $isLoading, haveGift: $haveGift, claimStatus: $claimStatus, activeStatusCode: $activeStatusCode, giftActivated: $giftActivated, activeClaim: $activeClaim, items: $items, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$GiftBlocStateCopyWith<$Res> implements $GiftBlocStateCopyWith<$Res> {
  factory _$GiftBlocStateCopyWith(_GiftBlocState value, $Res Function(_GiftBlocState) _then) = __$GiftBlocStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, dynamic haveGift, ClaimStatus? claimStatus, int? activeStatusCode, dynamic giftActivated, ClaimHistory? activeClaim, List<ClaimHistory> items, String? errorMessage
});




}
/// @nodoc
class __$GiftBlocStateCopyWithImpl<$Res>
    implements _$GiftBlocStateCopyWith<$Res> {
  __$GiftBlocStateCopyWithImpl(this._self, this._then);

  final _GiftBlocState _self;
  final $Res Function(_GiftBlocState) _then;

/// Create a copy of GiftBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? haveGift = freezed,Object? claimStatus = freezed,Object? activeStatusCode = freezed,Object? giftActivated = freezed,Object? activeClaim = freezed,Object? items = null,Object? errorMessage = freezed,}) {
  return _then(_GiftBlocState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,haveGift: freezed == haveGift ? _self.haveGift : haveGift // ignore: cast_nullable_to_non_nullable
as dynamic,claimStatus: freezed == claimStatus ? _self.claimStatus : claimStatus // ignore: cast_nullable_to_non_nullable
as ClaimStatus?,activeStatusCode: freezed == activeStatusCode ? _self.activeStatusCode : activeStatusCode // ignore: cast_nullable_to_non_nullable
as int?,giftActivated: freezed == giftActivated ? _self.giftActivated : giftActivated // ignore: cast_nullable_to_non_nullable
as dynamic,activeClaim: freezed == activeClaim ? _self.activeClaim : activeClaim // ignore: cast_nullable_to_non_nullable
as ClaimHistory?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ClaimHistory>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
