import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_price_row_dto.g.dart';

@JsonSerializable()
class MarketPriceRowDto {
  final String? key;
  final String? title;
  final String? value;

  MarketPriceRowDto({this.key, this.title, this.value});

  factory MarketPriceRowDto.fromJson(Map<String, dynamic> json) =>
      _$MarketPriceRowDtoFromJson(json);

  MarketPriceRow toDomain() => MarketPriceRow(
    key: MarketPriceRowKey.values.firstOrNullWhere((e) => e.name == key),
    title: title ?? "",
    value: value ?? "",
  );
}
