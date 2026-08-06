import 'package:adhan/adhan.dart';
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

  /// Bitta [PrayerTimes] obyektidan tartiblangan nomoz vaqtlari ro'yxatini quradi.
  static List<PrayerTimesItemModel> fromPrayerTimes(PrayerTimes t) {
    return [
      PrayerTimesItemModel(time: t.fajr, type: PrayerTimesType.fajr),
      PrayerTimesItemModel(time: t.sunrise, type: PrayerTimesType.sunrise),
      PrayerTimesItemModel(time: t.dhuhr, type: PrayerTimesType.dhuhr),
      PrayerTimesItemModel(time: t.asr, type: PrayerTimesType.asr),
      PrayerTimesItemModel(time: t.maghrib, type: PrayerTimesType.maghrib),
      PrayerTimesItemModel(time: t.isha, type: PrayerTimesType.isha),
    ];
  }

  /// Hozirgi vaqtdan keyingi eng yaqin vaqtni `isNext = true` qilib belgilaydi.
  /// Bugungi barcha vaqtlar o'tib bo'lgan bo'lsa, hech biri belgilanmaydi
  /// (bu holatda ro'yxatga ertangi kun vaqtlari qo'shilgan bo'lishi kerak).
  static List<PrayerTimesItemModel> markNext(List<PrayerTimesItemModel> times) {
    final now = DateTime.now();
    final next = times
        .where((item) => item.time.isAfter(now))
        .firstOrNull;
    return times.map((item) {
      return item.copyWith(isNext: next != null && identical(item, next));
    }).toList();
  }
}

enum PrayerTimesType { fajr, sunrise, dhuhr, asr, maghrib, isha }
