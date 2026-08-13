import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'prayer_time_item_dto.g.dart';

@JsonSerializable()
class PrayerTimeItemDto {
  final String key;
  final String name;
  final String time;

  PrayerTimeItemDto({
    required this.key,
    required this.name,
    required this.time,
  });

  factory PrayerTimeItemDto.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimeItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PrayerTimeItemDtoToJson(this);

  PrayerTimeItem? toDomain() {
    final prayerKey = PrayerKey.values.firstOrNullWhere((e) => e.name == key);
    if (prayerKey == null) return null;
    return PrayerTimeItem(key: prayerKey, name: name, time: time);
  }
}
