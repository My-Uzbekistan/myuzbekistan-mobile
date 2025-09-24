import 'package:data/src/utils/convertors/date_time_converter.dart';
import 'package:data/src/utils/convertors/image_convertor.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'payment_history.g.dart';

@JsonSerializable()
class PaymentHistoryItemDto {
  @DateTimeConverter()
  DateTime? date;
  String? paymentId;
  double? amount;
  MerchantItemDto? merchant;

  PaymentHistoryItemDto({
    this.date,
    this.paymentId,
    this.amount,
    this.merchant,
  });

  factory PaymentHistoryItemDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentHistoryItemDtoFromJson(json);

  PaymentHistoryItem toDomain() => PaymentHistoryItem(
    date: date,
    paymentId: paymentId,
    amount: amount,
    merchant: merchant?.toDomain(),
  );
}

@JsonSerializable()
 class MerchantItemDto {
  @ImageConvertor()
  final String? icon;
  final String? name;
  final String? type;

  const MerchantItemDto({this.icon, this.name, this.type});

  factory MerchantItemDto.fromJson(Map<String, dynamic> json) =>
      _$MerchantItemDtoFromJson(json);

  MerchantItem toDomain() => MerchantItem(
    icon: icon,
    name: name,
    type: type,
  );
}
