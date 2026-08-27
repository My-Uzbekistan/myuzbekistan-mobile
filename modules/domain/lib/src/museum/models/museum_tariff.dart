import 'museum_audience.dart';
import 'museum_tariff_category.dart';

class MuseumTariff {
  final String id;
  final String title;
  final int? price;
  final String? currency;
  final bool purchasable;
  final MuseumAudience? audience;
  final MuseumTariffCategory? category;
  final String? code;
  final int? validHours;
  final List<MuseumTariff> children;

  MuseumTariff({
    required this.id,
    required this.title,
    required this.purchasable,
    required this.children,
    this.price,
    this.currency,
    this.audience,
    this.category,
    this.code,
    this.validHours,
  });

  List<MuseumTariff> get purchasableLeaves => [
    if (purchasable) this,
    ...children.expand((child) => child.purchasableLeaves),
  ];
}
