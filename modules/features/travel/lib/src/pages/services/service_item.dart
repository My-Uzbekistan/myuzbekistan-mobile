import 'package:flutter/material.dart';

/// Bosh sahifadagi "Сервисы" bloki uchun bitta xizmat elementi (UI modeli).
///
/// Ma'lumot `catalog-v3` ([CatalogItemModel]) dan map qilinadi.
/// [featured] — katta (kartochka) ko'rinishdagi element.
/// Aks holda — kichik ikonka + sarlavha ko'rinishida chiziladi.
class ServiceItem {
  final String title;

  /// SVG asset yo'li (oq rangda tint qilinadi). [iconUrl] berilsa e'tiborsiz.
  final String? iconPath;

  /// Backend ikonasi (masalan catalog-v3). Berilsa network rasm sifatida
  /// chiziladi, tint qilinmaydi.
  final String? iconUrl;

  /// Kichik plitka foni / katta plitka aksenti.
  final Color color;

  final bool featured;

  final VoidCallback? onTap;

  const ServiceItem({
    required this.title,
    this.iconPath,
    this.iconUrl,
    required this.color,
    this.featured = false,
    this.onTap,
  });

  ServiceItem copyWith({VoidCallback? onTap}) => ServiceItem(
        title: title,
        iconPath: iconPath,
        iconUrl: iconUrl,
        color: color,
        featured: featured,
        onTap: onTap ?? this.onTap,
      );
}
