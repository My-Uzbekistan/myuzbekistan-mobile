import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_order_item_dto.g.dart';

@JsonSerializable()
class MuseumOrderItemDto {
  final String tariffId;
  final String? title;
  final String? audience;
  final String? category;
  final int? quantity;
  final int? unitPrice;
  final int? totalAmount;

  MuseumOrderItemDto({
    required this.tariffId,
    this.title,
    this.audience,
    this.category,
    this.quantity,
    this.unitPrice,
    this.totalAmount,
  });

  factory MuseumOrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumOrderItemDtoFromJson(json);

  MuseumOrderItem toDomain() => MuseumOrderItem(
    tariffId: tariffId,
    title: title ?? "",
    audience: MuseumAudience.values.firstOrNullWhere((e) => e.name == audience),
    category: MuseumTariffCategory.values.firstOrNullWhere(
      (e) => e.name == category,
    ),
    quantity: quantity ?? 0,
    unitPrice: unitPrice ?? 0,
    totalAmount: totalAmount ?? 0,
  );
}
