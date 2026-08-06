/// Bosh sahifadagi "Shaharlar" bo'limi uchun domain modellari.
///
/// BE: `GET /api/cities` -> `{ weekend, items: [{ id, name, photo }] }`.
/// `weekend` barcha kartochka uchun bir xil — javob tepasida bir marta keladi.
class City {
  final int id;
  final String name;
  final String? photo;

  const City({required this.id, required this.name, this.photo});
}

class CitiesResult {
  /// Kartochka ostidagi tayyor sana matni — masalan "8 — 9 avgust".
  final String? weekend;
  final List<City> items;

  const CitiesResult({this.weekend, this.items = const []});
}
