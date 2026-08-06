import 'package:flutter/material.dart';

/// Ustundagi elementlarni **navbatma-navbat** (staggered) fade + siljish bilan
/// animatsiya qiladigan umumiy widget. Tartib har doim yuqoridan pastga
/// (0-element birinchi) — shu tufayli "tepadan pastga ochilish" effekti.
///
/// - [entering] `true` — elementlar bittalab paydo bo'ladi (fade-in).
/// - [entering] `false` — elementlar bittalab yo'qoladi (fade-out).
///
/// [animation] — 0 dan 1 gacha boradigan boshqaruvchi (odatda
/// [AnimationController]). Har bir element timeline'ning o'z bo'lagida
/// ([itemWindow]) animatsiya bo'ladi, boshlanishi indeksga qarab suriladi.
///
/// [offset] — yashirin holatdagi siljish. Musbat `dy` — pastdan, manfiy `dy`
/// — tepadan chiqadi/ketadi.
class StaggeredFadeSlide extends StatelessWidget {
  const StaggeredFadeSlide({
    super.key,
    required this.animation,
    required this.children,
    this.entering = true,
    this.spacing = 12,
    this.offset = const Offset(0, 40),
    this.itemWindow = 0.5,
    this.crossAxisAlignment = CrossAxisAlignment.stretch,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
  });

  final Animation<double> animation;
  final List<Widget> children;

  /// `true` — paydo bo'lish, `false` — yo'qolish.
  final bool entering;

  final double spacing;

  /// Yashirin holatdagi siljish (px). Musbat `dy` — pastdan, manfiy — tepadan.
  final Offset offset;

  /// Har bir element timeline'ning qancha qismida animatsiya bo'lishi (0..1).
  /// Kichikroq qiymat — kaskad yorqinroq (elementlar ko'proq ajralib turadi).
  final double itemWindow;

  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return Column(
          mainAxisSize: mainAxisSize,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          spacing: spacing,
          children: [
            for (var i = 0; i < children.length; i++)
              _animatedItem(i, children[i]),
          ],
        );
      },
    );
  }

  Widget _animatedItem(int index, Widget child) {
    // 1 — element to'liq ko'rinadi, 0 — yashirin.
    final shown = _itemShown(index);
    return Opacity(
      opacity: shown.clamp(0.0, 1.0),
      child: Transform.translate(
        offset: offset * (1 - shown),
        child: child,
      ),
    );
  }

  double _itemShown(int index) {
    final count = children.length;
    final maxStart = (1.0 - itemWindow).clamp(0.0, 1.0);
    final start = count > 1 ? (index / (count - 1)) * maxStart : 0.0;
    final raw = ((animation.value - start) / itemWindow).clamp(0.0, 1.0);
    final curve = entering ? Curves.easeOutCubic : Curves.easeInCubic;
    final t = curve.transform(raw);
    return entering ? t : 1 - t;
  }
}
