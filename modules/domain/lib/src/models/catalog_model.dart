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
  final String icon;
  final Color? color;
  final String title;
  final CatalogStatus status;
  final String? action;
  final CatalogActionType actionType;
  final bool authRequired;

  CatalogItemModel({
    required this.icon,
    this.color,
    required this.title,
    required this.status,
    this.action,
    required this.actionType,
    this.authRequired = false,
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
