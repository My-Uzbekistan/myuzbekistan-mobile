import 'museum_audience.dart';
import 'museum_tariff_category.dart';

class MuseumOrderItem {
  final String tariffId;
  final String title;
  final MuseumAudience? audience;
  final MuseumTariffCategory? category;
  final int quantity;
  final int unitPrice;
  final int totalAmount;

  MuseumOrderItem({
    required this.tariffId,
    required this.title,
    required this.quantity,
    required this.unitPrice,
    required this.totalAmount,
    this.audience,
    this.category,
  });
}
