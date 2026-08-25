import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'delivery_method_dto.g.dart';

@JsonSerializable()
class DeliveryMethodDto {
  final int id;
  final String? type;
  final String? title;
  final String? subtitle;
  final int? price;
  final bool? selected;

  DeliveryMethodDto({
    required this.id,
    this.type,
    this.title,
    this.subtitle,
    this.price,
    this.selected,
  });

  factory DeliveryMethodDto.fromJson(Map<String, dynamic> json) =>
      _$DeliveryMethodDtoFromJson(json);

  DeliveryMethod toDomain() => DeliveryMethod(
    id: id,
    type: DeliveryType.values.firstWhere(
      (e) => e.name == type,
      orElse: () => DeliveryType.courier,
    ),
    title: title ?? "",
    subtitle: subtitle,
    price: price ?? 0,
    isSelected: selected ?? false,
  );
}
