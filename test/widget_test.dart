// This is a basic Flutter collapsed_container test.
//
// To perform an interaction with a collapsed_container in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the collapsed_container
// tree, read text, and verify that the values of collapsed_container properties are correct.

import 'package:adhan/adhan.dart';
import 'package:shared/shared.dart';


void main() {
  final coordinates = Coordinates(41.34287510572751, 69.33764634407342); // Toshkent koordinatalari

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
    )
  ); // Hanafi asr formulasi

  final today = DateComponents.from(DateTime.now());
  final prayerTimes = PrayerTimes(coordinates, today, params);

  final formatter = DateFormat.Hm();

  print("Bomdod (Fajr): ${formatter.format(prayerTimes.fajr)}");
  print("Quyosh (Sunrise): ${formatter.format(prayerTimes.sunrise)}");
  print("Peshin (Dhuhr): ${formatter.format(prayerTimes.dhuhr)}");
  print("Asr: ${formatter.format(prayerTimes.asr)}");
  print("Maghrib (Shom): ${formatter.format(prayerTimes.maghrib)}");
  print("Xufton (Isha): ${formatter.format(prayerTimes.isha)}");
}
