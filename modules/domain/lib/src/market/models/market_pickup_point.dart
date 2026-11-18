class MarketPickupPoint {
  final int id;
  final String line;
  final String? district;
  final String? schedule;
  final int? distanceMeters;
  final bool isClosest;
  final double? latitude;
  final double? longitude;

  MarketPickupPoint({
    required this.id,
    required this.line,
    required this.isClosest,
    this.district,
    this.schedule,
    this.distanceMeters,
    this.latitude,
    this.longitude,
  });

  String get fullLine =>
      district == null || district!.isEmpty ? line : "$line $district";
}
