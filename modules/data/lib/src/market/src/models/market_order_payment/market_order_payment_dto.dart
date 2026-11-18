import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_order_payment_dto.g.dart';

@JsonSerializable()
class MarketOrderPaymentDto {
  final String? maskedPan;
  final String? ps;
  final String? icon;

  MarketOrderPaymentDto({this.maskedPan, this.ps, this.icon});

  factory MarketOrderPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$MarketOrderPaymentDtoFromJson(json);

  MarketOrderPayment toDomain() => MarketOrderPayment(
    maskedPan: maskedPan ?? "",
    ps: ps ?? "",
    icon: icon ?? "",
  );
}
