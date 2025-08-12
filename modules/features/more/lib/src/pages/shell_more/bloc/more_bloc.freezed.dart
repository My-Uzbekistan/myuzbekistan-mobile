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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MoreEventInit value)?  init,TResult Function( _MoreEventFetch value)?  fetch,TResult Function( _MoreEventFetchCurrency value)?  fetchCurrencies,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoreEventInit() when init != null:
return init(_that);case _MoreEventFetch() when fetch != null:
return fetch(_that);case _MoreEventFetchCurrency() when fetchCurrencies != null:
return fetchCurrencies(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MoreEventInit value)  init,required TResult Function( _MoreEventFetch value)  fetch,required TResult Function( _MoreEventFetchCurrency value)  fetchCurrencies,}){
final _that = this;
switch (_that) {
case _MoreEventInit():
return init(_that);case _MoreEventFetch():
return fetch(_that);case _MoreEventFetchCurrency():
return fetchCurrencies(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MoreEventInit value)?  init,TResult? Function( _MoreEventFetch value)?  fetch,TResult? Function( _MoreEventFetchCurrency value)?  fetchCurrencies,}){
final _that = this;
switch (_that) {
case _MoreEventInit() when init != null:
return init(_that);case _MoreEventFetch() when fetch != null:
return fetch(_that);case _MoreEventFetchCurrency() when fetchCurrencies != null:
return fetchCurrencies(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  fetch,TResult Function()?  fetchCurrencies,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoreEventInit() when init != null:
return init();case _MoreEventFetch() when fetch != null:
return fetch();case _MoreEventFetchCurrency() when fetchCurrencies != null:
return fetchCurrencies();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  fetch,required TResult Function()  fetchCurrencies,}) {final _that = this;
switch (_that) {
case _MoreEventInit():
return init();case _MoreEventFetch():
return fetch();case _MoreEventFetchCurrency():
return fetchCurrencies();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  fetch,TResult? Function()?  fetchCurrencies,}) {final _that = this;
switch (_that) {
case _MoreEventInit() when init != null:
return init();case _MoreEventFetch() when fetch != null:
return fetch();case _MoreEventFetchCurrency() when fetchCurrencies != null:
return fetchCurrencies();case _:
  return null;

}
}

}

/// @nodoc


class _MoreEventInit implements MoreEvent {
   _MoreEventInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreEventInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreEvent.init()';
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


class _MoreEventFetchCurrency implements MoreEvent {
   _MoreEventFetchCurrency();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreEventFetchCurrency);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreEvent.fetchCurrencies()';
}


}




/// @nodoc
mixin _$MoreState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreState()';
}


}

/// @nodoc
class $MoreStateCopyWith<$Res>  {
$MoreStateCopyWith(MoreState _, $Res Function(MoreState) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MoreLoadingState value)?  loading,TResult Function( MoreDataState value)?  dataState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MoreLoadingState() when loading != null:
return loading(_that);case MoreDataState() when dataState != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MoreLoadingState value)  loading,required TResult Function( MoreDataState value)  dataState,}){
final _that = this;
switch (_that) {
case MoreLoadingState():
return loading(_that);case MoreDataState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MoreLoadingState value)?  loading,TResult? Function( MoreDataState value)?  dataState,}){
final _that = this;
switch (_that) {
case MoreLoadingState() when loading != null:
return loading(_that);case MoreDataState() when dataState != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<MoreItem> abouts,  List<MoreItem> useFull,  List<Currency> currencies)?  dataState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MoreLoadingState() when loading != null:
return loading();case MoreDataState() when dataState != null:
return dataState(_that.abouts,_that.useFull,_that.currencies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<MoreItem> abouts,  List<MoreItem> useFull,  List<Currency> currencies)  dataState,}) {final _that = this;
switch (_that) {
case MoreLoadingState():
return loading();case MoreDataState():
return dataState(_that.abouts,_that.useFull,_that.currencies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<MoreItem> abouts,  List<MoreItem> useFull,  List<Currency> currencies)?  dataState,}) {final _that = this;
switch (_that) {
case MoreLoadingState() when loading != null:
return loading();case MoreDataState() when dataState != null:
return dataState(_that.abouts,_that.useFull,_that.currencies);case _:
  return null;

}
}

}

/// @nodoc


class MoreLoadingState implements MoreState {
   MoreLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MoreState.loading()';
}


}




/// @nodoc


class MoreDataState implements MoreState {
   MoreDataState({final  List<MoreItem> abouts = const [], final  List<MoreItem> useFull = const [], final  List<Currency> currencies = const []}): _abouts = abouts,_useFull = useFull,_currencies = currencies;
  

 final  List<MoreItem> _abouts;
@JsonKey() List<MoreItem> get abouts {
  if (_abouts is EqualUnmodifiableListView) return _abouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abouts);
}

 final  List<MoreItem> _useFull;
@JsonKey() List<MoreItem> get useFull {
  if (_useFull is EqualUnmodifiableListView) return _useFull;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_useFull);
}

 final  List<Currency> _currencies;
@JsonKey() List<Currency> get currencies {
  if (_currencies is EqualUnmodifiableListView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currencies);
}


/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoreDataStateCopyWith<MoreDataState> get copyWith => _$MoreDataStateCopyWithImpl<MoreDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreDataState&&const DeepCollectionEquality().equals(other._abouts, _abouts)&&const DeepCollectionEquality().equals(other._useFull, _useFull)&&const DeepCollectionEquality().equals(other._currencies, _currencies));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_abouts),const DeepCollectionEquality().hash(_useFull),const DeepCollectionEquality().hash(_currencies));

@override
String toString() {
  return 'MoreState.dataState(abouts: $abouts, useFull: $useFull, currencies: $currencies)';
}


}

/// @nodoc
abstract mixin class $MoreDataStateCopyWith<$Res> implements $MoreStateCopyWith<$Res> {
  factory $MoreDataStateCopyWith(MoreDataState value, $Res Function(MoreDataState) _then) = _$MoreDataStateCopyWithImpl;
@useResult
$Res call({
 List<MoreItem> abouts, List<MoreItem> useFull, List<Currency> currencies
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
@pragma('vm:prefer-inline') $Res call({Object? abouts = null,Object? useFull = null,Object? currencies = null,}) {
  return _then(MoreDataState(
abouts: null == abouts ? _self._abouts : abouts // ignore: cast_nullable_to_non_nullable
as List<MoreItem>,useFull: null == useFull ? _self._useFull : useFull // ignore: cast_nullable_to_non_nullable
as List<MoreItem>,currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<Currency>,
  ));
}


}

// dart format on
