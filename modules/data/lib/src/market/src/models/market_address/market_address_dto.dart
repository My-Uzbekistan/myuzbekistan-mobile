import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_address_dto.g.dart';

@JsonSerializable()
class MarketAddressDto {
  final int id;
  final String? line;
  final String? district;
  final double? lat;
  final double? lon;
  final bool? isDefault;
  final String? phone;

  MarketAddressDto({
    required this.id,
    this.line,
    this.district,
    this.lat,
    this.lon,
    this.isDefault,
    this.phone,
  });

  factory MarketAddressDto.fromJson(Map<String, dynamic> json) =>
      _$MarketAddressDtoFromJson(json);

  MarketAddress toDomain() => MarketAddress(
    id: id,
    line: line ?? "",
    district: district,
    latitude: lat,
    longitude: lon,
    isDefault: isDefault ?? false,
    phone: phone,
  );
}
