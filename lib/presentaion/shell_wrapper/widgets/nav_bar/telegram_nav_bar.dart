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
  });

  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  /// Profil tab avatari uchun rasm URL (null bo'lsa default avatar).
  final String? profilePhotoUrl;

  static const double _barHeight = 66;
  static const double _radius = 34;

  @override
  Widget build(BuildContext context) {
    final selected = context.appColors.brandSeaBlue;
    final unselected = context.appColors.textIconColor.primary;
    final pill = NavBarStyle.white.withValues(alpha: 0.6);
    final bottomInset = MediaQuery.viewPaddingOf(context).bottom;
    final tabs = navBarTabs(context, profilePhotoUrl: profilePhotoUrl);

    return Padding(
      padding: EdgeInsets.fromLTRB(12, 0, 12, bottomInset > 0 ? bottomInset : 12),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_radius),
          boxShadow: const [
            BoxShadow(color: Color(0x24001024), blurRadius: 24, offset: Offset(0, 8)),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(_radius),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Material(
              color: NavBarStyle.white.withValues(alpha: 0.8),
              child: SizedBox(
                height: _barHeight,
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
                          pillColor: pill,
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
    );
  }
}
