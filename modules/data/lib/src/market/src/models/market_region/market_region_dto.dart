import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_region_dto.g.dart';

@JsonSerializable()
class MarketRegionDto {
  final int id;
  final String? name;
  final int? price;

  MarketRegionDto({required this.id, this.name, this.price});

  factory MarketRegionDto.fromJson(Map<String, dynamic> json) =>
      _$MarketRegionDtoFromJson(json);

  MarketRegion toDomain() =>
      MarketRegion(id: id, name: name ?? "", price: price ?? 0);
}
