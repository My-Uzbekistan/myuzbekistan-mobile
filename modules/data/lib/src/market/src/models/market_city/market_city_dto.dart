import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_city_dto.g.dart';

@JsonSerializable()
class MarketCityDto {
  final int id;
  final String? name;

  MarketCityDto({required this.id, this.name});

  factory MarketCityDto.fromJson(Map<String, dynamic> json) =>
      _$MarketCityDtoFromJson(json);

  MarketCity toDomain() => MarketCity(id: id, name: name ?? "");
}
