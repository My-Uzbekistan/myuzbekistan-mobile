import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationManager {
  // Singleton (agar global foydalanilsa)
  static final LocationManager _instance = LocationManager._internal();

  factory LocationManager() => _instance;

  LocationManager._internal();

  Position? _currentLocation;

  /// Location permission so‘rash
  Future<bool> _requestPermissions() async {
    final status = await Permission.location.request();
    return status.isGranted;
  }

  /// Location xizmatlari yoqilganligini tekshirish
  Future<bool> _isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  Position? getCurrentPosition() {
    return _currentLocation;
  }
  /// Permission va servislar tekshirilib, hozirgi joylashuvni olish
  Future<Position?> getCurrentLocation() async {
    // Permissionlar
    final serviceEnabled = await _isLocationServiceEnabled();
    if (!serviceEnabled) {
      print("Location service yoqilmagan.");
      return null;
    }
    final hasPermission = await _handlePermission();
    if (!hasPermission) {
      print("Location ruxsat berilmadi.");
      return null;
    }
    _currentLocation= await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.high));

    return Future.value(_currentLocation);
  }

  /// Stream – joylashuv o‘zgarishini kuzatish
  Stream<Position> getPositionStream({
    LocationAccuracy accuracy = LocationAccuracy.high,
    int distanceFilter = 10,
  }) {
    return Geolocator.getPositionStream(
      locationSettings: LocationSettings(
        accuracy: accuracy,
        distanceFilter: distanceFilter,
      ),
    );
  }

  /// Ichki permission boshqaruvi
  Future<bool> _handlePermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return false;
    }

    if (permission == LocationPermission.deniedForever) {
      // Ruxsatni sozlamalardan ochish kerak
      await openAppSettings();
      return false;
    }

    return true;
  }
}
