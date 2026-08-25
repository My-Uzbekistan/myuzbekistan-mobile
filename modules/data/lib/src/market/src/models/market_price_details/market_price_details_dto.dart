import 'package:data/src/market/src/models/market_price_notice/market_price_notice_dto.dart';
import 'package:data/src/market/src/models/market_price_row/market_price_row_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_price_details_dto.g.dart';

@JsonSerializable()
class MarketPriceDetailsDto {
  final String? title;
  final List<MarketPriceRowDto>? rows;
  final MarketPriceRowDto? total;
  final MarketPriceNoticeDto? notice;

  MarketPriceDetailsDto({this.title, this.rows, this.total, this.notice});

  factory MarketPriceDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$MarketPriceDetailsDtoFromJson(json);

  MarketPriceDetails toDomain() => MarketPriceDetails(
    title: title ?? "",
    rows: rows?.map((e) => e.toDomain()).toList() ?? const [],
    total: total?.toDomain(),
    notice: notice?.toDomain(),
  );
}
