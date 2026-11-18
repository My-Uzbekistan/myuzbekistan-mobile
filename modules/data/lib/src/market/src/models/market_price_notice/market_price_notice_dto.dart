import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_price_notice_dto.g.dart';

@JsonSerializable()
class MarketPriceNoticeDto {
  final String? title;
  final String? text;

  MarketPriceNoticeDto({this.title, this.text});

  factory MarketPriceNoticeDto.fromJson(Map<String, dynamic> json) =>
      _$MarketPriceNoticeDtoFromJson(json);

  MarketPriceNotice toDomain() =>
      MarketPriceNotice(title: title ?? "", text: text ?? "");
}
