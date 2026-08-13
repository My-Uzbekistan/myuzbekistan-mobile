import 'dart:ui' show ImageFilter;

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import 'nav_bar_style.dart';
import 'nav_tab_data.dart';
import 'telegram_nav_tab.dart';

/// Android: Telegram uslubidagi suzuvchi glass kapsula navigatsiya.
///
/// Tablar [navBarTabs] yagona ro'yxatidan quriladi; har biri [TelegramNavTab].
class TelegramNavBar extends StatelessWidget {
  const TelegramNavBar({
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
    final selected = context.appColors.brandSeaBlue;
    final unselected = context.appColors.textIconColor.primary;
    final bottomInset = MediaQuery.viewPaddingOf(context).bottom;
    final tabs = navBarTabs(
      context,
      profilePhotoUrl: profilePhotoUrl,
      isPremium: isPremium,
    );

    return Padding(
      padding: EdgeInsets.fromLTRB(
        NavBarStyle.barHorizontalPadding,
        0,
        NavBarStyle.barHorizontalPadding,
        bottomInset > 0 ? bottomInset : NavBarStyle.barBottomPadding,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(NavBarStyle.barRadius),
          boxShadow: const [NavBarStyle.barShadow],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(NavBarStyle.barRadius),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: NavBarStyle.barBlur,
              sigmaY: NavBarStyle.barBlur,
            ),
            child: Material(
              color: NavBarStyle.barFill,
              child: SizedBox(
                height: NavBarStyle.barHeight,
                child: Padding(
                  padding: const EdgeInsets.all(NavBarStyle.barContentPadding),
                  child: Row(
                    children: [
                      for (var i = 0; i < tabs.length; i++)
                        Expanded(
                          child: TelegramNavTab(
                            asset: tabs[i].asset,
                            iconBuilder: tabs[i].iconBuilder,
                            label: tabs[i].label,
                            selected: selectedIndex == i,
                            selectedColor: selected,
                            unselectedColor: unselected,
                            onTap: () => onTabSelected(i),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
