class CityLocation {
  final String? title;
  final String? regionName;
  final String? distanceText;
  final String? routeTitle;
  final double? lat;
  final double? lon;

  const CityLocation({
    this.title,
    this.regionName,
    this.distanceText,
    this.routeTitle,
    this.lat,
    this.lon,
  });

  bool get hasCoordinates => lat != null && lon != null;
}
