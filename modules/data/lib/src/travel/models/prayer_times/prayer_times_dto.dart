import 'package:data/src/travel/models/prayer_current/prayer_current_dto.dart';
import 'package:data/src/travel/models/prayer_time_item/prayer_time_item_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'prayer_times_dto.g.dart';

@JsonSerializable()
class PrayerTimesDto {
  final int locationId;
  final String location;
  final String date;
  final String dateText;
  final List<PrayerTimeItemDto> times;
  final PrayerCurrentDto? current;

  PrayerTimesDto({
    required this.locationId,
    required this.location,
    required this.date,
    required this.dateText,
    this.times = const [],
    this.current,
  });

  factory PrayerTimesDto.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PrayerTimesDtoToJson(this);

  PrayerTimes toDomain() => PrayerTimes(
    locationId: locationId,
    location: location,
    date: DateTime.tryParse(date) ?? DateTime.now(),
    dateText: dateText,
    times: times
        .map((e) => e.toDomain())
        .whereType<PrayerTimeItem>()
        .toList(),
    current: current?.toDomain(),
  );
}
