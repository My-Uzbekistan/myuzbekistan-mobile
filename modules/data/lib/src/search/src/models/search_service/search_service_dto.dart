import 'dart:ui';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../../utils/convertors/view_type_convertor.dart';

part 'search_service_dto.g.dart';

@JsonSerializable()
class SearchServiceDto {
  final int id;
  final String? title;
  final String? icon;
  @HexColorConverter()
  final Color? color;
  final bool? authRequired;
  final int? actionType;
  final bool? isPremiumOnly;
  final int? freeUsageLimit;
  final String? deeplink;

  SearchServiceDto({
    required this.id,
    this.title,
    this.icon,
    this.color,
    this.authRequired,
    this.actionType,
    this.isPremiumOnly,
    this.freeUsageLimit,
    this.deeplink,
  });

  factory SearchServiceDto.fromJson(Map<String, dynamic> json) =>
      _$SearchServiceDtoFromJson(json);

  SearchService toDomain() => SearchService(
    id: id,
    title: title ?? "",
    icon: icon,
    color: color,
    authRequired: authRequired ?? false,
    actionType: CatalogActionType.values.firstWhere(
      (e) => e.id == actionType,
      orElse: () => CatalogActionType.inner,
    ),
    isPremiumOnly: isPremiumOnly ?? false,
    freeUsageLimit: freeUsageLimit,
    deeplink: deeplink,
  );
}
