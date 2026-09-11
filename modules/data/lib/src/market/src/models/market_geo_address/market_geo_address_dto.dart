import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_geo_address_dto.g.dart';

@JsonSerializable()
class MarketGeoAddressDto {
  final String? line;
  final String? district;
  final double? lat;
  final double? lon;

  MarketGeoAddressDto({this.line, this.district, this.lat, this.lon});

  factory MarketGeoAddressDto.fromJson(Map<String, dynamic> json) =>
      _$MarketGeoAddressDtoFromJson(json);

  MarketGeoAddress toDomain() => MarketGeoAddress(
    line: line ?? "",
    district: district,
    latitude: lat ?? 0,
    longitude: lon ?? 0,
  );
}
