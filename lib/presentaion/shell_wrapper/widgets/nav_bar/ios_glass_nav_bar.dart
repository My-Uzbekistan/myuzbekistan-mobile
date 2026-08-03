import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'nav_bar_style.dart';
import 'nav_svg_icon.dart';
import 'nav_tab_data.dart';

/// iOS: Liquid Glass ("suyuq shisha") uslubidagi pastki navigatsiya.
///
/// Tablar [navBarTabs] yagona ro'yxatidan quriladi — bu yerda faqat glass
/// ko'rinishi (rang, indikator, blur) sozlanadi.
class IosGlassNavBar extends StatelessWidget {
  const IosGlassNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    final selected = context.appColors.brandSeaBlue; // tanlangan (active) rang
    final unselected = context.appColors.textIconColor.primary; // tanlanmagan rang

    return GlassTabBar.bottom(
      selectedIndex: selectedIndex,
      onTabSelected: onTabSelected,
      selectedIconColor: selected,
      unselectedIconColor: unselected,
      selectedLabelColor: selected,
      unselectedLabelColor: unselected,
      showIndicator: true,
      indicatorColor: NavBarStyle.white.withValues(alpha: 0.6),
      glowOpacity: 0,
      labelFontSize: 10,
      settings: LiquidGlassSettings(
        glassColor: NavBarStyle.white.withValues(alpha: 0.8),
        thickness: 30,
        blur: 3,
        refractiveIndex: 1.59,
      ),
      tabs: [
        for (final tab in navBarTabs(context))
          GlassTab(
            label: tab.label,
            icon: navSvgIcon(tab.asset, unselected),
            activeIcon: navSvgIcon(tab.asset, selected),
          ),
      ],
    );
  }
}
