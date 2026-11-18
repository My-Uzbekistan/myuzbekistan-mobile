import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_seller_dto.g.dart';

@JsonSerializable()
class MarketSellerDto {
  final int id;
  final String? name;
  final String? type;
  final String? address;
  final double? lat;
  final double? lon;
  final int? distanceMeters;

  MarketSellerDto({
    required this.id,
    this.name,
    this.type,
    this.address,
    this.lat,
    this.lon,
    this.distanceMeters,
  });

  factory MarketSellerDto.fromJson(Map<String, dynamic> json) =>
      _$MarketSellerDtoFromJson(json);

  MarketSeller toDomain() => MarketSeller(
    id: id,
    name: name ?? "",
    type: type ?? "",
    address: address,
    latitude: lat,
    longitude: lon,
    distanceMeters: distanceMeters,
  );
}
