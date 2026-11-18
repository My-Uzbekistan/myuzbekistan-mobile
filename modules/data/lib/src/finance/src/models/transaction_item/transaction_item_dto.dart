import 'package:data/src/finance/src/models/merchant/merchant_dto.dart';
import 'package:data/src/finance/src/models/transaction_item/payment_action_dto.dart';
import 'package:data/src/utils/convertors/date_time_converter.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../payment_history/payment_history.dart';

part 'transaction_item_dto.g.dart';

@JsonSerializable()
class KeyValueDto {
  final String key;
  final String value;

  KeyValueDto({required this.key, required this.value});

  factory KeyValueDto.fromJson(Map<String, dynamic> json) =>
      _$KeyValueDtoFromJson(json);
}

@JsonSerializable()
class TransactionItemDto {
  final List<KeyValueDto> items;
  @DateTimeConverter()
  final DateTime date;
  final String paymentId;
  final int amount;
  final String? taxQr;
  final MerchantItemDto merchant;
  final String status;
  final PaymentActionDto? action;

  TransactionItemDto({
    required this.items,
    required this.date,
    required this.paymentId,
    required this.amount,
    required this.merchant,
    required this.status,
    this.taxQr,
    this.action,
  });

  factory TransactionItemDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemDtoFromJson(json);

  TransactionItem toDomain() => TransactionItem(
    items: items.map((e) => KeyValue(key: e.key, value: e.value)).toList(),
    date: date,
    paymentId: paymentId,
    amount: amount,
    taxQr: taxQr,
    merchant: merchant.toDomain(),
    status: PaymentStatus.values.firstWhere(
      (e) => e.name == status,
      orElse: () => PaymentStatus.success,
    ),
    action: action?.toDomain(),
  );
}
