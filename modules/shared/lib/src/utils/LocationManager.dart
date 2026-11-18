import 'package:geolocator/geolocator.dart';

class LocationManager {
  static final LocationManager _instance = LocationManager._internal();

  factory LocationManager() => _instance;

  LocationManager._internal();

  Position? _currentLocation;

  Future<bool> _isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  Position? getCurrentPosition() {
    return _currentLocation;
  }

  Future<Position?> getCurrentLocation() async {
    final serviceEnabled = await _isLocationServiceEnabled();
    if (!serviceEnabled) {
      return null;
    }
    final hasPermission = await _handlePermission();
    if (!hasPermission) {
      return null;
    }

    final lastKnown = await Geolocator.getLastKnownPosition();

    if (lastKnown != null) {
      final duration = DateTime.now().difference(lastKnown.timestamp);
      if (duration.inMinutes < 30) {
        _currentLocation = lastKnown;
      }
    }

    if (getCurrentPosition() == null) {
      try {
        _currentLocation = await Geolocator.getCurrentPosition(
            locationSettings: LocationSettings(
                accuracy: LocationAccuracy.high,
                timeLimit: const Duration(seconds: 10)));
      } catch (_) {
        return null;
      }
    }

    return Future.value(_currentLocation);
  }

  Future<Position?> getPositionSilently() async {
    if (!await _isLocationServiceEnabled()) return null;
    if (!await hasLocationPermission()) return null;

    final lastKnown = await Geolocator.getLastKnownPosition();
    if (lastKnown != null &&
        DateTime.now().difference(lastKnown.timestamp).inMinutes < 10) {
      _currentLocation = lastKnown;
      return lastKnown;
    }

    try {
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.low,
          timeLimit: Duration(seconds: 5),
        ),
      );
      _currentLocation = position;
      return position;
    } catch (_) {
      return null;
    }
  }

  Future<bool> hasLocationPermission() async {
    final permission = await Geolocator.checkPermission();
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  Future<bool> hasAlwaysPermission() async {
    return await Geolocator.checkPermission() == LocationPermission.always;
  }

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

  Future<bool> _handlePermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }
}
