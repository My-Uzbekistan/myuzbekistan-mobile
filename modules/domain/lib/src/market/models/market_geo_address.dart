class MarketGeoAddress {
  final String line;
  final String? district;
  final double latitude;
  final double longitude;

  MarketGeoAddress({
    required this.line,
    required this.latitude,
    required this.longitude,
    this.district,
  });

  String get fullLine =>
      district == null || district!.isEmpty ? line : "$line $district";
}
