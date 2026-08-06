/// Bosh sahifa tepasidagi havo sifati ko'rsatkichi (IQAir).
///
/// BE: `GET /api/air-quality?lat=&lon=` -> `{ aqi, level, mainPollutant }`.
/// `level` rangni belgilaydi: 0 yashil, 1 sariq, 2 qizil, 3 qora.
class AirQuality {
  final int aqi;
  final int level;
  final String? mainPollutant;

  const AirQuality({
    required this.aqi,
    required this.level,
    this.mainPollutant,
  });
}
