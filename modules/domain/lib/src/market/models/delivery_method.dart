import 'delivery_type.dart';

class DeliveryMethod {
  final int id;
  final DeliveryType type;
  final String title;
  final String? subtitle;
  final int price;
  final bool isSelected;

  DeliveryMethod({
    required this.id,
    required this.type,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isSelected,
  });
}
