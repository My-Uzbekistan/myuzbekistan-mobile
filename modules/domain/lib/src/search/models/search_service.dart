import 'dart:ui';

import '../../models/catalog_model.dart';

class SearchService {
  final int id;
  final String title;
  final String? icon;
  final Color? color;
  final bool authRequired;
  final CatalogActionType actionType;
  final bool isPremiumOnly;
  final int? freeUsageLimit;
  final String? deeplink;

  const SearchService({
    required this.id,
    required this.title,
    this.icon,
    this.color,
    this.authRequired = false,
    this.actionType = CatalogActionType.inner,
    this.isPremiumOnly = false,
    this.freeUsageLimit,
    this.deeplink,
  });

  CatalogItemModel toCatalogItem() => CatalogItemModel(
    id: id,
    icon: icon,
    color: color,
    title: title,
    status: CatalogStatus.active,
    action: deeplink,
    actionType: actionType,
    authRequired: authRequired,
    isPremiumOnly: isPremiumOnly,
    freeUsageLimit: freeUsageLimit,
  );
}
