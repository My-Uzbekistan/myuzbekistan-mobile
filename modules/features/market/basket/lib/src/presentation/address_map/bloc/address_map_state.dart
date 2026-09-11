part of 'address_map_bloc.dart';

@freezed
abstract class AddressMapState with _$AddressMapState {
  const factory AddressMapState({
    required Completer<GoogleMapController> mapController,
    required CameraPosition initialCamera,
    @Default(15.0) double zoom,
    LatLng? target,
    LatLng? geocodedTarget,
    int? addressId,
    String? addressPhone,
    @Default(false) bool isDefaultAddress,
    MarketGeoAddress? address,
    @Default(false) bool isPanning,
    @Default(false) bool isAddressLoading,
    @Default(false) bool isSaving,
    MarketAddress? savedAddress,
    @Default(false) bool isDeleted,
    String? errorMessage,
  }) = _AddressMapState;

  const AddressMapState._();

  bool get isEdit => addressId != null;

  bool get canSave => address != null && !isSaving && !isAddressLoading;

  bool get isFinished => savedAddress != null || isDeleted;
}
