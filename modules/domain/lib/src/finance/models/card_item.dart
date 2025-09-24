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
    this.image
  });

  String? get cardExpiry => expiry
      ?.replaceAllMapped(RegExp(r'.{2}'), (match) {
    if (match.end == expiry?.length) {
      return match.group(0)!;
    }
    return "${match.group(0)}/";
  });
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

  String get cardTitle => maskedNumber.orEmpty();
  // "${ps.orEmpty().capitalize()} ${maskedNumber.orEmpty()}";
}
