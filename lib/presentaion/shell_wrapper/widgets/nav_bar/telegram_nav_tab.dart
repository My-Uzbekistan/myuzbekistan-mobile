import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

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
    required this.pillColor,
    required this.onTap,
  });

  final SvgGenImage asset;
  final String label;
  final bool selected;
  final Color selectedColor;
  final Color unselectedColor;
  final Color pillColor;
  final VoidCallback onTap;

  /// Rang/pill o'tish davomiyligi.
  static const Duration _animDuration = Duration(milliseconds: 420);

  @override
  Widget build(BuildContext context) {
    // Center — pill kontentni o'rab hugsin (Expanded cheti teng qoladi).
    return Center(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(100),
        child: TweenAnimationBuilder<double>(
          duration: _animDuration,
          curve: Curves.easeOutCubic,
          tween: Tween(end: selected ? 1.0 : 0.0),
          builder: (context, t, _) {
            final color = Color.lerp(unselectedColor, selectedColor, t)!;
            // Yengil, silliq kattalashish (siltanmaydi, overshoot yo'q) — faqat
            // tanlangan tab ikoniga, qo'shni tab tinch so'nadi.
            final iconScale = selected ? 0.9 + 0.1 * t : 1.0;
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: Color.lerp(const Color(0x00FFFFFF), pillColor, t),
                // iOS glass indikatoridek to'liq kapsula (stadium).
                borderRadius: BorderRadius.circular(100),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.scale(scale: iconScale, child: navSvgIcon(asset, color)),
                  const SizedBox(height: 2),
                  Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 11, height: 1.1, color: color),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
