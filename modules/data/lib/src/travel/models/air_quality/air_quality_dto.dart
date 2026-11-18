import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'air_quality_dto.g.dart';

@JsonSerializable()
class AirQualityDto {
  final int aqi;
  final int level;
  final String? mainPollutant;

  AirQualityDto({required this.aqi, required this.level, this.mainPollutant});

  factory AirQualityDto.fromJson(Map<String, dynamic> json) =>
      _$AirQualityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AirQualityDtoToJson(this);

  AirQuality toDomain() =>
      AirQuality(aqi: aqi, level: level, mainPollutant: mainPollutant);
}
