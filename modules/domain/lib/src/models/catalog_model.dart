// {
// "icon":
// "color":"#37A8C7",
// "title:"My eSIM",
// "status":""// upcoming, newService, active,
// "action":"link",
// "actionType"://"redirect","inner"
//
//
// }

import 'dart:ui';

class CatalogItemModel {
  final int? id;
  final String? icon;
  final Color? color;
  final String title;
  final CatalogStatus status;
  final String? action;
  final CatalogActionType actionType;
  final bool authRequired;
  final bool? isPremiumOnly;
  final int? freeUsageLimit;

  CatalogItemModel({
    this.id,
    this.icon,
    this.color,
    required this.title,
    required this.status,
    this.action,
    required this.actionType,
    this.authRequired = false,
    this.isPremiumOnly, this.freeUsageLimit,
  });
}

enum PremiumAccessReason {
  Premium,
  FreeLimit,
  LimitReached,
  PremiumRequired,
  PlanNotAllowed,
  PlanNotFound,
}

class PremiumAccessModel {
  final bool canAccess;
  final PremiumAccessReason reason;
  final int? usageCount;
  final int? limit;

  PremiumAccessModel({
    required this.canAccess,
    required this.reason,
    this.usageCount,
    this.limit,
  });
}

enum CatalogStatus {
  inActive(0),
  upcoming(1),
  newService(3),
  active(4);

  final int id;

  const CatalogStatus(this.id);
}

enum CatalogActionType {
  redirect(0),
  inner(1);

  final int id;

  const CatalogActionType(this.id);
}
