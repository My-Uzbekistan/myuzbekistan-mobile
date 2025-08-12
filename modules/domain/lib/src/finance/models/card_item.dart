import 'package:shared/shared.dart';

class CardItem {
  final int id;
  final String? status;
  final String? statusMessage;
  final bool isExternal;
  final String? cardNumber;
  final String? icon;
  final String? ps;

  CardItem({
    required this.id,
    required this.status,
    required this.statusMessage,
    required this.isExternal,
    required this.cardNumber,
    required this.icon,
    required this.ps,
  });

  String? get maskedNumber =>
      cardNumber
          ?.takeLast(8)
          .replaceAll('*', '•')
          .replaceAllMapped(RegExp(r'.{4}'), (match) => '${match.group(0)} ')
          .trim();

  String get cardTitle =>
      "${ps.orEmpty().capitalize()} ${maskedNumber.orEmpty()}";
}
