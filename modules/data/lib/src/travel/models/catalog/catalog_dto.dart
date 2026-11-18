//
// final String icon;
// final Color? color;
// final String title;
// final CatalogStatus status;
// final String? action;
// final AppActionType actionType;
// final bool authRequired;

import 'dart:ui';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../utils/convertors/app_action_type_convertor.dart';
import '../../../utils/convertors/view_type_convertor.dart';

part 'catalog_dto.g.dart';

@JsonSerializable()
class CatalogDto {
  final int? id;
  final String? icon;
  @HexColorConverter()
  final Color? color;
  final String title;
  final int? status;
  final String? action;
  @AppActionTypeConvertor()
  final AppActionType actionType;
  final bool? authRequired;
  final bool? isPremiumOnly;
  final int? freeUsageLimit;


  const CatalogDto({
    this.id,
    required this.icon,
    this.color,
    required this.title,
    this.status,
    this.action,
    required this.actionType,
    this.authRequired, this.isPremiumOnly, this.freeUsageLimit,
  });

  factory CatalogDto.fromJson(Map<String, dynamic> json) =>
      _$CatalogDtoFromJson(json);

  CatalogItemModel toDomain() => CatalogItemModel(
    id: id,
    icon: icon,
    color: color,
    title: title,
    status: CatalogStatus.values.firstWhere(
      (e) => e.id == status,
      orElse: () => CatalogStatus.upcoming,
    ),
    action: action,
    actionType: actionType,
    authRequired: authRequired ?? false,
    isPremiumOnly: isPremiumOnly ?? false,
    freeUsageLimit: freeUsageLimit,
  );
}
