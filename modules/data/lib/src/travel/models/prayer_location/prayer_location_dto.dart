import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'prayer_location_dto.g.dart';

@JsonSerializable()
class PrayerLocationDto {
  final int id;
  final String name;

  PrayerLocationDto({required this.id, required this.name});

  factory PrayerLocationDto.fromJson(Map<String, dynamic> json) =>
      _$PrayerLocationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PrayerLocationDtoToJson(this);

  PrayerLocation toDomain() => PrayerLocation(id: id, name: name);
}
