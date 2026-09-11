import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:shared/shared.dart';

class PremiumSection extends StatelessWidget {
  final bool isPremium;
  final DateTime? activeUntil;
  final VoidCallback? onTap;

  const PremiumSection({
    super.key,
    required this.isPremium,
    this.activeUntil,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: context.appColors.accent.premiumSurface,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: context.appColors.static.white.withValues(alpha: 0.08),
            width: 2,
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: CustomPaint(
                painter: _PremiumGlowPainter(
                  glow: context.appColors.accent.premiumGlow,
                  highlight: context.appColors.static.white,
                ),
              ),
            ),
            isPremium ? _activeBody(context) : _upgradeBody(context),
          ],
        ),
      ),
    );
  }

  Widget _activeBody(BuildContext context) {
    final white = context.appColors.static.white;
    final muted = white.withValues(alpha: 0.6);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 16, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 14,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _wordmark(context),
              Flexible(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 2,
                  children: [
                    if (activeUntil != null)
                      Flexible(
                        child: Text(
                          context.localization.premiumActiveUntil(
                            activeUntil!.format(),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ).labelSm(color: muted),
                      ),
                    Assets.svg.iconArrowRight.path.toSvgImage(
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                      tintColor: muted,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(context.localization.premiumActiveSubtitle).labelLg(color: white),
        ],
      ),
    );
  }

  Widget _upgradeBody(BuildContext context) {
    final white = context.appColors.static.white;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 16, 14),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          SizedBox(
            height: 36,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _wordmark(context),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(8, 8, 10, 8),
                    decoration: BoxDecoration(
                      color: white.withValues(alpha: 0.16),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4,
                      children: [
                        Assets.svg.premiumUpgradeArrow.svg(
                          width: 20,
                          height: 20,
                        ),
                        Flexible(
                          child: Text(
                            context.localization.upgrade,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ).labelSm(color: white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            context.localization.premiumBuySubscription,
          ).labelLg(color: white),
        ],
      ),
    );
  }

  Widget _wordmark(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Assets.svg.premiumLogo.svg(width: 24, height: 24),
        Text(
          context.localization.premium,
          style: CustomTypography.H3.copyWith(
            color: context.appColors.static.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}

class _PremiumGlowPainter extends CustomPainter {
  static const double _designWidth = 371;

  final Color glow;
  final Color highlight;

  const _PremiumGlowPainter({required this.glow, required this.highlight});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    canvas.scale(size.width / _designWidth, 1);
    _blurred(canvas, _backGlow(), const Offset(-128.11, -3.22), 30, glow);
    _blurred(canvas, _frontGlow(), const Offset(-116.11, 36.78), 20, glow);
    _blurred(canvas, _crest(), const Offset(-127.11, 41.78), 20, highlight);
    canvas.restore();
  }

  void _blurred(
    Canvas canvas,
    Path path,
    Offset offset,
    double sigma,
    Color color,
  ) {
    canvas.drawPath(
      path.shift(offset),
      Paint()
        ..color = color
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, sigma),
    );
  }

  Path _backGlow() =>
      Path()
        ..moveTo(225.335, 69.5001)
        ..cubicTo(127.992, 57.2023, 74.5519, 81.2555, 60, 94.8193)
        ..lineTo(60, 112)
        ..lineTo(543, 112)
        ..cubicTo(532.783, 79.4468, 478.91, 69.5001, 444.542, 61.3617)
        ..cubicTo(410.175, 53.2232, 347.013, 84.8725, 225.335, 69.5001)
        ..close();

  Path _frontGlow() =>
      Path()
        ..moveTo(204.992, 49.5001)
        ..cubicTo(107.851, 37.2023, 54.5218, 61.2555, 40, 74.8193)
        ..lineTo(40, 92)
        ..lineTo(522, 92)
        ..cubicTo(511.804, 59.4468, 458.042, 49.5001, 423.746, 41.3617)
        ..cubicTo(389.45, 33.2232, 326.419, 64.8725, 204.992, 49.5001)
        ..close();

  Path _crest() =>
      Path()
        ..moveTo(205.335, 49.6828)
        ..cubicTo(107.992, 37.1485, 54.5519, 61.6642, 40, 75.4889)
        ..lineTo(40, 93)
        ..lineTo(523, 93)
        ..cubicTo(512.783, 59.8208, 458.91, 49.6828, 424.542, 41.3879)
        ..cubicTo(390.175, 33.0929, 327.013, 65.3508, 205.335, 49.6828)
        ..close();

  @override
  bool shouldRepaint(_PremiumGlowPainter oldDelegate) =>
      oldDelegate.glow != glow || oldDelegate.highlight != highlight;
}
