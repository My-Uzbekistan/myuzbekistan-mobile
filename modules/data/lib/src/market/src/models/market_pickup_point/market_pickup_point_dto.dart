import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_pickup_point_dto.g.dart';

@JsonSerializable()
class MarketPickupPointDto {
  final int id;
  final String? line;
  final String? district;
  final String? schedule;
  final int? distance;
  final bool? isClosest;
  final double? lat;
  final double? lon;

  MarketPickupPointDto({
    required this.id,
    this.line,
    this.district,
    this.schedule,
    this.distance,
    this.isClosest,
    this.lat,
    this.lon,
  });

  factory MarketPickupPointDto.fromJson(Map<String, dynamic> json) =>
      _$MarketPickupPointDtoFromJson(json);

  MarketPickupPoint toDomain() => MarketPickupPoint(
    id: id,
    line: line ?? "",
    district: district,
    schedule: schedule,
    distanceMeters: distance,
    isClosest: isClosest ?? false,
    latitude: lat,
    longitude: lon,
  );
}
