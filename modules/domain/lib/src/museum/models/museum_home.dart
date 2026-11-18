import 'museum_card.dart';
import 'museum_city.dart';

class MuseumHome {
  final List<MuseumCity> cities;
  final List<MuseumCard> popular;
  final List<MuseumCard> recommended;

  MuseumHome({
    required this.cities,
    required this.popular,
    required this.recommended,
  });
}
