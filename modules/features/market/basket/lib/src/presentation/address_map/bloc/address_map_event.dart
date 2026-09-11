part of 'address_map_bloc.dart';

@freezed
abstract class AddressMapEvent with _$AddressMapEvent {
  const factory AddressMapEvent.started({MarketAddress? address}) =
      _AddressMapStartedEvent;

  const factory AddressMapEvent.mapCreated(GoogleMapController controller) =
      _AddressMapCreatedEvent;

  const factory AddressMapEvent.cameraMoved(CameraPosition position) =
      _AddressMapCameraMovedEvent;

  const factory AddressMapEvent.panChanged(bool isPanning) =
      _AddressMapPanChangedEvent;

  const factory AddressMapEvent.cameraIdle() = _AddressMapCameraIdleEvent;

  const factory AddressMapEvent.moveToMyLocation() =
      _AddressMapMoveToMyLocationEvent;

  const factory AddressMapEvent.zoomIn() = _AddressMapZoomInEvent;

  const factory AddressMapEvent.zoomOut() = _AddressMapZoomOutEvent;

  const factory AddressMapEvent.save() = _AddressMapSaveEvent;

  const factory AddressMapEvent.delete() = _AddressMapDeleteEvent;
}
