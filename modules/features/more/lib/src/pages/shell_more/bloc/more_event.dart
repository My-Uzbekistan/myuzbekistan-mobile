
part of 'more_bloc.dart';

@freezed
abstract class MoreEvent with _$MoreEvent {

  factory MoreEvent.fetch() = _MoreEventFetch;
  factory MoreEvent.checkedPrayerWidget() = _MoreCheckedPrayerWidget;

}