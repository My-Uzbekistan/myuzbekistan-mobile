import 'package:domain/src/listeners/refresh_entity.dart';

class ItemChange {
  final RefreshEntity entity;
  final String id;
  final bool? isFavorite;
  final int? cartQuantity;

  const ItemChange({
    required this.entity,
    required this.id,
    this.isFavorite,
    this.cartQuantity,
  });
}
