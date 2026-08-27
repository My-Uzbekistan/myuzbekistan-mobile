import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'city_location_dto.g.dart';

@JsonSerializable()
class CityLocationDto {
  final String? title;
  final String? regionName;
  final String? distanceText;
  final String? routeTitle;
  final double? lat;
  final double? lon;

  CityLocationDto({
    this.title,
    this.regionName,
    this.distanceText,
    this.routeTitle,
    this.lat,
    this.lon,
  });

  factory CityLocationDto.fromJson(Map<String, dynamic> json) =>
      _$CityLocationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CityLocationDtoToJson(this);

  CityLocation toDomain() => CityLocation(
        title: title,
        regionName: regionName,
        distanceText: distanceText,
        routeTitle: routeTitle,
        lat: lat,
        lon: lon,
      );
}
