import 'package:shared/shared.dart';

class PrayerTimesItemModel {
  final DateTime time;
  final PrayerTimesType type;
  final bool isNext;

  PrayerTimesItemModel({
    required this.time,
    required this.type,
    this.isNext = false,
  });

  PrayerTimesItemModel copyWith({bool? isNext}) {
    return PrayerTimesItemModel(
      time: time,
      type: type,
      isNext: isNext ?? this.isNext,
    );
  }

  bool get isAfter => time.isAfter(DateTime.now());

  String get timeString {
    return DateFormat.Hm().format(time);
  }

  static List<PrayerTimesItemModel> markNext(List<PrayerTimesItemModel> times) {
    final now = DateTime.now();
    PrayerTimesItemModel? next;
    try {
      next = times.firstWhere((item) => item.time.isAfter(now));
    } catch (_) {
      next = null;
    }
    return times.map((item) {
      if (next != null && item == next) {
        return item.copyWith(isNext: true);
      }
      return item.copyWith(isNext: false);
    }).toList();
  }
}

enum PrayerTimesType { fajr, sunrise, dhuhr, asr, maghrib, isha }
