import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import 'nav_bar_style.dart';
import 'nav_svg_icon.dart';

/// Suzuvchi glass kapsula ichidagi bitta tab (Android / Telegram uslubi).
///
/// Tanlanganda pill (oq) yumshoq paydo bo'ladi, ikon+label rangi ko'kka silliq
/// o'tadi va ikon yengil kattalashadi — hammasi [TweenAnimationBuilder] bilan.
class TelegramNavTab extends StatelessWidget {
  const TelegramNavTab({
    super.key,
    required this.asset,
    required this.label,
    required this.selected,
    required this.selectedColor,
    required this.unselectedColor,
    required this.onTap,
    this.iconBuilder,
  });

  final SvgGenImage asset;

  /// Ixtiyoriy maxsus ikon builder (masalan Profil avatari) — berilsa SVG
  /// o'rniga shu chiziladi va rang bilan bo'yalmaydi.
  final Widget Function(bool selected, Color color)? iconBuilder;
  final String label;
  final bool selected;
  final Color selectedColor;
  final Color unselectedColor;
  final VoidCallback onTap;

  /// Rang/pill o'tish davomiyligi.
  static const Duration _animDuration = Duration(milliseconds: 420);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: _animDuration,
      curve: Curves.easeOutCubic,
      tween: Tween(end: selected ? 1.0 : 0.0),
      builder: (context, t, _) {
        final color = Color.lerp(unselectedColor, selectedColor, t)!;
        final iconScale = selected ? 0.9 + 0.1 * t : 1.0;
        return DecoratedBox(
          decoration: BoxDecoration(
            color: Color.lerp(
              NavBarStyle.tabFillTransparent,
              NavBarStyle.tabFill,
              t,
            ),
            borderRadius: BorderRadius.circular(NavBarStyle.tabRadius),
            boxShadow: [
              BoxShadow(
                color: NavBarStyle.tabShadowColor.withValues(
                  alpha: NavBarStyle.tabShadowOpacity * t,
                ),
                blurRadius: NavBarStyle.tabShadowBlur,
                offset: NavBarStyle.tabShadowOffset,
              ),
            ],
          ),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(NavBarStyle.tabRadius),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: iconScale,
                  child: iconBuilder?.call(selected, color) ??
                      navSvgIcon(asset, color, NavBarStyle.iconSize),
                ),
                const SizedBox(height: NavBarStyle.iconLabelSpacing),
                Text(
                  label,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: NavBarStyle.labelStyle.copyWith(color: color),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
