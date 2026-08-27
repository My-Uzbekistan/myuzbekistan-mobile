import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'catalog_action.dart';
import 'service_badge.dart';
import 'service_item.dart';

extension CatalogServiceItemX on CatalogItemModel {
  ServiceItem toServiceItem(BuildContext context, {bool featured = false}) {
    return ServiceItem(
      title: title,
      iconUrl: icon,
      color: context.appColors.fill.quaternary,
      featured: featured,
      badge: _badge,
      onTap: () => openCatalogItem(context, this),
    );
  }

  ServiceBadge? get _badge {
    if (status == CatalogStatus.upcoming) return ServiceBadge.upcoming;
    if (isPremiumOnly ?? false) return ServiceBadge.premium;
    if (status == CatalogStatus.newService) return ServiceBadge.newService;
    return null;
  }
}
