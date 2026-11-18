part of 'prayer_times_bloc.dart';

@freezed
abstract class PrayerTimesState with _$PrayerTimesState {
  const factory PrayerTimesState({
    PrayerTimes? prayerTimes,
    @Default([]) List<PrayerLocation> locations,
    @Default([]) List<PrayerKey> reminders,
    @Default(0) int dayOffset,
    int? locationId,
    @Default(false) bool isLoading,
    @Default(false) bool canUseReminders,
    String? errorMessage,
  }) = _PrayerTimesState;

  const PrayerTimesState._();

  DateTime get date {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day + dayOffset);
  }

  String get locationName =>
      locations.firstOrNullWhere((e) => e.id == locationId)?.name ??
      prayerTimes?.location ??
      "";
}
