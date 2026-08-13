import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'nav_bar_style.dart';
import 'nav_svg_icon.dart';
import 'nav_tab_data.dart';

/// iOS: Liquid Glass ("suyuq shisha") uslubidagi pastki navigatsiya.
///
/// Tablar [navBarTabs] yagona ro'yxatidan quriladi. Indikator — iOS'ning
/// o'z (native) glass kapsulasi: shaklni package boshqaradi (kontentni
/// quchoqlab, oval/kapsula ko'rinishida). Bu yerda faqat rang, blur va
/// indikator ORTIDAGI soya sozlanadi.
class IosGlassNavBar extends StatelessWidget {
  const IosGlassNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
    this.profilePhotoUrl,
    this.isPremium = false,
  });

  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  /// Profil tab avatari uchun rasm URL (null bo'lsa default avatar).
  final String? profilePhotoUrl;

  final bool isPremium;

  @override
  Widget build(BuildContext context) {
    final selected = context.appColors.brandSeaBlue; // tanlangan (active) rang
    final unselected =
        context.appColors.textIconColor.primary; // tanlanmagan rang

    return GlassTabBar.bottom(
      selectedIndex: selectedIndex,
      onTabSelected: onTabSelected,
      selectedIconColor: selected,
      unselectedIconColor: unselected,
      selectedLabelColor: selected,
      unselectedLabelColor: unselected,
      showIndicator: true,
      indicatorColor: NavBarStyle.tabFill,
      glowOpacity: 0,
      labelFontSize: 10,
      settings: LiquidGlassSettings(
        glassColor: NavBarStyle.barFill,
        thickness: 30,
        blur: 3,
        refractiveIndex: 1.59,
      ),
      tabs: [
        for (final tab in navBarTabs(
          context,
          profilePhotoUrl: profilePhotoUrl,
          isPremium: isPremium,
        ))
          GlassTab(
            label: tab.label,
            icon: tab.iconBuilder?.call(false, unselected) ??
                navSvgIcon(tab.asset, unselected),
            activeIcon: tab.iconBuilder?.call(true, selected) ??
                navSvgIcon(tab.asset, selected),
          ),
      ],
    );
  }
}
