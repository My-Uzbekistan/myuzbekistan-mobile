part of 'prayer_times_bloc.dart';

@freezed
abstract class PrayerTimesEvent with _$PrayerTimesEvent {
  const factory PrayerTimesEvent.initial() = _Initial;

  const factory PrayerTimesEvent.loadLocations() = _LoadLocations;

  const factory PrayerTimesEvent.loadReminders() = _LoadReminders;

  const factory PrayerTimesEvent.changeDay(int step) = _ChangeDay;

  const factory PrayerTimesEvent.changeLocation(int locationId) =
      _ChangeLocation;

  const factory PrayerTimesEvent.toggleReminder(PrayerKey key) =
      _ToggleReminder;
}
