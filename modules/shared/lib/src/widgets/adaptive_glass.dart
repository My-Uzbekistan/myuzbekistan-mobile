import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// Faqat kerakli simvollar — paketning o'z `AdaptiveGlass`i bilan nom to'qnashuvi
// bo'lmasligi uchun. LiquidGlass paket tomonidan ataylab yashirilgan (Impeller-only),
// tavsiya etilgan yuqori darajali `GlassContainer`dan foydalanamiz.
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart'
    show GlassContainer, LiquidGlassSettings, LiquidRoundedRectangle;

/// Platformaga moslashuvchan "shisha" sirt.
///
/// - **iOS**: haqiqiy Apple uslubidagi Liquid Glass ([LiquidGlass]) — refraction,
///   specular yaltirash va blur shader orqali chiqadi (Impeller/Metal talab
///   qiladi, iOS'da default).
/// - **Android / web / desktop**: oddiy frosted blur — [BackdropFilter] + yarim
///   shaffof [tint]. Bu app'da liquid glass qo'shilishidan oldin bo'lgan ko'rinish.
///
/// Glass kerak bo'lgan har qanday joyda shu widgetdan foydalaning: iOS avtomatik
/// liquid, qolgan platformalar avtomatik oddiy blur bo'ladi.
class AdaptiveGlass extends StatelessWidget {
  const AdaptiveGlass({
    super.key,
    required this.child,
    required this.borderRadius,
    this.blur = 16,
    this.tint = const Color(0xB8FFFFFF),
    this.border,
    this.clipBehavior = Clip.antiAlias,
  });

  /// Shisha ustida ko'rsatiladigan kontent (nav ikonlari, matn va h.k.).
  final Widget child;

  /// Burchak radiusi (logical piksel).
  final double borderRadius;

  /// Blur kuchi. iOS'da [LiquidGlassSettings.blur], aks holda [ImageFilter.blur].
  final double blur;

  /// Yarim shaffof rang qatlami.
  final Color tint;

  /// Faqat blur (iOS bo'lmagan) yo'lda qo'llaniladigan chegara. iOS Liquid Glass
  /// o'z chetini (edge) chizadi, shuning uchun u yerda e'tiborsiz qoldiriladi.
  final BoxBorder? border;

  final Clip clipBehavior;

  bool get _useLiquidGlass => defaultTargetPlatform == TargetPlatform.iOS;

  @override
  Widget build(BuildContext context) {
    if (_useLiquidGlass) {
      return GlassContainer(
        shape: LiquidRoundedRectangle(borderRadius: borderRadius),
        // Yagona, mustaqil sirt — o'z shader qatlamini yaratadi.
        useOwnLayer: true,
        clipBehavior: clipBehavior,
        settings: LiquidGlassSettings(
          blur: blur,
          glassColor: tint,
          // Nozik, Apple uslubidagi toza shisha. Default qiymatlar juda
          // "qalin"/yaltiroq (thickness, glow, saturation yuqori) — dizayndagi
          // shaffof oq kartaga mos kelishi uchun pasaytiramiz, ammo liquid
          // glass'ning refraction/specular xarakteri saqlanadi.
          thickness: 12,
          glowIntensity: 0.4,
          saturation: 1.15,
          chromaticAberration: 0.006,
          lightIntensity: 0.4,
        ),
        child: child,
      );
    }

    final radius = BorderRadius.circular(borderRadius);
    return ClipRRect(
      borderRadius: radius,
      clipBehavior: clipBehavior,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: tint,
            borderRadius: radius,
            border: border,
          ),
          child: child,
        ),
      ),
    );
  }
}
