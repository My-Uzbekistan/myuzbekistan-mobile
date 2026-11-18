import 'prayer_key.dart';

class PrayerCurrent {
  final PrayerKey? key;
  final String? name;
  final String? time;
  final PrayerKey? nextKey;
  final String? nextName;
  final String? nextTime;
  final int? remainingSeconds;

  const PrayerCurrent({
    this.key,
    this.name,
    this.time,
    this.nextKey,
    this.nextName,
    this.nextTime,
    this.remainingSeconds,
  });

  bool get hasNext => nextName != null && remainingSeconds != null;
}
