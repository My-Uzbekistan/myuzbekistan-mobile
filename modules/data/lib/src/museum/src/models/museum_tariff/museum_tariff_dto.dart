import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_tariff_dto.g.dart';

@JsonSerializable()
class MuseumTariffDto {
  final String id;
  final String? title;
  final int? price;
  final String? currency;
  final bool? purchasable;
  final String? audience;
  final String? category;
  final String? code;
  final int? validHours;
  final List<MuseumTariffDto>? children;

  MuseumTariffDto({
    required this.id,
    this.title,
    this.price,
    this.currency,
    this.purchasable,
    this.audience,
    this.category,
    this.code,
    this.validHours,
    this.children,
  });

  factory MuseumTariffDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumTariffDtoFromJson(json);

  MuseumTariff toDomain() => MuseumTariff(
    id: id,
    title: title ?? "",
    price: price,
    currency: currency,
    purchasable: purchasable ?? false,
    audience: MuseumAudience.values.firstOrNullWhere((e) => e.name == audience),
    category: MuseumTariffCategory.values.firstOrNullWhere(
      (e) => e.name == category,
    ),
    code: code,
    validHours: validHours,
    children: children?.map((e) => e.toDomain()).toList() ?? const [],
  );
}
