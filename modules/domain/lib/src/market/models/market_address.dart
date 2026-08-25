class MarketAddress {
  final int id;
  final String line;
  final String? district;
  final double? latitude;
  final double? longitude;
  final bool isDefault;

  MarketAddress({
    required this.id,
    required this.line,
    required this.isDefault,
    this.district,
    this.latitude,
    this.longitude,
  });

  String get fullLine => district == null || district!.isEmpty
      ? line
      : "$line $district";
}
