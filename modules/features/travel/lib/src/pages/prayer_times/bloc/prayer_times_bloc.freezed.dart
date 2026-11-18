// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_times_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrayerTimesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayerTimesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayerTimesEvent()';
}


}

/// @nodoc
class $PrayerTimesEventCopyWith<$Res>  {
$PrayerTimesEventCopyWith(PrayerTimesEvent _, $Res Function(PrayerTimesEvent) __);
}


/// Adds pattern-matching-related methods to [PrayerTimesEvent].
extension PrayerTimesEventPatterns on PrayerTimesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadLocations value)?  loadLocations,TResult Function( _LoadReminders value)?  loadReminders,TResult Function( _ChangeDay value)?  changeDay,TResult Function( _ChangeLocation value)?  changeLocation,TResult Function( _ToggleReminder value)?  toggleReminder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadLocations() when loadLocations != null:
return loadLocations(_that);case _LoadReminders() when loadReminders != null:
return loadReminders(_that);case _ChangeDay() when changeDay != null:
return changeDay(_that);case _ChangeLocation() when changeLocation != null:
return changeLocation(_that);case _ToggleReminder() when toggleReminder != null:
return toggleReminder(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadLocations value)  loadLocations,required TResult Function( _LoadReminders value)  loadReminders,required TResult Function( _ChangeDay value)  changeDay,required TResult Function( _ChangeLocation value)  changeLocation,required TResult Function( _ToggleReminder value)  toggleReminder,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadLocations():
return loadLocations(_that);case _LoadReminders():
return loadReminders(_that);case _ChangeDay():
return changeDay(_that);case _ChangeLocation():
return changeLocation(_that);case _ToggleReminder():
return toggleReminder(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadLocations value)?  loadLocations,TResult? Function( _LoadReminders value)?  loadReminders,TResult? Function( _ChangeDay value)?  changeDay,TResult? Function( _ChangeLocation value)?  changeLocation,TResult? Function( _ToggleReminder value)?  toggleReminder,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadLocations() when loadLocations != null:
return loadLocations(_that);case _LoadReminders() when loadReminders != null:
return loadReminders(_that);case _ChangeDay() when changeDay != null:
return changeDay(_that);case _ChangeLocation() when changeLocation != null:
return changeLocation(_that);case _ToggleReminder() when toggleReminder != null:
return toggleReminder(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadLocations,TResult Function()?  loadReminders,TResult Function( int step)?  changeDay,TResult Function( int locationId)?  changeLocation,TResult Function( PrayerKey key)?  toggleReminder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadLocations() when loadLocations != null:
return loadLocations();case _LoadReminders() when loadReminders != null:
return loadReminders();case _ChangeDay() when changeDay != null:
return changeDay(_that.step);case _ChangeLocation() when changeLocation != null:
return changeLocation(_that.locationId);case _ToggleReminder() when toggleReminder != null:
return toggleReminder(_that.key);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadLocations,required TResult Function()  loadReminders,required TResult Function( int step)  changeDay,required TResult Function( int locationId)  changeLocation,required TResult Function( PrayerKey key)  toggleReminder,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadLocations():
return loadLocations();case _LoadReminders():
return loadReminders();case _ChangeDay():
return changeDay(_that.step);case _ChangeLocation():
return changeLocation(_that.locationId);case _ToggleReminder():
return toggleReminder(_that.key);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadLocations,TResult? Function()?  loadReminders,TResult? Function( int step)?  changeDay,TResult? Function( int locationId)?  changeLocation,TResult? Function( PrayerKey key)?  toggleReminder,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadLocations() when loadLocations != null:
return loadLocations();case _LoadReminders() when loadReminders != null:
return loadReminders();case _ChangeDay() when changeDay != null:
return changeDay(_that.step);case _ChangeLocation() when changeLocation != null:
return changeLocation(_that.locationId);case _ToggleReminder() when toggleReminder != null:
return toggleReminder(_that.key);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements PrayerTimesEvent {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayerTimesEvent.initial()';
}


}




/// @nodoc


class _LoadLocations implements PrayerTimesEvent {
  const _LoadLocations();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadLocations);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayerTimesEvent.loadLocations()';
}


}




/// @nodoc


class _LoadReminders implements PrayerTimesEvent {
  const _LoadReminders();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadReminders);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrayerTimesEvent.loadReminders()';
}


}




/// @nodoc


class _ChangeDay implements PrayerTimesEvent {
  const _ChangeDay(this.step);
  

 final  int step;

/// Create a copy of PrayerTimesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeDayCopyWith<_ChangeDay> get copyWith => __$ChangeDayCopyWithImpl<_ChangeDay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeDay&&(identical(other.step, step) || other.step == step));
}


@override
int get hashCode => Object.hash(runtimeType,step);

@override
String toString() {
  return 'PrayerTimesEvent.changeDay(step: $step)';
}


}

/// @nodoc
abstract mixin class _$ChangeDayCopyWith<$Res> implements $PrayerTimesEventCopyWith<$Res> {
  factory _$ChangeDayCopyWith(_ChangeDay value, $Res Function(_ChangeDay) _then) = __$ChangeDayCopyWithImpl;
@useResult
$Res call({
 int step
});




}
/// @nodoc
class __$ChangeDayCopyWithImpl<$Res>
    implements _$ChangeDayCopyWith<$Res> {
  __$ChangeDayCopyWithImpl(this._self, this._then);

  final _ChangeDay _self;
  final $Res Function(_ChangeDay) _then;

/// Create a copy of PrayerTimesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? step = null,}) {
  return _then(_ChangeDay(
null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ChangeLocation implements PrayerTimesEvent {
  const _ChangeLocation(this.locationId);
  

 final  int locationId;

/// Create a copy of PrayerTimesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeLocationCopyWith<_ChangeLocation> get copyWith => __$ChangeLocationCopyWithImpl<_ChangeLocation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeLocation&&(identical(other.locationId, locationId) || other.locationId == locationId));
}


@override
int get hashCode => Object.hash(runtimeType,locationId);

@override
String toString() {
  return 'PrayerTimesEvent.changeLocation(locationId: $locationId)';
}


}

/// @nodoc
abstract mixin class _$ChangeLocationCopyWith<$Res> implements $PrayerTimesEventCopyWith<$Res> {
  factory _$ChangeLocationCopyWith(_ChangeLocation value, $Res Function(_ChangeLocation) _then) = __$ChangeLocationCopyWithImpl;
@useResult
$Res call({
 int locationId
});




}
/// @nodoc
class __$ChangeLocationCopyWithImpl<$Res>
    implements _$ChangeLocationCopyWith<$Res> {
  __$ChangeLocationCopyWithImpl(this._self, this._then);

  final _ChangeLocation _self;
  final $Res Function(_ChangeLocation) _then;

/// Create a copy of PrayerTimesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locationId = null,}) {
  return _then(_ChangeLocation(
null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ToggleReminder implements PrayerTimesEvent {
  const _ToggleReminder(this.key);
  

 final  PrayerKey key;

/// Create a copy of PrayerTimesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleReminderCopyWith<_ToggleReminder> get copyWith => __$ToggleReminderCopyWithImpl<_ToggleReminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleReminder&&(identical(other.key, key) || other.key == key));
}


@override
int get hashCode => Object.hash(runtimeType,key);

@override
String toString() {
  return 'PrayerTimesEvent.toggleReminder(key: $key)';
}


}

/// @nodoc
abstract mixin class _$ToggleReminderCopyWith<$Res> implements $PrayerTimesEventCopyWith<$Res> {
  factory _$ToggleReminderCopyWith(_ToggleReminder value, $Res Function(_ToggleReminder) _then) = __$ToggleReminderCopyWithImpl;
@useResult
$Res call({
 PrayerKey key
});




}
/// @nodoc
class __$ToggleReminderCopyWithImpl<$Res>
    implements _$ToggleReminderCopyWith<$Res> {
  __$ToggleReminderCopyWithImpl(this._self, this._then);

  final _ToggleReminder _self;
  final $Res Function(_ToggleReminder) _then;

/// Create a copy of PrayerTimesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? key = null,}) {
  return _then(_ToggleReminder(
null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as PrayerKey,
  ));
}


}

/// @nodoc
mixin _$PrayerTimesState {

 PrayerTimes? get prayerTimes; List<PrayerLocation> get locations; List<PrayerKey> get reminders; int get dayOffset; int? get locationId; bool get isLoading; bool get canUseReminders; String? get errorMessage;
/// Create a copy of PrayerTimesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayerTimesStateCopyWith<PrayerTimesState> get copyWith => _$PrayerTimesStateCopyWithImpl<PrayerTimesState>(this as PrayerTimesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayerTimesState&&(identical(other.prayerTimes, prayerTimes) || other.prayerTimes == prayerTimes)&&const DeepCollectionEquality().equals(other.locations, locations)&&const DeepCollectionEquality().equals(other.reminders, reminders)&&(identical(other.dayOffset, dayOffset) || other.dayOffset == dayOffset)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.canUseReminders, canUseReminders) || other.canUseReminders == canUseReminders)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,prayerTimes,const DeepCollectionEquality().hash(locations),const DeepCollectionEquality().hash(reminders),dayOffset,locationId,isLoading,canUseReminders,errorMessage);

@override
String toString() {
  return 'PrayerTimesState(prayerTimes: $prayerTimes, locations: $locations, reminders: $reminders, dayOffset: $dayOffset, locationId: $locationId, isLoading: $isLoading, canUseReminders: $canUseReminders, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $PrayerTimesStateCopyWith<$Res>  {
  factory $PrayerTimesStateCopyWith(PrayerTimesState value, $Res Function(PrayerTimesState) _then) = _$PrayerTimesStateCopyWithImpl;
@useResult
$Res call({
 PrayerTimes? prayerTimes, List<PrayerLocation> locations, List<PrayerKey> reminders, int dayOffset, int? locationId, bool isLoading, bool canUseReminders, String? errorMessage
});




}
/// @nodoc
class _$PrayerTimesStateCopyWithImpl<$Res>
    implements $PrayerTimesStateCopyWith<$Res> {
  _$PrayerTimesStateCopyWithImpl(this._self, this._then);

  final PrayerTimesState _self;
  final $Res Function(PrayerTimesState) _then;

/// Create a copy of PrayerTimesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prayerTimes = freezed,Object? locations = null,Object? reminders = null,Object? dayOffset = null,Object? locationId = freezed,Object? isLoading = null,Object? canUseReminders = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
prayerTimes: freezed == prayerTimes ? _self.prayerTimes : prayerTimes // ignore: cast_nullable_to_non_nullable
as PrayerTimes?,locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<PrayerLocation>,reminders: null == reminders ? _self.reminders : reminders // ignore: cast_nullable_to_non_nullable
as List<PrayerKey>,dayOffset: null == dayOffset ? _self.dayOffset : dayOffset // ignore: cast_nullable_to_non_nullable
as int,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,canUseReminders: null == canUseReminders ? _self.canUseReminders : canUseReminders // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PrayerTimesState].
extension PrayerTimesStatePatterns on PrayerTimesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayerTimesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayerTimesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayerTimesState value)  $default,){
final _that = this;
switch (_that) {
case _PrayerTimesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayerTimesState value)?  $default,){
final _that = this;
switch (_that) {
case _PrayerTimesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PrayerTimes? prayerTimes,  List<PrayerLocation> locations,  List<PrayerKey> reminders,  int dayOffset,  int? locationId,  bool isLoading,  bool canUseReminders,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayerTimesState() when $default != null:
return $default(_that.prayerTimes,_that.locations,_that.reminders,_that.dayOffset,_that.locationId,_that.isLoading,_that.canUseReminders,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PrayerTimes? prayerTimes,  List<PrayerLocation> locations,  List<PrayerKey> reminders,  int dayOffset,  int? locationId,  bool isLoading,  bool canUseReminders,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _PrayerTimesState():
return $default(_that.prayerTimes,_that.locations,_that.reminders,_that.dayOffset,_that.locationId,_that.isLoading,_that.canUseReminders,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PrayerTimes? prayerTimes,  List<PrayerLocation> locations,  List<PrayerKey> reminders,  int dayOffset,  int? locationId,  bool isLoading,  bool canUseReminders,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _PrayerTimesState() when $default != null:
return $default(_that.prayerTimes,_that.locations,_that.reminders,_that.dayOffset,_that.locationId,_that.isLoading,_that.canUseReminders,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _PrayerTimesState extends PrayerTimesState {
  const _PrayerTimesState({this.prayerTimes, final  List<PrayerLocation> locations = const [], final  List<PrayerKey> reminders = const [], this.dayOffset = 0, this.locationId, this.isLoading = false, this.canUseReminders = false, this.errorMessage}): _locations = locations,_reminders = reminders,super._();
  

@override final  PrayerTimes? prayerTimes;
 final  List<PrayerLocation> _locations;
@override@JsonKey() List<PrayerLocation> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}

 final  List<PrayerKey> _reminders;
@override@JsonKey() List<PrayerKey> get reminders {
  if (_reminders is EqualUnmodifiableListView) return _reminders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reminders);
}

@override@JsonKey() final  int dayOffset;
@override final  int? locationId;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool canUseReminders;
@override final  String? errorMessage;

/// Create a copy of PrayerTimesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayerTimesStateCopyWith<_PrayerTimesState> get copyWith => __$PrayerTimesStateCopyWithImpl<_PrayerTimesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayerTimesState&&(identical(other.prayerTimes, prayerTimes) || other.prayerTimes == prayerTimes)&&const DeepCollectionEquality().equals(other._locations, _locations)&&const DeepCollectionEquality().equals(other._reminders, _reminders)&&(identical(other.dayOffset, dayOffset) || other.dayOffset == dayOffset)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.canUseReminders, canUseReminders) || other.canUseReminders == canUseReminders)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,prayerTimes,const DeepCollectionEquality().hash(_locations),const DeepCollectionEquality().hash(_reminders),dayOffset,locationId,isLoading,canUseReminders,errorMessage);

@override
String toString() {
  return 'PrayerTimesState(prayerTimes: $prayerTimes, locations: $locations, reminders: $reminders, dayOffset: $dayOffset, locationId: $locationId, isLoading: $isLoading, canUseReminders: $canUseReminders, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$PrayerTimesStateCopyWith<$Res> implements $PrayerTimesStateCopyWith<$Res> {
  factory _$PrayerTimesStateCopyWith(_PrayerTimesState value, $Res Function(_PrayerTimesState) _then) = __$PrayerTimesStateCopyWithImpl;
@override @useResult
$Res call({
 PrayerTimes? prayerTimes, List<PrayerLocation> locations, List<PrayerKey> reminders, int dayOffset, int? locationId, bool isLoading, bool canUseReminders, String? errorMessage
});




}
/// @nodoc
class __$PrayerTimesStateCopyWithImpl<$Res>
    implements _$PrayerTimesStateCopyWith<$Res> {
  __$PrayerTimesStateCopyWithImpl(this._self, this._then);

  final _PrayerTimesState _self;
  final $Res Function(_PrayerTimesState) _then;

/// Create a copy of PrayerTimesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prayerTimes = freezed,Object? locations = null,Object? reminders = null,Object? dayOffset = null,Object? locationId = freezed,Object? isLoading = null,Object? canUseReminders = null,Object? errorMessage = freezed,}) {
  return _then(_PrayerTimesState(
prayerTimes: freezed == prayerTimes ? _self.prayerTimes : prayerTimes // ignore: cast_nullable_to_non_nullable
as PrayerTimes?,locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<PrayerLocation>,reminders: null == reminders ? _self._reminders : reminders // ignore: cast_nullable_to_non_nullable
as List<PrayerKey>,dayOffset: null == dayOffset ? _self.dayOffset : dayOffset // ignore: cast_nullable_to_non_nullable
as int,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,canUseReminders: null == canUseReminders ? _self.canUseReminders : canUseReminders // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
