import 'prayer_current.dart';
import 'prayer_time_item.dart';

class PrayerTimes {
  final int locationId;
  final String location;
  final DateTime date;
  final String dateText;
  final List<PrayerTimeItem> times;
  final PrayerCurrent? current;

  const PrayerTimes({
    required this.locationId,
    required this.location,
    required this.date,
    required this.dateText,
    required this.times,
    this.current,
  });
}
