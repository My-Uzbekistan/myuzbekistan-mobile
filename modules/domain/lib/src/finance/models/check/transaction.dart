import 'package:domain/domain.dart';

class TransactionItem {
  final List<KeyValue> items;
  final DateTime date;
  final String? taxQr;
  final String paymentId;
  final int amount;
  final MerchantItem merchant;

  TransactionItem({
    required this.items,
    required this.date,
    required this.paymentId,
    required this.amount,
    required this.merchant,
    this.taxQr,
  });
}

class KeyValue {
  final String key;
  final String value;

  KeyValue({required this.key, required this.value});
}
