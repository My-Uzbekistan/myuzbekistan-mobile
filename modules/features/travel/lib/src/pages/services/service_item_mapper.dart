import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'catalog_action.dart';
import 'service_item.dart';

/// `catalog-v3` ([CatalogItemModel]) elementini "Сервисы" bloki uchun
/// [ServiceItem] UI modeliga map qiladi.
///
/// Bosh sahifadagi [ServicesWidget] va to'liq ro'yxat [ServicesSheet]
/// bir xil map qilishdan foydalanadi (takrorlanmaslik uchun).
extension CatalogServiceItemX on CatalogItemModel {
  ServiceItem toServiceItem(BuildContext context, {bool featured = false}) {
    return ServiceItem(
      title: title,
      iconUrl: icon,
      color: context.appColors.fill.quaternary,
      featured: featured,
      onTap: () => openCatalogItem(context, this),
    );
  }
}
