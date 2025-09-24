//
// final String icon;
// final Color? color;
// final String title;
// final CatalogStatus status;
// final String? action;
// final CatalogActionType actionType;
// final bool authRequired;

import 'dart:ui';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../utils/convertors/view_type_convertor.dart';

part 'catalog_dto.g.dart';

@JsonSerializable()
class CatalogDto {
  final String icon;
  @HexColorConverter()
  final Color? color;
  final String title;
  final int? status;
  final String? action;
  final int? actionType;
  final bool? authRequired;

  const CatalogDto({
    required this.icon,
    this.color,
    required this.title,
    this.status,
    this.action,
    this.actionType,
    this.authRequired,
  });

  factory CatalogDto.fromJson(Map<String, dynamic> json) =>
      _$CatalogDtoFromJson(json);

  CatalogItemModel toDomain() => CatalogItemModel(
    icon: icon,
    color: color,
    title: title,
    status: CatalogStatus.values.firstWhere(
      (e) => e.id == status,
      orElse: () => CatalogStatus.upcoming,
    ),
    action: action,
    actionType: CatalogActionType.values.firstWhere(
      (e) => e.id == actionType,
      orElse: () => CatalogActionType.inner,
    ),
    authRequired: authRequired ?? false,
  );
}
