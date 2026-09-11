// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressMapEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressMapEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressMapEvent()';
}


}

/// @nodoc
class $AddressMapEventCopyWith<$Res>  {
$AddressMapEventCopyWith(AddressMapEvent _, $Res Function(AddressMapEvent) __);
}


/// Adds pattern-matching-related methods to [AddressMapEvent].
extension AddressMapEventPatterns on AddressMapEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddressMapStartedEvent value)?  started,TResult Function( _AddressMapCreatedEvent value)?  mapCreated,TResult Function( _AddressMapCameraMovedEvent value)?  cameraMoved,TResult Function( _AddressMapPanChangedEvent value)?  panChanged,TResult Function( _AddressMapCameraIdleEvent value)?  cameraIdle,TResult Function( _AddressMapMoveToMyLocationEvent value)?  moveToMyLocation,TResult Function( _AddressMapZoomInEvent value)?  zoomIn,TResult Function( _AddressMapZoomOutEvent value)?  zoomOut,TResult Function( _AddressMapSaveEvent value)?  save,TResult Function( _AddressMapDeleteEvent value)?  delete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressMapStartedEvent() when started != null:
return started(_that);case _AddressMapCreatedEvent() when mapCreated != null:
return mapCreated(_that);case _AddressMapCameraMovedEvent() when cameraMoved != null:
return cameraMoved(_that);case _AddressMapPanChangedEvent() when panChanged != null:
return panChanged(_that);case _AddressMapCameraIdleEvent() when cameraIdle != null:
return cameraIdle(_that);case _AddressMapMoveToMyLocationEvent() when moveToMyLocation != null:
return moveToMyLocation(_that);case _AddressMapZoomInEvent() when zoomIn != null:
return zoomIn(_that);case _AddressMapZoomOutEvent() when zoomOut != null:
return zoomOut(_that);case _AddressMapSaveEvent() when save != null:
return save(_that);case _AddressMapDeleteEvent() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddressMapStartedEvent value)  started,required TResult Function( _AddressMapCreatedEvent value)  mapCreated,required TResult Function( _AddressMapCameraMovedEvent value)  cameraMoved,required TResult Function( _AddressMapPanChangedEvent value)  panChanged,required TResult Function( _AddressMapCameraIdleEvent value)  cameraIdle,required TResult Function( _AddressMapMoveToMyLocationEvent value)  moveToMyLocation,required TResult Function( _AddressMapZoomInEvent value)  zoomIn,required TResult Function( _AddressMapZoomOutEvent value)  zoomOut,required TResult Function( _AddressMapSaveEvent value)  save,required TResult Function( _AddressMapDeleteEvent value)  delete,}){
final _that = this;
switch (_that) {
case _AddressMapStartedEvent():
return started(_that);case _AddressMapCreatedEvent():
return mapCreated(_that);case _AddressMapCameraMovedEvent():
return cameraMoved(_that);case _AddressMapPanChangedEvent():
return panChanged(_that);case _AddressMapCameraIdleEvent():
return cameraIdle(_that);case _AddressMapMoveToMyLocationEvent():
return moveToMyLocation(_that);case _AddressMapZoomInEvent():
return zoomIn(_that);case _AddressMapZoomOutEvent():
return zoomOut(_that);case _AddressMapSaveEvent():
return save(_that);case _AddressMapDeleteEvent():
return delete(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddressMapStartedEvent value)?  started,TResult? Function( _AddressMapCreatedEvent value)?  mapCreated,TResult? Function( _AddressMapCameraMovedEvent value)?  cameraMoved,TResult? Function( _AddressMapPanChangedEvent value)?  panChanged,TResult? Function( _AddressMapCameraIdleEvent value)?  cameraIdle,TResult? Function( _AddressMapMoveToMyLocationEvent value)?  moveToMyLocation,TResult? Function( _AddressMapZoomInEvent value)?  zoomIn,TResult? Function( _AddressMapZoomOutEvent value)?  zoomOut,TResult? Function( _AddressMapSaveEvent value)?  save,TResult? Function( _AddressMapDeleteEvent value)?  delete,}){
final _that = this;
switch (_that) {
case _AddressMapStartedEvent() when started != null:
return started(_that);case _AddressMapCreatedEvent() when mapCreated != null:
return mapCreated(_that);case _AddressMapCameraMovedEvent() when cameraMoved != null:
return cameraMoved(_that);case _AddressMapPanChangedEvent() when panChanged != null:
return panChanged(_that);case _AddressMapCameraIdleEvent() when cameraIdle != null:
return cameraIdle(_that);case _AddressMapMoveToMyLocationEvent() when moveToMyLocation != null:
return moveToMyLocation(_that);case _AddressMapZoomInEvent() when zoomIn != null:
return zoomIn(_that);case _AddressMapZoomOutEvent() when zoomOut != null:
return zoomOut(_that);case _AddressMapSaveEvent() when save != null:
return save(_that);case _AddressMapDeleteEvent() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MarketAddress? address)?  started,TResult Function( GoogleMapController controller)?  mapCreated,TResult Function( CameraPosition position)?  cameraMoved,TResult Function( bool isPanning)?  panChanged,TResult Function()?  cameraIdle,TResult Function()?  moveToMyLocation,TResult Function()?  zoomIn,TResult Function()?  zoomOut,TResult Function()?  save,TResult Function()?  delete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressMapStartedEvent() when started != null:
return started(_that.address);case _AddressMapCreatedEvent() when mapCreated != null:
return mapCreated(_that.controller);case _AddressMapCameraMovedEvent() when cameraMoved != null:
return cameraMoved(_that.position);case _AddressMapPanChangedEvent() when panChanged != null:
return panChanged(_that.isPanning);case _AddressMapCameraIdleEvent() when cameraIdle != null:
return cameraIdle();case _AddressMapMoveToMyLocationEvent() when moveToMyLocation != null:
return moveToMyLocation();case _AddressMapZoomInEvent() when zoomIn != null:
return zoomIn();case _AddressMapZoomOutEvent() when zoomOut != null:
return zoomOut();case _AddressMapSaveEvent() when save != null:
return save();case _AddressMapDeleteEvent() when delete != null:
return delete();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MarketAddress? address)  started,required TResult Function( GoogleMapController controller)  mapCreated,required TResult Function( CameraPosition position)  cameraMoved,required TResult Function( bool isPanning)  panChanged,required TResult Function()  cameraIdle,required TResult Function()  moveToMyLocation,required TResult Function()  zoomIn,required TResult Function()  zoomOut,required TResult Function()  save,required TResult Function()  delete,}) {final _that = this;
switch (_that) {
case _AddressMapStartedEvent():
return started(_that.address);case _AddressMapCreatedEvent():
return mapCreated(_that.controller);case _AddressMapCameraMovedEvent():
return cameraMoved(_that.position);case _AddressMapPanChangedEvent():
return panChanged(_that.isPanning);case _AddressMapCameraIdleEvent():
return cameraIdle();case _AddressMapMoveToMyLocationEvent():
return moveToMyLocation();case _AddressMapZoomInEvent():
return zoomIn();case _AddressMapZoomOutEvent():
return zoomOut();case _AddressMapSaveEvent():
return save();case _AddressMapDeleteEvent():
return delete();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MarketAddress? address)?  started,TResult? Function( GoogleMapController controller)?  mapCreated,TResult? Function( CameraPosition position)?  cameraMoved,TResult? Function( bool isPanning)?  panChanged,TResult? Function()?  cameraIdle,TResult? Function()?  moveToMyLocation,TResult? Function()?  zoomIn,TResult? Function()?  zoomOut,TResult? Function()?  save,TResult? Function()?  delete,}) {final _that = this;
switch (_that) {
case _AddressMapStartedEvent() when started != null:
return started(_that.address);case _AddressMapCreatedEvent() when mapCreated != null:
return mapCreated(_that.controller);case _AddressMapCameraMovedEvent() when cameraMoved != null:
return cameraMoved(_that.position);case _AddressMapPanChangedEvent() when panChanged != null:
return panChanged(_that.isPanning);case _AddressMapCameraIdleEvent() when cameraIdle != null:
return cameraIdle();case _AddressMapMoveToMyLocationEvent() when moveToMyLocation != null:
return moveToMyLocation();case _AddressMapZoomInEvent() when zoomIn != null:
return zoomIn();case _AddressMapZoomOutEvent() when zoomOut != null:
return zoomOut();case _AddressMapSaveEvent() when save != null:
return save();case _AddressMapDeleteEvent() when delete != null:
return delete();case _:
  return null;

}
}

}

/// @nodoc


class _AddressMapStartedEvent implements AddressMapEvent {
  const _AddressMapStartedEvent({this.address});
  

 final  MarketAddress? address;

/// Create a copy of AddressMapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressMapStartedEventCopyWith<_AddressMapStartedEvent> get copyWith => __$AddressMapStartedEventCopyWithImpl<_AddressMapStartedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMapStartedEvent&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'AddressMapEvent.started(address: $address)';
}


}

/// @nodoc
abstract mixin class _$AddressMapStartedEventCopyWith<$Res> implements $AddressMapEventCopyWith<$Res> {
  factory _$AddressMapStartedEventCopyWith(_AddressMapStartedEvent value, $Res Function(_AddressMapStartedEvent) _then) = __$AddressMapStartedEventCopyWithImpl;
@useResult
$Res call({
 MarketAddress? address
});




}
/// @nodoc
class __$AddressMapStartedEventCopyWithImpl<$Res>
    implements _$AddressMapStartedEventCopyWith<$Res> {
  __$AddressMapStartedEventCopyWithImpl(this._self, this._then);

  final _AddressMapStartedEvent _self;
  final $Res Function(_AddressMapStartedEvent) _then;

/// Create a copy of AddressMapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = freezed,}) {
  return _then(_AddressMapStartedEvent(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as MarketAddress?,
  ));
}


}

/// @nodoc


class _AddressMapCreatedEvent implements AddressMapEvent {
  const _AddressMapCreatedEvent(this.controller);
  

 final  GoogleMapController controller;

/// Create a copy of AddressMapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressMapCreatedEventCopyWith<_AddressMapCreatedEvent> get copyWith => __$AddressMapCreatedEventCopyWithImpl<_AddressMapCreatedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMapCreatedEvent&&(identical(other.controller, controller) || other.controller == controller));
}


@override
int get hashCode => Object.hash(runtimeType,controller);

@override
String toString() {
  return 'AddressMapEvent.mapCreated(controller: $controller)';
}


}

/// @nodoc
abstract mixin class _$AddressMapCreatedEventCopyWith<$Res> implements $AddressMapEventCopyWith<$Res> {
  factory _$AddressMapCreatedEventCopyWith(_AddressMapCreatedEvent value, $Res Function(_AddressMapCreatedEvent) _then) = __$AddressMapCreatedEventCopyWithImpl;
@useResult
$Res call({
 GoogleMapController controller
});




}
/// @nodoc
class __$AddressMapCreatedEventCopyWithImpl<$Res>
    implements _$AddressMapCreatedEventCopyWith<$Res> {
  __$AddressMapCreatedEventCopyWithImpl(this._self, this._then);

  final _AddressMapCreatedEvent _self;
  final $Res Function(_AddressMapCreatedEvent) _then;

/// Create a copy of AddressMapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? controller = null,}) {
  return _then(_AddressMapCreatedEvent(
null == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as GoogleMapController,
  ));
}


}

/// @nodoc


class _AddressMapCameraMovedEvent implements AddressMapEvent {
  const _AddressMapCameraMovedEvent(this.position);
  

 final  CameraPosition position;

/// Create a copy of AddressMapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressMapCameraMovedEventCopyWith<_AddressMapCameraMovedEvent> get copyWith => __$AddressMapCameraMovedEventCopyWithImpl<_AddressMapCameraMovedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMapCameraMovedEvent&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString() {
  return 'AddressMapEvent.cameraMoved(position: $position)';
}


}

/// @nodoc
abstract mixin class _$AddressMapCameraMovedEventCopyWith<$Res> implements $AddressMapEventCopyWith<$Res> {
  factory _$AddressMapCameraMovedEventCopyWith(_AddressMapCameraMovedEvent value, $Res Function(_AddressMapCameraMovedEvent) _then) = __$AddressMapCameraMovedEventCopyWithImpl;
@useResult
$Res call({
 CameraPosition position
});




}
/// @nodoc
class __$AddressMapCameraMovedEventCopyWithImpl<$Res>
    implements _$AddressMapCameraMovedEventCopyWith<$Res> {
  __$AddressMapCameraMovedEventCopyWithImpl(this._self, this._then);

  final _AddressMapCameraMovedEvent _self;
  final $Res Function(_AddressMapCameraMovedEvent) _then;

/// Create a copy of AddressMapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? position = null,}) {
  return _then(_AddressMapCameraMovedEvent(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as CameraPosition,
  ));
}


}

/// @nodoc


class _AddressMapPanChangedEvent implements AddressMapEvent {
  const _AddressMapPanChangedEvent(this.isPanning);
  

 final  bool isPanning;

/// Create a copy of AddressMapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressMapPanChangedEventCopyWith<_AddressMapPanChangedEvent> get copyWith => __$AddressMapPanChangedEventCopyWithImpl<_AddressMapPanChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMapPanChangedEvent&&(identical(other.isPanning, isPanning) || other.isPanning == isPanning));
}


@override
int get hashCode => Object.hash(runtimeType,isPanning);

@override
String toString() {
  return 'AddressMapEvent.panChanged(isPanning: $isPanning)';
}


}

/// @nodoc
abstract mixin class _$AddressMapPanChangedEventCopyWith<$Res> implements $AddressMapEventCopyWith<$Res> {
  factory _$AddressMapPanChangedEventCopyWith(_AddressMapPanChangedEvent value, $Res Function(_AddressMapPanChangedEvent) _then) = __$AddressMapPanChangedEventCopyWithImpl;
@useResult
$Res call({
 bool isPanning
});




}
/// @nodoc
class __$AddressMapPanChangedEventCopyWithImpl<$Res>
    implements _$AddressMapPanChangedEventCopyWith<$Res> {
  __$AddressMapPanChangedEventCopyWithImpl(this._self, this._then);

  final _AddressMapPanChangedEvent _self;
  final $Res Function(_AddressMapPanChangedEvent) _then;

/// Create a copy of AddressMapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isPanning = null,}) {
  return _then(_AddressMapPanChangedEvent(
null == isPanning ? _self.isPanning : isPanning // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _AddressMapCameraIdleEvent implements AddressMapEvent {
  const _AddressMapCameraIdleEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMapCameraIdleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressMapEvent.cameraIdle()';
}


}




/// @nodoc


class _AddressMapMoveToMyLocationEvent implements AddressMapEvent {
  const _AddressMapMoveToMyLocationEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMapMoveToMyLocationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressMapEvent.moveToMyLocation()';
}


}




/// @nodoc


class _AddressMapZoomInEvent implements AddressMapEvent {
  const _AddressMapZoomInEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMapZoomInEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressMapEvent.zoomIn()';
}


}




/// @nodoc


class _AddressMapZoomOutEvent implements AddressMapEvent {
  const _AddressMapZoomOutEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMapZoomOutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressMapEvent.zoomOut()';
}


}




/// @nodoc


class _AddressMapSaveEvent implements AddressMapEvent {
  const _AddressMapSaveEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMapSaveEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressMapEvent.save()';
}


}




/// @nodoc


class _AddressMapDeleteEvent implements AddressMapEvent {
  const _AddressMapDeleteEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMapDeleteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressMapEvent.delete()';
}


}




/// @nodoc
mixin _$AddressMapState {

 Completer<GoogleMapController> get mapController; CameraPosition get initialCamera; double get zoom; LatLng? get target; LatLng? get geocodedTarget; int? get addressId; String? get addressPhone; bool get isDefaultAddress; MarketGeoAddress? get address; bool get isPanning; bool get isAddressLoading; bool get isSaving; MarketAddress? get savedAddress; bool get isDeleted; String? get errorMessage;
/// Create a copy of AddressMapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressMapStateCopyWith<AddressMapState> get copyWith => _$AddressMapStateCopyWithImpl<AddressMapState>(this as AddressMapState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressMapState&&(identical(other.mapController, mapController) || other.mapController == mapController)&&(identical(other.initialCamera, initialCamera) || other.initialCamera == initialCamera)&&(identical(other.zoom, zoom) || other.zoom == zoom)&&(identical(other.target, target) || other.target == target)&&(identical(other.geocodedTarget, geocodedTarget) || other.geocodedTarget == geocodedTarget)&&(identical(other.addressId, addressId) || other.addressId == addressId)&&(identical(other.addressPhone, addressPhone) || other.addressPhone == addressPhone)&&(identical(other.isDefaultAddress, isDefaultAddress) || other.isDefaultAddress == isDefaultAddress)&&(identical(other.address, address) || other.address == address)&&(identical(other.isPanning, isPanning) || other.isPanning == isPanning)&&(identical(other.isAddressLoading, isAddressLoading) || other.isAddressLoading == isAddressLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.savedAddress, savedAddress) || other.savedAddress == savedAddress)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,mapController,initialCamera,zoom,target,geocodedTarget,addressId,addressPhone,isDefaultAddress,address,isPanning,isAddressLoading,isSaving,savedAddress,isDeleted,errorMessage);

@override
String toString() {
  return 'AddressMapState(mapController: $mapController, initialCamera: $initialCamera, zoom: $zoom, target: $target, geocodedTarget: $geocodedTarget, addressId: $addressId, addressPhone: $addressPhone, isDefaultAddress: $isDefaultAddress, address: $address, isPanning: $isPanning, isAddressLoading: $isAddressLoading, isSaving: $isSaving, savedAddress: $savedAddress, isDeleted: $isDeleted, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AddressMapStateCopyWith<$Res>  {
  factory $AddressMapStateCopyWith(AddressMapState value, $Res Function(AddressMapState) _then) = _$AddressMapStateCopyWithImpl;
@useResult
$Res call({
 Completer<GoogleMapController> mapController, CameraPosition initialCamera, double zoom, LatLng? target, LatLng? geocodedTarget, int? addressId, String? addressPhone, bool isDefaultAddress, MarketGeoAddress? address, bool isPanning, bool isAddressLoading, bool isSaving, MarketAddress? savedAddress, bool isDeleted, String? errorMessage
});




}
/// @nodoc
class _$AddressMapStateCopyWithImpl<$Res>
    implements $AddressMapStateCopyWith<$Res> {
  _$AddressMapStateCopyWithImpl(this._self, this._then);

  final AddressMapState _self;
  final $Res Function(AddressMapState) _then;

/// Create a copy of AddressMapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mapController = null,Object? initialCamera = null,Object? zoom = null,Object? target = freezed,Object? geocodedTarget = freezed,Object? addressId = freezed,Object? addressPhone = freezed,Object? isDefaultAddress = null,Object? address = freezed,Object? isPanning = null,Object? isAddressLoading = null,Object? isSaving = null,Object? savedAddress = freezed,Object? isDeleted = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
mapController: null == mapController ? _self.mapController : mapController // ignore: cast_nullable_to_non_nullable
as Completer<GoogleMapController>,initialCamera: null == initialCamera ? _self.initialCamera : initialCamera // ignore: cast_nullable_to_non_nullable
as CameraPosition,zoom: null == zoom ? _self.zoom : zoom // ignore: cast_nullable_to_non_nullable
as double,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as LatLng?,geocodedTarget: freezed == geocodedTarget ? _self.geocodedTarget : geocodedTarget // ignore: cast_nullable_to_non_nullable
as LatLng?,addressId: freezed == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int?,addressPhone: freezed == addressPhone ? _self.addressPhone : addressPhone // ignore: cast_nullable_to_non_nullable
as String?,isDefaultAddress: null == isDefaultAddress ? _self.isDefaultAddress : isDefaultAddress // ignore: cast_nullable_to_non_nullable
as bool,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as MarketGeoAddress?,isPanning: null == isPanning ? _self.isPanning : isPanning // ignore: cast_nullable_to_non_nullable
as bool,isAddressLoading: null == isAddressLoading ? _self.isAddressLoading : isAddressLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,savedAddress: freezed == savedAddress ? _self.savedAddress : savedAddress // ignore: cast_nullable_to_non_nullable
as MarketAddress?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressMapState].
extension AddressMapStatePatterns on AddressMapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressMapState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressMapState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressMapState value)  $default,){
final _that = this;
switch (_that) {
case _AddressMapState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressMapState value)?  $default,){
final _that = this;
switch (_that) {
case _AddressMapState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Completer<GoogleMapController> mapController,  CameraPosition initialCamera,  double zoom,  LatLng? target,  LatLng? geocodedTarget,  int? addressId,  String? addressPhone,  bool isDefaultAddress,  MarketGeoAddress? address,  bool isPanning,  bool isAddressLoading,  bool isSaving,  MarketAddress? savedAddress,  bool isDeleted,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressMapState() when $default != null:
return $default(_that.mapController,_that.initialCamera,_that.zoom,_that.target,_that.geocodedTarget,_that.addressId,_that.addressPhone,_that.isDefaultAddress,_that.address,_that.isPanning,_that.isAddressLoading,_that.isSaving,_that.savedAddress,_that.isDeleted,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Completer<GoogleMapController> mapController,  CameraPosition initialCamera,  double zoom,  LatLng? target,  LatLng? geocodedTarget,  int? addressId,  String? addressPhone,  bool isDefaultAddress,  MarketGeoAddress? address,  bool isPanning,  bool isAddressLoading,  bool isSaving,  MarketAddress? savedAddress,  bool isDeleted,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AddressMapState():
return $default(_that.mapController,_that.initialCamera,_that.zoom,_that.target,_that.geocodedTarget,_that.addressId,_that.addressPhone,_that.isDefaultAddress,_that.address,_that.isPanning,_that.isAddressLoading,_that.isSaving,_that.savedAddress,_that.isDeleted,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Completer<GoogleMapController> mapController,  CameraPosition initialCamera,  double zoom,  LatLng? target,  LatLng? geocodedTarget,  int? addressId,  String? addressPhone,  bool isDefaultAddress,  MarketGeoAddress? address,  bool isPanning,  bool isAddressLoading,  bool isSaving,  MarketAddress? savedAddress,  bool isDeleted,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AddressMapState() when $default != null:
return $default(_that.mapController,_that.initialCamera,_that.zoom,_that.target,_that.geocodedTarget,_that.addressId,_that.addressPhone,_that.isDefaultAddress,_that.address,_that.isPanning,_that.isAddressLoading,_that.isSaving,_that.savedAddress,_that.isDeleted,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AddressMapState extends AddressMapState {
  const _AddressMapState({required this.mapController, required this.initialCamera, this.zoom = 15.0, this.target, this.geocodedTarget, this.addressId, this.addressPhone, this.isDefaultAddress = false, this.address, this.isPanning = false, this.isAddressLoading = false, this.isSaving = false, this.savedAddress, this.isDeleted = false, this.errorMessage}): super._();
  

@override final  Completer<GoogleMapController> mapController;
@override final  CameraPosition initialCamera;
@override@JsonKey() final  double zoom;
@override final  LatLng? target;
@override final  LatLng? geocodedTarget;
@override final  int? addressId;
@override final  String? addressPhone;
@override@JsonKey() final  bool isDefaultAddress;
@override final  MarketGeoAddress? address;
@override@JsonKey() final  bool isPanning;
@override@JsonKey() final  bool isAddressLoading;
@override@JsonKey() final  bool isSaving;
@override final  MarketAddress? savedAddress;
@override@JsonKey() final  bool isDeleted;
@override final  String? errorMessage;

/// Create a copy of AddressMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressMapStateCopyWith<_AddressMapState> get copyWith => __$AddressMapStateCopyWithImpl<_AddressMapState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMapState&&(identical(other.mapController, mapController) || other.mapController == mapController)&&(identical(other.initialCamera, initialCamera) || other.initialCamera == initialCamera)&&(identical(other.zoom, zoom) || other.zoom == zoom)&&(identical(other.target, target) || other.target == target)&&(identical(other.geocodedTarget, geocodedTarget) || other.geocodedTarget == geocodedTarget)&&(identical(other.addressId, addressId) || other.addressId == addressId)&&(identical(other.addressPhone, addressPhone) || other.addressPhone == addressPhone)&&(identical(other.isDefaultAddress, isDefaultAddress) || other.isDefaultAddress == isDefaultAddress)&&(identical(other.address, address) || other.address == address)&&(identical(other.isPanning, isPanning) || other.isPanning == isPanning)&&(identical(other.isAddressLoading, isAddressLoading) || other.isAddressLoading == isAddressLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.savedAddress, savedAddress) || other.savedAddress == savedAddress)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,mapController,initialCamera,zoom,target,geocodedTarget,addressId,addressPhone,isDefaultAddress,address,isPanning,isAddressLoading,isSaving,savedAddress,isDeleted,errorMessage);

@override
String toString() {
  return 'AddressMapState(mapController: $mapController, initialCamera: $initialCamera, zoom: $zoom, target: $target, geocodedTarget: $geocodedTarget, addressId: $addressId, addressPhone: $addressPhone, isDefaultAddress: $isDefaultAddress, address: $address, isPanning: $isPanning, isAddressLoading: $isAddressLoading, isSaving: $isSaving, savedAddress: $savedAddress, isDeleted: $isDeleted, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AddressMapStateCopyWith<$Res> implements $AddressMapStateCopyWith<$Res> {
  factory _$AddressMapStateCopyWith(_AddressMapState value, $Res Function(_AddressMapState) _then) = __$AddressMapStateCopyWithImpl;
@override @useResult
$Res call({
 Completer<GoogleMapController> mapController, CameraPosition initialCamera, double zoom, LatLng? target, LatLng? geocodedTarget, int? addressId, String? addressPhone, bool isDefaultAddress, MarketGeoAddress? address, bool isPanning, bool isAddressLoading, bool isSaving, MarketAddress? savedAddress, bool isDeleted, String? errorMessage
});




}
/// @nodoc
class __$AddressMapStateCopyWithImpl<$Res>
    implements _$AddressMapStateCopyWith<$Res> {
  __$AddressMapStateCopyWithImpl(this._self, this._then);

  final _AddressMapState _self;
  final $Res Function(_AddressMapState) _then;

/// Create a copy of AddressMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mapController = null,Object? initialCamera = null,Object? zoom = null,Object? target = freezed,Object? geocodedTarget = freezed,Object? addressId = freezed,Object? addressPhone = freezed,Object? isDefaultAddress = null,Object? address = freezed,Object? isPanning = null,Object? isAddressLoading = null,Object? isSaving = null,Object? savedAddress = freezed,Object? isDeleted = null,Object? errorMessage = freezed,}) {
  return _then(_AddressMapState(
mapController: null == mapController ? _self.mapController : mapController // ignore: cast_nullable_to_non_nullable
as Completer<GoogleMapController>,initialCamera: null == initialCamera ? _self.initialCamera : initialCamera // ignore: cast_nullable_to_non_nullable
as CameraPosition,zoom: null == zoom ? _self.zoom : zoom // ignore: cast_nullable_to_non_nullable
as double,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as LatLng?,geocodedTarget: freezed == geocodedTarget ? _self.geocodedTarget : geocodedTarget // ignore: cast_nullable_to_non_nullable
as LatLng?,addressId: freezed == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int?,addressPhone: freezed == addressPhone ? _self.addressPhone : addressPhone // ignore: cast_nullable_to_non_nullable
as String?,isDefaultAddress: null == isDefaultAddress ? _self.isDefaultAddress : isDefaultAddress // ignore: cast_nullable_to_non_nullable
as bool,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as MarketGeoAddress?,isPanning: null == isPanning ? _self.isPanning : isPanning // ignore: cast_nullable_to_non_nullable
as bool,isAddressLoading: null == isAddressLoading ? _self.isAddressLoading : isAddressLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,savedAddress: freezed == savedAddress ? _self.savedAddress : savedAddress // ignore: cast_nullable_to_non_nullable
as MarketAddress?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
