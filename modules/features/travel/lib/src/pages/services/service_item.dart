import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

/// Bosh sahifadagi "Сервисы" bloki uchun bitta xizmat elementi.
///
/// [featured] — katta (kartochka) ko'rinishdagi element (Дачи, Туры).
/// Aks holda — kichik ikonka + sarlavha ko'rinishida chiziladi.
class ServiceItem {
  final String title;

  /// SVG asset yo'li (oq rangda tint qilinadi).
  final String iconPath;

  /// Kichik plitka foni / katta plitka aksenti.
  final Color color;

  final bool featured;

  final VoidCallback? onTap;

  const ServiceItem({
    required this.title,
    required this.iconPath,
    required this.color,
    this.featured = false,
    this.onTap,
  });

  ServiceItem copyWith({VoidCallback? onTap}) => ServiceItem(
        title: title,
        iconPath: iconPath,
        color: color,
        featured: featured,
        onTap: onTap ?? this.onTap,
      );
}

/// Dizaynga mos statik xizmatlar ro'yxati.
///
/// Eslatma: ikonkalar hozircha mavjud `Assets.catalog` SVG'lariga
/// (chiziqli, oq) map qilingan. Real 3D ikonalar tayyor bo'lgach shu yerdan
/// almashtiriladi (yoki backend'dan `CatalogBloc` orqali ulanadi).
class Services {
  const Services._();

  static const Color _purple = Color(0xff8B7CF6);
  static const Color _green = Color(0xff28BF5A);
  static const Color _blue = Color(0xff37A8C7);
  static const Color _featuredBg = Color(0xffF2F1FC);

  /// Katta (featured) plitkalar — har biri o'z qatorida 2 ta kichik bilan.
  static final List<ServiceItem> featured = [
    ServiceItem(
      title: "Дачи",
      iconPath: Assets.catalog.countryHouse.path,
      color: _featuredBg,
      featured: true,
    ),
    ServiceItem(
      title: "Туры",
      iconPath: Assets.catalog.airplane.path,
      color: _featuredBg,
      featured: true,
    ),
  ];

  /// Kichik plitkalar. Dastlabki 4 tasi featured qatorlarga juftlanadi,
  /// qolganlari 4 ustunli grid'da oqadi.
  static final List<ServiceItem> small = [
    ServiceItem(
      title: "Инвестиция",
      iconPath: Assets.catalog.dice.path,
      color: _blue,
    ),
    ServiceItem(
      title: "Страховки",
      iconPath: Assets.catalog.insurance.path,
      color: _green,
    ),
    ServiceItem(
      title: "Зарядки",
      iconPath: Assets.catalog.ev.path,
      color: _purple,
    ),
    ServiceItem(
      title: "TravelCam AI",
      iconPath: Assets.catalog.iconCameraAi.path,
      color: _purple,
    ),
    ServiceItem(
      title: "Планировщик поездки",
      iconPath: Assets.catalog.events.path,
      color: _purple,
    ),
    ServiceItem(
      title: "Travel Quiz",
      iconPath: Assets.catalog.dice.path,
      color: _purple,
    ),
    ServiceItem(
      title: "Карта путешествий",
      iconPath: Assets.catalog.metro.path,
      color: _purple,
    ),
    ServiceItem(
      title: "Caloria AI",
      iconPath: Assets.catalog.antena.path,
      color: _purple,
    ),
    ServiceItem(
      title: "Dacha Goo",
      iconPath: Assets.catalog.countryHouse.path,
      color: _purple,
    ),
    ServiceItem(
      title: "IQ Air",
      iconPath: Assets.catalog.antena.path,
      color: _purple,
    ),
  ];
}
