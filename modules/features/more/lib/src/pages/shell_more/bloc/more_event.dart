part of 'more_bloc.dart';

@freezed
abstract class MoreEvent with _$MoreEvent {
  factory MoreEvent.fetch() = _MoreEventFetch;
  factory MoreEvent.checkedPrayerWidget() = _MoreCheckedPrayerWidget;
  factory MoreEvent.checkedIqAirWidget() = _MoreCheckedIqAirWidget;
  factory MoreEvent.checkedNotification() = _MoreCheckedNotification;
  factory MoreEvent.fetchDevicesCount() = _MoreFetchDevicesCount;
  factory MoreEvent.fetchPremium() = _MoreFetchPremium;
}
