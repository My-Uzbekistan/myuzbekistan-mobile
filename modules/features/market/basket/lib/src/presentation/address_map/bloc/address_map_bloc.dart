import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'address_map_event.dart';
part 'address_map_state.dart';
part 'address_map_bloc.freezed.dart';

@injectable
class AddressMapBloc extends Bloc<AddressMapEvent, AddressMapState> {
  static const LatLng _tashkent = LatLng(41.311151, 69.279737);

  final MarketRepository _repository;
  final AppRefreshListener _refresh;
  final LocationManager _locationManager = LocationManager();

  AddressMapBloc(this._repository, this._refresh)
    : super(
        AddressMapState(
          mapController: Completer<GoogleMapController>(),
          initialCamera: const CameraPosition(target: _tashkent, zoom: 15),
        ),
      ) {
    on<_AddressMapStartedEvent>(_started);
    on<_AddressMapCreatedEvent>(_mapCreated);
    on<_AddressMapCameraMovedEvent>(_cameraMoved);
    on<_AddressMapPanChangedEvent>(_panChanged);
    on<_AddressMapCameraIdleEvent>(_cameraIdle);
    on<_AddressMapMoveToMyLocationEvent>(_moveToMyLocation);
    on<_AddressMapZoomInEvent>(_zoomIn);
    on<_AddressMapZoomOutEvent>(_zoomOut);
    on<_AddressMapSaveEvent>(_save);
    on<_AddressMapDeleteEvent>(_delete);
  }

  Future<void> _started(
    _AddressMapStartedEvent event,
    Emitter<AddressMapState> emit,
  ) async {
    final address = event.address;
    if (address != null) {
      final latitude = address.latitude;
      final longitude = address.longitude;
      emit(
        state.copyWith(
          addressId: address.id,
          addressPhone: address.phone,
          isDefaultAddress: address.isDefault,
          address: MarketGeoAddress(
            line: address.line,
            district: address.district,
            latitude: latitude ?? _tashkent.latitude,
            longitude: longitude ?? _tashkent.longitude,
          ),
        ),
      );
      if (latitude != null && longitude != null) {
        final target = LatLng(latitude, longitude);
        emit(
          state.copyWith(
            target: target,
            initialCamera: CameraPosition(target: target, zoom: state.zoom),
          ),
        );
        return;
      }
    }

    final position = await _locationManager.getCurrentLocation();
    if (position == null) return;

    final target = LatLng(position.latitude, position.longitude);
    emit(
      state.copyWith(
        target: target,
        initialCamera: CameraPosition(target: target, zoom: state.zoom),
      ),
    );
    await _animateTo(target, state.zoom);
  }

  void _mapCreated(
    _AddressMapCreatedEvent event,
    Emitter<AddressMapState> emit,
  ) {
    if (state.mapController.isCompleted) return;
    state.mapController.complete(event.controller);
  }

  void _cameraMoved(
    _AddressMapCameraMovedEvent event,
    Emitter<AddressMapState> emit,
  ) {
    emit(
      state.copyWith(
        target: event.position.target,
        zoom: event.position.zoom,
      ),
    );
  }

  void _panChanged(
    _AddressMapPanChangedEvent event,
    Emitter<AddressMapState> emit,
  ) {
    emit(state.copyWith(isPanning: event.isPanning));
  }

  Future<void> _cameraIdle(
    _AddressMapCameraIdleEvent event,
    Emitter<AddressMapState> emit,
  ) async {
    final target = state.target;
    if (target == null || target == state.geocodedTarget) return;

    emit(
      state.copyWith(
        isPanning: false,
        isAddressLoading: true,
        geocodedTarget: target,
      ),
    );
    try {
      final address = await _repository.geoAddress(
        latitude: target.latitude,
        longitude: target.longitude,
      );
      emit(state.copyWith(address: address, errorMessage: null));
    } catch (e) {
      emit(state.copyWith(address: null, errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isAddressLoading: false));
  }

  Future<void> _moveToMyLocation(
    _AddressMapMoveToMyLocationEvent event,
    Emitter<AddressMapState> emit,
  ) async {
    final position = await _locationManager.getCurrentLocation();
    if (position == null) return;
    await _animateTo(
      LatLng(position.latitude, position.longitude),
      state.zoom,
    );
  }

  Future<void> _zoomIn(
    _AddressMapZoomInEvent event,
    Emitter<AddressMapState> emit,
  ) {
    return _zoomTo(emit, state.zoom + 1);
  }

  Future<void> _zoomOut(
    _AddressMapZoomOutEvent event,
    Emitter<AddressMapState> emit,
  ) {
    return _zoomTo(emit, state.zoom - 1);
  }

  Future<void> _zoomTo(Emitter<AddressMapState> emit, double zoom) async {
    final newZoom = zoom.clamp(0.0, 21.0);
    emit(state.copyWith(zoom: newZoom));
    await _animateTo(state.target ?? state.initialCamera.target, newZoom);
  }

  Future<void> _animateTo(LatLng target, double zoom) async {
    final controller = await state.mapController.future;
    await controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: target, zoom: zoom),
      ),
    );
  }

  Future<void> _save(
    _AddressMapSaveEvent event,
    Emitter<AddressMapState> emit,
  ) async {
    final address = state.address;
    if (address == null) return;

    emit(state.copyWith(isSaving: true, errorMessage: null));
    try {
      final addressId = state.addressId;
      final saved = addressId == null
          ? await _repository.addAddress(
              line: address.line,
              district: address.district,
              latitude: address.latitude,
              longitude: address.longitude,
              phone: state.addressPhone,
            )
          : await _repository.editAddress(
              addressId: addressId,
              line: address.line,
              district: address.district,
              latitude: address.latitude,
              longitude: address.longitude,
              isDefault: state.isDefaultAddress,
              phone: state.addressPhone,
            );
      emit(state.copyWith(savedAddress: saved));
      _refresh.notify(AppRefreshTopic.marketAddresses);
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isSaving: false));
  }

  Future<void> _delete(
    _AddressMapDeleteEvent event,
    Emitter<AddressMapState> emit,
  ) async {
    final addressId = state.addressId;
    if (addressId == null) return;

    emit(state.copyWith(isSaving: true, errorMessage: null));
    try {
      await _repository.deleteAddress(addressId: addressId);
      emit(state.copyWith(isDeleted: true));
      _refresh.notify(AppRefreshTopic.marketAddresses);
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isSaving: false));
  }

  String? _errorMessage(Object error) {
    if (error is DioException && error.error is AppException) {
      return (error.error as AppException).message;
    }
    return null;
  }
}
