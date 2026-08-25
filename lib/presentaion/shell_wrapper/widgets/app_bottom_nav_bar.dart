import 'dart:io' show Platform;
import 'dart:ui' show ImageFilter;

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'nav_tab_data.dart';

const Color _white = Color(0xFFFFFFFF);

const LinearGradient _fadeGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0x00FFFFFF),
    Color(0x14FFFFFF),
    Color(0x47FFFFFF),
    Color(0x5CFFFFFF),
    Color(0x85FFFFFF),
  ],
  stops: [0.0, 0.1534, 0.35, 0.6, 1.0],
);

final Color _barFill = _white.withValues(alpha: 0.8);
final Color _tabFill = _white.withValues(alpha: 0.6);
final Color _tabFillTransparent = _white.withValues(alpha: 0);

final TextStyle _labelStyle = CustomTypography.bodyXXsm.copyWith(
  fontSize: 10,
  height: 12 / 10,
  letterSpacing: -0.24,
);

enum NavBarKind { auto, glass, capsule }

typedef NavTabsBuilder = List<NavTabData> Function(BuildContext context);

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabSelected,
    this.kind = NavBarKind.auto,
    this.showFade = true,
  });

  final List<NavTabData> tabs;
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  final NavBarKind kind;
  final bool showFade;

  bool get _isGlass => switch (kind) {
        NavBarKind.auto => Platform.isIOS,
        NavBarKind.glass => true,
        NavBarKind.capsule => false,
      };

  @override
  Widget build(BuildContext context) {
    if (tabs.isEmpty) return const SizedBox.shrink();

    final nav = _isGlass ? _glassBar(context) : _capsuleBar(context);

    if (!showFade) return nav;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const IgnorePointer(
          child: SizedBox(
            height: 122,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(gradient: _fadeGradient),
            ),
          ),
        ),
        nav,
      ],
    );
  }

  Widget _glassBar(BuildContext context) {
    final selected = context.appColors.brandSeaBlue;
    final unselected = context.appColors.textIconColor.primary;

    return GlassTabBar.bottom(
      selectedIndex: selectedIndex,
      onTabSelected: onTabSelected,
      selectedIconColor: selected,
      unselectedIconColor: unselected,
      selectedLabelColor: selected,
      unselectedLabelColor: unselected,
      showIndicator: true,
      indicatorColor: _tabFill,
      glowOpacity: 0,
      labelFontSize: 10,
      settings: LiquidGlassSettings(
        glassColor: _barFill,
        thickness: 30,
        blur: 3,
        refractiveIndex: 1.59,
      ),
      tabs: [
        for (final tab in tabs)
          GlassTab(
            label: tab.label,
            icon:
                tab.iconBuilder?.call(false, unselected) ??
                _icon(tab.asset, unselected),
            activeIcon:
                tab.iconBuilder?.call(true, selected) ??
                _icon(tab.asset, selected),
          ),
      ],
    );
  }

  Widget _capsuleBar(BuildContext context) {
    final selected = context.appColors.brandSeaBlue;
    final unselected = context.appColors.textIconColor.primary;
    final bottomInset = MediaQuery.viewPaddingOf(context).bottom;

    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, bottomInset > 0 ? bottomInset : 12),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(color: Color(0x1F001024), blurRadius: 22),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Material(
              color: _barFill,
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    children: [
                      for (var index = 0; index < tabs.length; index++)
                        Expanded(
                          child: _CapsuleTab(
                            tab: tabs[index],
                            selected: selectedIndex == index,
                            selectedColor: selected,
                            unselectedColor: unselected,
                            onTap: () => onTabSelected(index),
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

class _CapsuleTab extends StatelessWidget {
  const _CapsuleTab({
    required this.tab,
    required this.selected,
    required this.selectedColor,
    required this.unselectedColor,
    required this.onTap,
  });

  final NavTabData tab;
  final bool selected;
  final Color selectedColor;
  final Color unselectedColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 420),
      curve: Curves.easeOutCubic,
      tween: Tween(end: selected ? 1.0 : 0.0),
      builder: (context, progress, _) {
        final color = Color.lerp(unselectedColor, selectedColor, progress)!;

        return DecoratedBox(
          decoration: BoxDecoration(
            color: Color.lerp(_tabFillTransparent, _tabFill, progress),
            borderRadius: BorderRadius.circular(26),
            boxShadow: [
              BoxShadow(
                color: const Color(
                  0xFF001024,
                ).withValues(alpha: 0.1 * progress),
                blurRadius: 34,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: selected ? 0.9 + 0.1 * progress : 1.0,
                  child:
                      tab.iconBuilder?.call(selected, color) ??
                      _icon(tab.asset, color),
                ),
                const SizedBox(height: 2),
                Text(
                  tab.label,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: _labelStyle.copyWith(color: color),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget _icon(SvgGenImage asset, Color color) => asset.path.toSvgImage(
  height: 24,
  width: 24,
  fit: BoxFit.contain,
  colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
);
