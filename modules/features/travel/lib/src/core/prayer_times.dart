import 'package:adhan/adhan.dart';
import 'package:component_res/component_res.dart';

final _defaultLocation = LatLng(41.311081, 69.240562);

PrayerTimes getPrayerTimes({LatLng? latLng}) {
  final loc = latLng ?? _defaultLocation;
  final coordinates = Coordinates(loc.latitude, loc.longitude);
  final params = CalculationParameters(
    fajrAngle: 15,
    ishaAngle: 15.1,
    method: CalculationMethod.other,
    madhab: Madhab.hanafi,
    highLatitudeRule: HighLatitudeRule.middle_of_the_night,
    adjustments: PrayerAdjustments(
      fajr: -2,
      sunrise: 0,
      dhuhr: 0,
      asr: 0,
      maghrib: 5,
      isha: 0,
    ),
  );
  final today = DateComponents.from(DateTime.now());
  final prayerTimes = PrayerTimes(coordinates, today, params);

  return prayerTimes;
}

// final coordinates = Coordinates(41.34287510572751, 69.33764634407342); // Toshkent koordinatalari
//
// final params = CalculationParameters(
//     fajrAngle: 15,
//     ishaAngle: 15.1,
//
//
//     method: CalculationMethod.other,
//     madhab: Madhab.hanafi,
//     highLatitudeRule: HighLatitudeRule.middle_of_the_night,
//     adjustments: PrayerAdjustments(
//       fajr: -2,
//       sunrise: 0,
//       dhuhr: 0,
//       asr: 0,
//       maghrib: 5,
//       isha: 0,
//     )
// ); // Hanafi asr formulasi
//
// final today = DateComponents.from(DateTime.now());
// final prayerTimes = PrayerTimes(coordinates, today, params);
//
// final formatter = DateFormat.Hm();
//
// print("Bomdod (Fajr): ${formatter.format(prayerTimes.fajr)}");
// print("Quyosh (Sunrise): ${formatter.format(prayerTimes.sunrise)}");
// print("Peshin (Dhuhr): ${formatter.format(prayerTimes.dhuhr)}");
// print("Asr: ${formatter.format(prayerTimes.asr)}");
// print("Maghrib (Shom): ${formatter.format(prayerTimes.maghrib)}");
// print("Xufton (Isha): ${formatter.format(prayerTimes.isha)}");
