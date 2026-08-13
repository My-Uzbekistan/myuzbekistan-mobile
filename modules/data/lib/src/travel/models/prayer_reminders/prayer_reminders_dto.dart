import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'prayer_reminders_dto.g.dart';

@JsonSerializable()
class PrayerRemindersDto {
  final int? locationId;
  final List<String>? prayers;

  PrayerRemindersDto({this.locationId, this.prayers});

  factory PrayerRemindersDto.fromJson(Map<String, dynamic> json) =>
      _$PrayerRemindersDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PrayerRemindersDtoToJson(this);

  PrayerReminders toDomain() => PrayerReminders(
    locationId: locationId,
    prayers: (prayers ?? [])
        .map((e) => PrayerKey.values.firstOrNullWhere((k) => k.name == e))
        .whereType<PrayerKey>()
        .toList(),
  );
}
