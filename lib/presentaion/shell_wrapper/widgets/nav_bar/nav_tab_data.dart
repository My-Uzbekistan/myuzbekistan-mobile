import 'package:component_res/component_res.dart';
import 'package:flutter/widgets.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';

/// Pastki navigatsiyadagi bitta tabning ma'lumoti (ikon + label).
///
/// Kelajakda badge yoki maxsus tap kerak bo'lsa — shu klassga qo'shiladi
/// (masalan `badgeCount`, `onLongPress`), platformalarga alohida tegmasdan.
class NavTabData {
  const NavTabData({required this.asset, required this.label});

  /// Tab ikoni (SVG). Rang chizishda beriladi — bu yerda faqat asset.
  final SvgGenImage asset;

  /// Tab ostidagi matn.
  final String label;
}

/// Tablar ro'yxati — YAGONA manba (single source of truth).
///
/// iOS (glass) va Android (telegram) versiyalari ikkisi ham shu ro'yxatdan
/// o'qiydi. Tab qo'shish/o'chirish yoki label/ikon almashtirish — faqat shu
/// yerda. Ro'yxat tartibi tab indeksini belgilaydi (0..n).
List<NavTabData> navBarTabs(BuildContext context) {
  final l = context.localizations!;
  return [
    NavTabData(asset: Assets.svg.tabIconHome, label: l.nav_home), // 0 — Bosh sahifa (Travel)
    NavTabData(asset: Assets.svg.tabIconHome, label: 'Home 2'), // 1 — Yangi Home UI (vaqtinchalik)
    NavTabData(asset: Assets.svg.tabIconFinance, label: l.nav_payment), // 2 — To'lovlar (Finance)
    NavTabData(asset: Assets.svg.tabIconCatalog, label: l.nav_services), // 3 — Xizmatlar (Catalog)
    NavTabData(asset: Assets.svg.tabIconMore, label: l.nav_more), // 4 — Yana (More)
  ];
}
