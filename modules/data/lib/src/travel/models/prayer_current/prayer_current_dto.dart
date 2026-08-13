import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'prayer_current_dto.g.dart';

@JsonSerializable()
class PrayerCurrentDto {
  final String? key;
  final String? name;
  final String? time;
  final String? nextKey;
  final String? nextName;
  final String? nextTime;
  final int? remainingSeconds;

  PrayerCurrentDto({
    this.key,
    this.name,
    this.time,
    this.nextKey,
    this.nextName,
    this.nextTime,
    this.remainingSeconds,
  });

  factory PrayerCurrentDto.fromJson(Map<String, dynamic> json) =>
      _$PrayerCurrentDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PrayerCurrentDtoToJson(this);

  PrayerCurrent toDomain() => PrayerCurrent(
    key: PrayerKey.values.firstOrNullWhere((e) => e.name == key),
    name: name,
    time: time,
    nextKey: PrayerKey.values.firstOrNullWhere((e) => e.name == nextKey),
    nextName: nextName,
    nextTime: nextTime,
    remainingSeconds: remainingSeconds,
  );
}
