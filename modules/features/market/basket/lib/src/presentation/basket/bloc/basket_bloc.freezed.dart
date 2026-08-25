// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BasketEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasketEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BasketEvent()';
}


}

/// @nodoc
class $BasketEventCopyWith<$Res>  {
$BasketEventCopyWith(BasketEvent _, $Res Function(BasketEvent) __);
}


/// Adds pattern-matching-related methods to [BasketEvent].
extension BasketEventPatterns on BasketEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _BasketLoadDataEvent value)?  loadData,TResult Function( _BasketChangeQuantityEvent value)?  changeQuantity,TResult Function( _BasketToggleItemEvent value)?  toggleItem,TResult Function( _BasketToggleSellerEvent value)?  toggleSeller,TResult Function( _BasketToggleAllEvent value)?  toggleAll,TResult Function( _BasketRemoveItemEvent value)?  removeItem,TResult Function( _BasketRemoveSelectedEvent value)?  removeSelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasketLoadDataEvent() when loadData != null:
return loadData(_that);case _BasketChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that);case _BasketToggleItemEvent() when toggleItem != null:
return toggleItem(_that);case _BasketToggleSellerEvent() when toggleSeller != null:
return toggleSeller(_that);case _BasketToggleAllEvent() when toggleAll != null:
return toggleAll(_that);case _BasketRemoveItemEvent() when removeItem != null:
return removeItem(_that);case _BasketRemoveSelectedEvent() when removeSelected != null:
return removeSelected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _BasketLoadDataEvent value)  loadData,required TResult Function( _BasketChangeQuantityEvent value)  changeQuantity,required TResult Function( _BasketToggleItemEvent value)  toggleItem,required TResult Function( _BasketToggleSellerEvent value)  toggleSeller,required TResult Function( _BasketToggleAllEvent value)  toggleAll,required TResult Function( _BasketRemoveItemEvent value)  removeItem,required TResult Function( _BasketRemoveSelectedEvent value)  removeSelected,}){
final _that = this;
switch (_that) {
case _BasketLoadDataEvent():
return loadData(_that);case _BasketChangeQuantityEvent():
return changeQuantity(_that);case _BasketToggleItemEvent():
return toggleItem(_that);case _BasketToggleSellerEvent():
return toggleSeller(_that);case _BasketToggleAllEvent():
return toggleAll(_that);case _BasketRemoveItemEvent():
return removeItem(_that);case _BasketRemoveSelectedEvent():
return removeSelected(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _BasketLoadDataEvent value)?  loadData,TResult? Function( _BasketChangeQuantityEvent value)?  changeQuantity,TResult? Function( _BasketToggleItemEvent value)?  toggleItem,TResult? Function( _BasketToggleSellerEvent value)?  toggleSeller,TResult? Function( _BasketToggleAllEvent value)?  toggleAll,TResult? Function( _BasketRemoveItemEvent value)?  removeItem,TResult? Function( _BasketRemoveSelectedEvent value)?  removeSelected,}){
final _that = this;
switch (_that) {
case _BasketLoadDataEvent() when loadData != null:
return loadData(_that);case _BasketChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that);case _BasketToggleItemEvent() when toggleItem != null:
return toggleItem(_that);case _BasketToggleSellerEvent() when toggleSeller != null:
return toggleSeller(_that);case _BasketToggleAllEvent() when toggleAll != null:
return toggleAll(_that);case _BasketRemoveItemEvent() when removeItem != null:
return removeItem(_that);case _BasketRemoveSelectedEvent() when removeSelected != null:
return removeSelected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadData,TResult Function( CartItem item,  int quantity)?  changeQuantity,TResult Function( CartItem item)?  toggleItem,TResult Function( CartSeller seller)?  toggleSeller,TResult Function()?  toggleAll,TResult Function( CartItem item)?  removeItem,TResult Function()?  removeSelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasketLoadDataEvent() when loadData != null:
return loadData();case _BasketChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that.item,_that.quantity);case _BasketToggleItemEvent() when toggleItem != null:
return toggleItem(_that.item);case _BasketToggleSellerEvent() when toggleSeller != null:
return toggleSeller(_that.seller);case _BasketToggleAllEvent() when toggleAll != null:
return toggleAll();case _BasketRemoveItemEvent() when removeItem != null:
return removeItem(_that.item);case _BasketRemoveSelectedEvent() when removeSelected != null:
return removeSelected();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadData,required TResult Function( CartItem item,  int quantity)  changeQuantity,required TResult Function( CartItem item)  toggleItem,required TResult Function( CartSeller seller)  toggleSeller,required TResult Function()  toggleAll,required TResult Function( CartItem item)  removeItem,required TResult Function()  removeSelected,}) {final _that = this;
switch (_that) {
case _BasketLoadDataEvent():
return loadData();case _BasketChangeQuantityEvent():
return changeQuantity(_that.item,_that.quantity);case _BasketToggleItemEvent():
return toggleItem(_that.item);case _BasketToggleSellerEvent():
return toggleSeller(_that.seller);case _BasketToggleAllEvent():
return toggleAll();case _BasketRemoveItemEvent():
return removeItem(_that.item);case _BasketRemoveSelectedEvent():
return removeSelected();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadData,TResult? Function( CartItem item,  int quantity)?  changeQuantity,TResult? Function( CartItem item)?  toggleItem,TResult? Function( CartSeller seller)?  toggleSeller,TResult? Function()?  toggleAll,TResult? Function( CartItem item)?  removeItem,TResult? Function()?  removeSelected,}) {final _that = this;
switch (_that) {
case _BasketLoadDataEvent() when loadData != null:
return loadData();case _BasketChangeQuantityEvent() when changeQuantity != null:
return changeQuantity(_that.item,_that.quantity);case _BasketToggleItemEvent() when toggleItem != null:
return toggleItem(_that.item);case _BasketToggleSellerEvent() when toggleSeller != null:
return toggleSeller(_that.seller);case _BasketToggleAllEvent() when toggleAll != null:
return toggleAll();case _BasketRemoveItemEvent() when removeItem != null:
return removeItem(_that.item);case _BasketRemoveSelectedEvent() when removeSelected != null:
return removeSelected();case _:
  return null;

}
}

}

/// @nodoc


class _BasketLoadDataEvent implements BasketEvent {
   _BasketLoadDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasketLoadDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BasketEvent.loadData()';
}


}




/// @nodoc


class _BasketChangeQuantityEvent implements BasketEvent {
   _BasketChangeQuantityEvent({required this.item, required this.quantity});
  

 final  CartItem item;
 final  int quantity;

/// Create a copy of BasketEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasketChangeQuantityEventCopyWith<_BasketChangeQuantityEvent> get copyWith => __$BasketChangeQuantityEventCopyWithImpl<_BasketChangeQuantityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasketChangeQuantityEvent&&(identical(other.item, item) || other.item == item)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,item,quantity);

@override
String toString() {
  return 'BasketEvent.changeQuantity(item: $item, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$BasketChangeQuantityEventCopyWith<$Res> implements $BasketEventCopyWith<$Res> {
  factory _$BasketChangeQuantityEventCopyWith(_BasketChangeQuantityEvent value, $Res Function(_BasketChangeQuantityEvent) _then) = __$BasketChangeQuantityEventCopyWithImpl;
@useResult
$Res call({
 CartItem item, int quantity
});




}
/// @nodoc
class __$BasketChangeQuantityEventCopyWithImpl<$Res>
    implements _$BasketChangeQuantityEventCopyWith<$Res> {
  __$BasketChangeQuantityEventCopyWithImpl(this._self, this._then);

  final _BasketChangeQuantityEvent _self;
  final $Res Function(_BasketChangeQuantityEvent) _then;

/// Create a copy of BasketEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,Object? quantity = null,}) {
  return _then(_BasketChangeQuantityEvent(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as CartItem,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _BasketToggleItemEvent implements BasketEvent {
   _BasketToggleItemEvent({required this.item});
  

 final  CartItem item;

/// Create a copy of BasketEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasketToggleItemEventCopyWith<_BasketToggleItemEvent> get copyWith => __$BasketToggleItemEventCopyWithImpl<_BasketToggleItemEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasketToggleItemEvent&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'BasketEvent.toggleItem(item: $item)';
}


}

/// @nodoc
abstract mixin class _$BasketToggleItemEventCopyWith<$Res> implements $BasketEventCopyWith<$Res> {
  factory _$BasketToggleItemEventCopyWith(_BasketToggleItemEvent value, $Res Function(_BasketToggleItemEvent) _then) = __$BasketToggleItemEventCopyWithImpl;
@useResult
$Res call({
 CartItem item
});




}
/// @nodoc
class __$BasketToggleItemEventCopyWithImpl<$Res>
    implements _$BasketToggleItemEventCopyWith<$Res> {
  __$BasketToggleItemEventCopyWithImpl(this._self, this._then);

  final _BasketToggleItemEvent _self;
  final $Res Function(_BasketToggleItemEvent) _then;

/// Create a copy of BasketEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_BasketToggleItemEvent(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as CartItem,
  ));
}


}

/// @nodoc


class _BasketToggleSellerEvent implements BasketEvent {
   _BasketToggleSellerEvent({required this.seller});
  

 final  CartSeller seller;

/// Create a copy of BasketEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasketToggleSellerEventCopyWith<_BasketToggleSellerEvent> get copyWith => __$BasketToggleSellerEventCopyWithImpl<_BasketToggleSellerEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasketToggleSellerEvent&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hash(runtimeType,seller);

@override
String toString() {
  return 'BasketEvent.toggleSeller(seller: $seller)';
}


}

/// @nodoc
abstract mixin class _$BasketToggleSellerEventCopyWith<$Res> implements $BasketEventCopyWith<$Res> {
  factory _$BasketToggleSellerEventCopyWith(_BasketToggleSellerEvent value, $Res Function(_BasketToggleSellerEvent) _then) = __$BasketToggleSellerEventCopyWithImpl;
@useResult
$Res call({
 CartSeller seller
});




}
/// @nodoc
class __$BasketToggleSellerEventCopyWithImpl<$Res>
    implements _$BasketToggleSellerEventCopyWith<$Res> {
  __$BasketToggleSellerEventCopyWithImpl(this._self, this._then);

  final _BasketToggleSellerEvent _self;
  final $Res Function(_BasketToggleSellerEvent) _then;

/// Create a copy of BasketEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? seller = null,}) {
  return _then(_BasketToggleSellerEvent(
seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as CartSeller,
  ));
}


}

/// @nodoc


class _BasketToggleAllEvent implements BasketEvent {
   _BasketToggleAllEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasketToggleAllEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BasketEvent.toggleAll()';
}


}




/// @nodoc


class _BasketRemoveItemEvent implements BasketEvent {
   _BasketRemoveItemEvent({required this.item});
  

 final  CartItem item;

/// Create a copy of BasketEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasketRemoveItemEventCopyWith<_BasketRemoveItemEvent> get copyWith => __$BasketRemoveItemEventCopyWithImpl<_BasketRemoveItemEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasketRemoveItemEvent&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'BasketEvent.removeItem(item: $item)';
}


}

/// @nodoc
abstract mixin class _$BasketRemoveItemEventCopyWith<$Res> implements $BasketEventCopyWith<$Res> {
  factory _$BasketRemoveItemEventCopyWith(_BasketRemoveItemEvent value, $Res Function(_BasketRemoveItemEvent) _then) = __$BasketRemoveItemEventCopyWithImpl;
@useResult
$Res call({
 CartItem item
});




}
/// @nodoc
class __$BasketRemoveItemEventCopyWithImpl<$Res>
    implements _$BasketRemoveItemEventCopyWith<$Res> {
  __$BasketRemoveItemEventCopyWithImpl(this._self, this._then);

  final _BasketRemoveItemEvent _self;
  final $Res Function(_BasketRemoveItemEvent) _then;

/// Create a copy of BasketEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_BasketRemoveItemEvent(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as CartItem,
  ));
}


}

/// @nodoc


class _BasketRemoveSelectedEvent implements BasketEvent {
   _BasketRemoveSelectedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasketRemoveSelectedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BasketEvent.removeSelected()';
}


}




/// @nodoc
mixin _$BasketState {

 List<CartSeller> get sellers; int get totalCount; int get selectedCount; int get selectedTotal; bool get isLoading; bool get loadFailed; String? get errorMessage;
/// Create a copy of BasketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasketStateCopyWith<BasketState> get copyWith => _$BasketStateCopyWithImpl<BasketState>(this as BasketState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasketState&&const DeepCollectionEquality().equals(other.sellers, sellers)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.selectedCount, selectedCount) || other.selectedCount == selectedCount)&&(identical(other.selectedTotal, selectedTotal) || other.selectedTotal == selectedTotal)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sellers),totalCount,selectedCount,selectedTotal,isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'BasketState(sellers: $sellers, totalCount: $totalCount, selectedCount: $selectedCount, selectedTotal: $selectedTotal, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $BasketStateCopyWith<$Res>  {
  factory $BasketStateCopyWith(BasketState value, $Res Function(BasketState) _then) = _$BasketStateCopyWithImpl;
@useResult
$Res call({
 List<CartSeller> sellers, int totalCount, int selectedCount, int selectedTotal, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class _$BasketStateCopyWithImpl<$Res>
    implements $BasketStateCopyWith<$Res> {
  _$BasketStateCopyWithImpl(this._self, this._then);

  final BasketState _self;
  final $Res Function(BasketState) _then;

/// Create a copy of BasketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sellers = null,Object? totalCount = null,Object? selectedCount = null,Object? selectedTotal = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
sellers: null == sellers ? _self.sellers : sellers // ignore: cast_nullable_to_non_nullable
as List<CartSeller>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,selectedCount: null == selectedCount ? _self.selectedCount : selectedCount // ignore: cast_nullable_to_non_nullable
as int,selectedTotal: null == selectedTotal ? _self.selectedTotal : selectedTotal // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BasketState].
extension BasketStatePatterns on BasketState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BasketState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasketState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BasketState value)  $default,){
final _that = this;
switch (_that) {
case _BasketState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BasketState value)?  $default,){
final _that = this;
switch (_that) {
case _BasketState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartSeller> sellers,  int totalCount,  int selectedCount,  int selectedTotal,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasketState() when $default != null:
return $default(_that.sellers,_that.totalCount,_that.selectedCount,_that.selectedTotal,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartSeller> sellers,  int totalCount,  int selectedCount,  int selectedTotal,  bool isLoading,  bool loadFailed,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _BasketState():
return $default(_that.sellers,_that.totalCount,_that.selectedCount,_that.selectedTotal,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartSeller> sellers,  int totalCount,  int selectedCount,  int selectedTotal,  bool isLoading,  bool loadFailed,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _BasketState() when $default != null:
return $default(_that.sellers,_that.totalCount,_that.selectedCount,_that.selectedTotal,_that.isLoading,_that.loadFailed,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _BasketState extends BasketState {
   _BasketState({final  List<CartSeller> sellers = const [], this.totalCount = 0, this.selectedCount = 0, this.selectedTotal = 0, this.isLoading = false, this.loadFailed = false, this.errorMessage}): _sellers = sellers,super._();
  

 final  List<CartSeller> _sellers;
@override@JsonKey() List<CartSeller> get sellers {
  if (_sellers is EqualUnmodifiableListView) return _sellers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sellers);
}

@override@JsonKey() final  int totalCount;
@override@JsonKey() final  int selectedCount;
@override@JsonKey() final  int selectedTotal;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool loadFailed;
@override final  String? errorMessage;

/// Create a copy of BasketState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasketStateCopyWith<_BasketState> get copyWith => __$BasketStateCopyWithImpl<_BasketState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasketState&&const DeepCollectionEquality().equals(other._sellers, _sellers)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.selectedCount, selectedCount) || other.selectedCount == selectedCount)&&(identical(other.selectedTotal, selectedTotal) || other.selectedTotal == selectedTotal)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.loadFailed, loadFailed) || other.loadFailed == loadFailed)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sellers),totalCount,selectedCount,selectedTotal,isLoading,loadFailed,errorMessage);

@override
String toString() {
  return 'BasketState(sellers: $sellers, totalCount: $totalCount, selectedCount: $selectedCount, selectedTotal: $selectedTotal, isLoading: $isLoading, loadFailed: $loadFailed, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$BasketStateCopyWith<$Res> implements $BasketStateCopyWith<$Res> {
  factory _$BasketStateCopyWith(_BasketState value, $Res Function(_BasketState) _then) = __$BasketStateCopyWithImpl;
@override @useResult
$Res call({
 List<CartSeller> sellers, int totalCount, int selectedCount, int selectedTotal, bool isLoading, bool loadFailed, String? errorMessage
});




}
/// @nodoc
class __$BasketStateCopyWithImpl<$Res>
    implements _$BasketStateCopyWith<$Res> {
  __$BasketStateCopyWithImpl(this._self, this._then);

  final _BasketState _self;
  final $Res Function(_BasketState) _then;

/// Create a copy of BasketState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sellers = null,Object? totalCount = null,Object? selectedCount = null,Object? selectedTotal = null,Object? isLoading = null,Object? loadFailed = null,Object? errorMessage = freezed,}) {
  return _then(_BasketState(
sellers: null == sellers ? _self._sellers : sellers // ignore: cast_nullable_to_non_nullable
as List<CartSeller>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,selectedCount: null == selectedCount ? _self.selectedCount : selectedCount // ignore: cast_nullable_to_non_nullable
as int,selectedTotal: null == selectedTotal ? _self.selectedTotal : selectedTotal // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,loadFailed: null == loadFailed ? _self.loadFailed : loadFailed // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
