import 'package:shared/shared.dart';

class CardItem {
  final int id;
  final String? status;
  final String? statusMessage;
  final bool isExternal;
  final String? cardNumber;
  final String? icon;
  final String? ps;
  final String? expiry;
  final String? image;

  CardItem({
    required this.id,
    required this.status,
    required this.statusMessage,
    required this.isExternal,
    required this.cardNumber,
    required this.icon,
    required this.ps,
    this.expiry,
    this.image,
  });

  static const _expiryLength = 4;

  String? get cardExpiry {
    final value = expiry;
    if (value == null || value.length != _expiryLength) {
      return value;
    }
    return "${value.substring(2)}/${value.substring(0, 2)}";
  }
  String? get maskedNumber =>
      cardNumber
          ?.replaceAll('*', '•')
          .replaceAllMapped(RegExp(r'.{4}'), (match) => '${match.group(0)} ')
          .trim();

  // cardNumber
  //     // ?.takeLast(8)
  //     .replaceAll('*', '•')
  //     // .replaceAllMapped(RegExp(r'.{4}'), (match) => '${match.group(0)} ')
  //     .trim();

  String? get shortMaskedNumber {
    final lastDigits = cardNumber?.takeLast(4);
    return lastDigits.isNullOrEmpty ? null : "****$lastDigits";
  }

  String get cardTitle => maskedNumber.orEmpty();
  // "${ps.orEmpty().capitalize()} ${maskedNumber.orEmpty()}";
}
