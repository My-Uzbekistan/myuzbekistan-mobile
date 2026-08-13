import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';

class PremiumActiveBanner extends StatelessWidget {
  static const double _badgePadding = 4.5;
  static const double _badgeBorderWidth = 2.25;
  static const double _badgeGlyphSize = 27;
  static const double _badgeGlowBlur = 22.5;
  static const Offset _badgeGlowOffset = Offset(0, 4.5);
  static const double _chevronSize = 20;

  final VoidCallback? onTap;

  const PremiumActiveBanner({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final yellow = context.appColors.colors.yellow;
    final white = context.appColors.static.white;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            begin: Alignment(-0.65, -0.82),
            end: Alignment(0.65, 0.82),
            colors: [Color(0xFF07C277), Color(0xFF006F42)],
          ),
        ),
        child: Row(
          spacing: 8,
          children: [
            Container(
              padding: const EdgeInsets.all(_badgePadding),
              decoration: BoxDecoration(
                color: yellow,
                shape: BoxShape.circle,
                border: Border.all(
                  color: context.appColors.stroke.opaque,
                  width: _badgeBorderWidth,
                ),
                boxShadow: [
                  BoxShadow(
                    color: yellow,
                    blurRadius: _badgeGlowBlur,
                    offset: _badgeGlowOffset,
                  ),
                ],
              ),
              child: Assets.svg.premiumBadge.svg(
                width: _badgeGlyphSize,
                height: _badgeGlyphSize,
              ),
            ),
            Expanded(
              child: Text(context.localization.premium).labelMd(color: white),
            ),
            SizedBox(
              height: _chevronSize,
              width: _chevronSize,
              child: Assets.svg.iconArrowRight.path.toSvgImage(
                fit: BoxFit.contain,
                colorFilter: ColorFilter.mode(white, BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
