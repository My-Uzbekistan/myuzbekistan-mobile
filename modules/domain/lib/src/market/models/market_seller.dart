class MarketSeller {
  final int id;
  final String name;
  final String type;
  final String? address;
  final double? latitude;
  final double? longitude;
  final int? distanceMeters;

  MarketSeller({
    required this.id,
    required this.name,
    required this.type,
    this.address,
    this.latitude,
    this.longitude,
    this.distanceMeters,
  });

  bool get hasCoordinates => latitude != null && longitude != null;
}
