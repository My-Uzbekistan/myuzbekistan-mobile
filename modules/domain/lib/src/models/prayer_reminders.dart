import 'prayer_key.dart';

class PrayerReminders {
  final int? locationId;
  final List<PrayerKey> prayers;

  const PrayerReminders({this.locationId, this.prayers = const []});

  bool isEnabled(PrayerKey key) => prayers.contains(key);
}
