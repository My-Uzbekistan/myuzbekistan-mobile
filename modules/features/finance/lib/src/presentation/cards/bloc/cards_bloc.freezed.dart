// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CardsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CardsState()';
}


}

/// @nodoc
class $CardsStateCopyWith<$Res>  {
$CardsStateCopyWith(CardsState _, $Res Function(CardsState) __);
}


/// Adds pattern-matching-related methods to [CardsState].
extension CardsStatePatterns on CardsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CardsLoadingState value)?  loadingState,TResult Function( CardsDataState value)?  dataState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CardsLoadingState() when loadingState != null:
return loadingState(_that);case CardsDataState() when dataState != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CardsLoadingState value)  loadingState,required TResult Function( CardsDataState value)  dataState,}){
final _that = this;
switch (_that) {
case CardsLoadingState():
return loadingState(_that);case CardsDataState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CardsLoadingState value)?  loadingState,TResult? Function( CardsDataState value)?  dataState,}){
final _that = this;
switch (_that) {
case CardsLoadingState() when loadingState != null:
return loadingState(_that);case CardsDataState() when dataState != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadingState,TResult Function( List<CardItem> cards,  bool isEdit,  int? selectedCardId)?  dataState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CardsLoadingState() when loadingState != null:
return loadingState();case CardsDataState() when dataState != null:
return dataState(_that.cards,_that.isEdit,_that.selectedCardId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadingState,required TResult Function( List<CardItem> cards,  bool isEdit,  int? selectedCardId)  dataState,}) {final _that = this;
switch (_that) {
case CardsLoadingState():
return loadingState();case CardsDataState():
return dataState(_that.cards,_that.isEdit,_that.selectedCardId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadingState,TResult? Function( List<CardItem> cards,  bool isEdit,  int? selectedCardId)?  dataState,}) {final _that = this;
switch (_that) {
case CardsLoadingState() when loadingState != null:
return loadingState();case CardsDataState() when dataState != null:
return dataState(_that.cards,_that.isEdit,_that.selectedCardId);case _:
  return null;

}
}

}

/// @nodoc


class CardsLoadingState implements CardsState {
  const CardsLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardsLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CardsState.loadingState()';
}


}




/// @nodoc


class CardsDataState implements CardsState {
  const CardsDataState(final  List<CardItem> cards, {this.isEdit = false, this.selectedCardId}): _cards = cards;
  

 final  List<CardItem> _cards;
 List<CardItem> get cards {
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cards);
}

@JsonKey() final  bool isEdit;
 final  int? selectedCardId;

/// Create a copy of CardsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardsDataStateCopyWith<CardsDataState> get copyWith => _$CardsDataStateCopyWithImpl<CardsDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardsDataState&&const DeepCollectionEquality().equals(other._cards, _cards)&&(identical(other.isEdit, isEdit) || other.isEdit == isEdit)&&(identical(other.selectedCardId, selectedCardId) || other.selectedCardId == selectedCardId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cards),isEdit,selectedCardId);

@override
String toString() {
  return 'CardsState.dataState(cards: $cards, isEdit: $isEdit, selectedCardId: $selectedCardId)';
}


}

/// @nodoc
abstract mixin class $CardsDataStateCopyWith<$Res> implements $CardsStateCopyWith<$Res> {
  factory $CardsDataStateCopyWith(CardsDataState value, $Res Function(CardsDataState) _then) = _$CardsDataStateCopyWithImpl;
@useResult
$Res call({
 List<CardItem> cards, bool isEdit, int? selectedCardId
});




}
/// @nodoc
class _$CardsDataStateCopyWithImpl<$Res>
    implements $CardsDataStateCopyWith<$Res> {
  _$CardsDataStateCopyWithImpl(this._self, this._then);

  final CardsDataState _self;
  final $Res Function(CardsDataState) _then;

/// Create a copy of CardsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cards = null,Object? isEdit = null,Object? selectedCardId = freezed,}) {
  return _then(CardsDataState(
null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<CardItem>,isEdit: null == isEdit ? _self.isEdit : isEdit // ignore: cast_nullable_to_non_nullable
as bool,selectedCardId: freezed == selectedCardId ? _self.selectedCardId : selectedCardId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$CardsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CardsEvent()';
}


}

/// @nodoc
class $CardsEventCopyWith<$Res>  {
$CardsEventCopyWith(CardsEvent _, $Res Function(CardsEvent) __);
}


/// Adds pattern-matching-related methods to [CardsEvent].
extension CardsEventPatterns on CardsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadCardsEvent value)?  loadCards,TResult Function( _LoadEditEvent value)?  edit,TResult Function( _SetCardsEvent value)?  setCards,TResult Function( _SetSelectedCardIdEvent value)?  setSelectedCardId,TResult Function( _DeleteCardEvent value)?  deleteCard,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadCardsEvent() when loadCards != null:
return loadCards(_that);case _LoadEditEvent() when edit != null:
return edit(_that);case _SetCardsEvent() when setCards != null:
return setCards(_that);case _SetSelectedCardIdEvent() when setSelectedCardId != null:
return setSelectedCardId(_that);case _DeleteCardEvent() when deleteCard != null:
return deleteCard(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadCardsEvent value)  loadCards,required TResult Function( _LoadEditEvent value)  edit,required TResult Function( _SetCardsEvent value)  setCards,required TResult Function( _SetSelectedCardIdEvent value)  setSelectedCardId,required TResult Function( _DeleteCardEvent value)  deleteCard,}){
final _that = this;
switch (_that) {
case _LoadCardsEvent():
return loadCards(_that);case _LoadEditEvent():
return edit(_that);case _SetCardsEvent():
return setCards(_that);case _SetSelectedCardIdEvent():
return setSelectedCardId(_that);case _DeleteCardEvent():
return deleteCard(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadCardsEvent value)?  loadCards,TResult? Function( _LoadEditEvent value)?  edit,TResult? Function( _SetCardsEvent value)?  setCards,TResult? Function( _SetSelectedCardIdEvent value)?  setSelectedCardId,TResult? Function( _DeleteCardEvent value)?  deleteCard,}){
final _that = this;
switch (_that) {
case _LoadCardsEvent() when loadCards != null:
return loadCards(_that);case _LoadEditEvent() when edit != null:
return edit(_that);case _SetCardsEvent() when setCards != null:
return setCards(_that);case _SetSelectedCardIdEvent() when setSelectedCardId != null:
return setSelectedCardId(_that);case _DeleteCardEvent() when deleteCard != null:
return deleteCard(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadCards,TResult Function()?  edit,TResult Function( List<CardItem> cards)?  setCards,TResult Function( int? cardId)?  setSelectedCardId,TResult Function( int cardId)?  deleteCard,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadCardsEvent() when loadCards != null:
return loadCards();case _LoadEditEvent() when edit != null:
return edit();case _SetCardsEvent() when setCards != null:
return setCards(_that.cards);case _SetSelectedCardIdEvent() when setSelectedCardId != null:
return setSelectedCardId(_that.cardId);case _DeleteCardEvent() when deleteCard != null:
return deleteCard(_that.cardId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadCards,required TResult Function()  edit,required TResult Function( List<CardItem> cards)  setCards,required TResult Function( int? cardId)  setSelectedCardId,required TResult Function( int cardId)  deleteCard,}) {final _that = this;
switch (_that) {
case _LoadCardsEvent():
return loadCards();case _LoadEditEvent():
return edit();case _SetCardsEvent():
return setCards(_that.cards);case _SetSelectedCardIdEvent():
return setSelectedCardId(_that.cardId);case _DeleteCardEvent():
return deleteCard(_that.cardId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadCards,TResult? Function()?  edit,TResult? Function( List<CardItem> cards)?  setCards,TResult? Function( int? cardId)?  setSelectedCardId,TResult? Function( int cardId)?  deleteCard,}) {final _that = this;
switch (_that) {
case _LoadCardsEvent() when loadCards != null:
return loadCards();case _LoadEditEvent() when edit != null:
return edit();case _SetCardsEvent() when setCards != null:
return setCards(_that.cards);case _SetSelectedCardIdEvent() when setSelectedCardId != null:
return setSelectedCardId(_that.cardId);case _DeleteCardEvent() when deleteCard != null:
return deleteCard(_that.cardId);case _:
  return null;

}
}

}

/// @nodoc


class _LoadCardsEvent implements CardsEvent {
  const _LoadCardsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadCardsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CardsEvent.loadCards()';
}


}




/// @nodoc


class _LoadEditEvent implements CardsEvent {
  const _LoadEditEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadEditEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CardsEvent.edit()';
}


}




/// @nodoc


class _SetCardsEvent implements CardsEvent {
  const _SetCardsEvent(final  List<CardItem> cards): _cards = cards;
  

 final  List<CardItem> _cards;
 List<CardItem> get cards {
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cards);
}


/// Create a copy of CardsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetCardsEventCopyWith<_SetCardsEvent> get copyWith => __$SetCardsEventCopyWithImpl<_SetCardsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetCardsEvent&&const DeepCollectionEquality().equals(other._cards, _cards));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cards));

@override
String toString() {
  return 'CardsEvent.setCards(cards: $cards)';
}


}

/// @nodoc
abstract mixin class _$SetCardsEventCopyWith<$Res> implements $CardsEventCopyWith<$Res> {
  factory _$SetCardsEventCopyWith(_SetCardsEvent value, $Res Function(_SetCardsEvent) _then) = __$SetCardsEventCopyWithImpl;
@useResult
$Res call({
 List<CardItem> cards
});




}
/// @nodoc
class __$SetCardsEventCopyWithImpl<$Res>
    implements _$SetCardsEventCopyWith<$Res> {
  __$SetCardsEventCopyWithImpl(this._self, this._then);

  final _SetCardsEvent _self;
  final $Res Function(_SetCardsEvent) _then;

/// Create a copy of CardsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cards = null,}) {
  return _then(_SetCardsEvent(
null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<CardItem>,
  ));
}


}

/// @nodoc


class _SetSelectedCardIdEvent implements CardsEvent {
  const _SetSelectedCardIdEvent(this.cardId);
  

 final  int? cardId;

/// Create a copy of CardsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetSelectedCardIdEventCopyWith<_SetSelectedCardIdEvent> get copyWith => __$SetSelectedCardIdEventCopyWithImpl<_SetSelectedCardIdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetSelectedCardIdEvent&&(identical(other.cardId, cardId) || other.cardId == cardId));
}


@override
int get hashCode => Object.hash(runtimeType,cardId);

@override
String toString() {
  return 'CardsEvent.setSelectedCardId(cardId: $cardId)';
}


}

/// @nodoc
abstract mixin class _$SetSelectedCardIdEventCopyWith<$Res> implements $CardsEventCopyWith<$Res> {
  factory _$SetSelectedCardIdEventCopyWith(_SetSelectedCardIdEvent value, $Res Function(_SetSelectedCardIdEvent) _then) = __$SetSelectedCardIdEventCopyWithImpl;
@useResult
$Res call({
 int? cardId
});




}
/// @nodoc
class __$SetSelectedCardIdEventCopyWithImpl<$Res>
    implements _$SetSelectedCardIdEventCopyWith<$Res> {
  __$SetSelectedCardIdEventCopyWithImpl(this._self, this._then);

  final _SetSelectedCardIdEvent _self;
  final $Res Function(_SetSelectedCardIdEvent) _then;

/// Create a copy of CardsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cardId = freezed,}) {
  return _then(_SetSelectedCardIdEvent(
freezed == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _DeleteCardEvent implements CardsEvent {
  const _DeleteCardEvent(this.cardId);
  

 final  int cardId;

/// Create a copy of CardsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCardEventCopyWith<_DeleteCardEvent> get copyWith => __$DeleteCardEventCopyWithImpl<_DeleteCardEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCardEvent&&(identical(other.cardId, cardId) || other.cardId == cardId));
}


@override
int get hashCode => Object.hash(runtimeType,cardId);

@override
String toString() {
  return 'CardsEvent.deleteCard(cardId: $cardId)';
}


}

/// @nodoc
abstract mixin class _$DeleteCardEventCopyWith<$Res> implements $CardsEventCopyWith<$Res> {
  factory _$DeleteCardEventCopyWith(_DeleteCardEvent value, $Res Function(_DeleteCardEvent) _then) = __$DeleteCardEventCopyWithImpl;
@useResult
$Res call({
 int cardId
});




}
/// @nodoc
class __$DeleteCardEventCopyWithImpl<$Res>
    implements _$DeleteCardEventCopyWith<$Res> {
  __$DeleteCardEventCopyWithImpl(this._self, this._then);

  final _DeleteCardEvent _self;
  final $Res Function(_DeleteCardEvent) _then;

/// Create a copy of CardsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cardId = null,}) {
  return _then(_DeleteCardEvent(
null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
