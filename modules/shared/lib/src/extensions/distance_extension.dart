extension DistanceFormat on num? {
  String? formatDistance({
    required String meterLabel,
    required String kmLabel,
  }) {
    final value = this;
    if (value == null || value <= 0) return null;
    final meters = value.toDouble();
    if (meters < 1000) {
      return "${meters.round()} $meterLabel";
    }
    final km = meters / 1000;
    final String number;
    if (km >= 10) {
      number = km.round().toString();
    } else {
      final rounded = double.parse(km.toStringAsFixed(1));
      number = rounded % 1 == 0
          ? rounded.toInt().toString()
          : rounded.toString();
    }
    return "$number $kmLabel";
  }
}
