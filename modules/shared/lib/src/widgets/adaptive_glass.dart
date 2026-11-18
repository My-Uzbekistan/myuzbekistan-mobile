import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// Faqat kerakli simvollar — paketning o'z `AdaptiveGlass`i bilan nom to'qnashuvi
// bo'lmasligi uchun. LiquidGlass paket tomonidan ataylab yashirilgan (Impeller-only),
// tavsiya etilgan yuqori darajali `GlassContainer`dan foydalanamiz.
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart'
    show
        AdaptiveLiquidGlassLayer,
        GlassContainer,
        GlassQuality,
        LiquidGlassSettings,
        LiquidRoundedRectangle;

/// Ostidagi [AdaptiveGlass] va [GlassFade]larga umumiy so'nish (fade) darajasini
/// tarqatuvchi qamrov.
///
/// **Nega kerak:** iOS Liquid Glass — bu `BackdropFilter` shaderi bo'lib, o'z
/// ORTIDAGI piksellarni o'qib refraction/blur qiladi. Uni tashqaridan `Opacity`
/// (opacity < 1) bilan o'rasangiz, Flutter offscreen `saveLayer` ochadi va shader
/// haqiqiy sahna o'rniga bo'sh buferni "o'qiydi" — natijada shisha yassilanadi,
/// scroll paytida opacity o'zgargani sari ko'rinishi sakrab o'zgaradi.
///
/// Shuning uchun glass'ni HECH QACHON `Opacity` ichiga solmaymiz. Buning o'rniga
/// bu qamrov orqali fade darajasini beramiz: [AdaptiveGlass] o'zini shaderning
/// `visibility` sozlamasi bilan (offscreen layer'siz) so'ndiradi, glass bo'lmagan
/// oddiy kontent esa [GlassFade] orqali oddiy `Opacity` bilan so'nadi.
class GlassFadeScope extends InheritedWidget {
  const GlassFadeScope({
    super.key,
    required this.opacity,
    required super.child,
  });

  /// 0 = butunlay ko'rinmas, 1 = to'liq ko'rinadi.
  final double opacity;

  static double of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<GlassFadeScope>();
    return scope?.opacity ?? 1.0;
  }

  @override
  bool updateShouldNotify(GlassFadeScope oldWidget) =>
      opacity != oldWidget.opacity;
}

/// Glass BO'LMAGAN kontentni ([GlassFadeScope] darajasiga qarab) oddiy `Opacity`
/// bilan so'ndiradi. Matn/ikon uchun xavfsiz — ular backdrop shaderi emas.
///
/// Glass sirtlari uchun buni ISHLATMANG — ular [AdaptiveGlass] orqali o'zini
/// `visibility` bilan so'ndiradi.
class GlassFade extends StatelessWidget {
  const GlassFade({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final opacity = GlassFadeScope.of(context).clamp(0.0, 1.0);
    if (opacity >= 0.999) return child;
    return Opacity(opacity: opacity, child: child);
  }
}

/// Platformaga moslashuvchan "shisha" sirt.
///
/// - **iOS**: haqiqiy Apple uslubidagi Liquid Glass ([GlassContainer]) —
///   refraction, specular yaltirash va blur shader orqali chiqadi
///   (Impeller/Metal talab qiladi, iOS'da default).
/// - **Android / web / desktop**: oddiy frosted blur — [BackdropFilter] + yarim
///   shaffof [tint]. Bu app'da liquid glass qo'shilishidan oldin bo'lgan ko'rinish.
///
/// Glass kerak bo'lgan har qanday joyda shu widgetdan foydalaning: iOS avtomatik
/// liquid, qolgan platformalar avtomatik oddiy blur bo'ladi.
///
/// So'nish (fade) uchun bu widgetni `Opacity` ichiga SOLMANG — u backdrop
/// shaderini buzadi (qarang: [GlassFadeScope]). Fade kerak bo'lsa, tepada
/// [GlassFadeScope] qo'ying yoki [opacity]ni bevosita bering.
class AdaptiveGlass extends StatelessWidget {
  const AdaptiveGlass({
    super.key,
    required this.child,
    required this.borderRadius,
    this.blur = 16,
    this.tint = const Color(0xB8FFFFFF),
    this.border,
    this.opacity,
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

  /// So'nish darajasi (0..1). `null` bo'lsa, tepadagi [GlassFadeScope]dan
  /// olinadi. Ikkisi ham bo'lsa ko'paytiriladi.
  final double? opacity;

  final Clip clipBehavior;

  bool get _useLiquidGlass => defaultTargetPlatform == TargetPlatform.iOS;

  @override
  Widget build(BuildContext context) {
    final scopeOpacity = GlassFadeScope.of(context);
    final effective = ((opacity ?? 1.0) * scopeOpacity).clamp(0.0, 1.0);

    if (_useLiquidGlass) {
      return _buildLiquid(effective);
    }
    return _buildBlur(effective);
  }

  Widget _buildLiquid(double effective) {
    // Butunlay so'nganda shaderni umuman chizmaymiz — qoldiq specular chet
    // (rim) ko'rinmasligi va bekorga GPU sarflanmasligi uchun. Layout barqaror
    // qolishi uchun kontent o'lchamini saqlab, ko'rinmas holda qaytaramiz.
    if (effective <= 0.02) {
      return Opacity(opacity: 0.0, child: child);
    }

    final tintAlpha = ((tint.a * 255.0).round() * effective).round();
    final fadedTint = tint.withAlpha(tintAlpha.clamp(0, 255));

    return GlassContainer(
      shape: LiquidRoundedRectangle(borderRadius: borderRadius),
      // Yagona, mustaqil sirt — o'z shader qatlamini yaratadi.
      useOwnLayer: true,
      // To'liq Impeller pipeline — [AdaptiveGlassRow] tiles bilan bir xil boy
      // refraction/yaltirash, ular bilan vizual mos bo'lishi uchun.
      quality: GlassQuality.premium,
      clipBehavior: clipBehavior,
      settings: LiquidGlassSettings(
        // Sirtni offscreen `Opacity` layer'isiz, shaderning o'zi ichida
        // so'ndiramiz. Blur/thickness ham `effective`ga proporsional pasayadi,
        // shunda 0 ga yaqinlashganda toza yo'qoladi (smear qolmaydi).
        visibility: effective,
        blur: blur * effective,
        glassColor: fadedTint,
        // Apple uslubidagi jonli, ammo toza liquid glass: sezilarli refraction
        // "shisha qavariq" his qiladi, nozik specular yaltirash va ozgina
        // xromatik aberatsiya bilan — dizayndagi shaffof oq kartaga mos.
        thickness: 18 * effective,
        refractiveIndex: 1.3,
        chromaticAberration: 0.01,
        glowIntensity: 0.6,
        saturation: 1.25,
        lightIntensity: 0.6,
      ),
      // Kontent (ikon/matn) shader emas — uni oddiy `Opacity` bilan so'ndirish
      // xavfsiz.
      child:
          effective >= 0.999
              ? child
              : Opacity(opacity: effective, child: child),
    );
  }

  Widget _buildBlur(double effective) {
    final surface = _frostedGlass(
      borderRadius: borderRadius,
      blur: blur,
      tint: tint,
      border: border,
      clipBehavior: clipBehavior,
      child: child,
    );
    if (effective >= 0.999) return surface;
    return Opacity(opacity: effective, child: surface);
  }
}

/// iOS bo'lmagan platformalar uchun oddiy "frosted" shisha sirti — [AdaptiveGlass]
/// va [AdaptiveGlassRow] o'rtasida bir xil bo'lishi uchun ajratilgan.
Widget _frostedGlass({
  required Widget child,
  required double borderRadius,
  required double blur,
  required Color tint,
  BoxBorder? border,
  Clip clipBehavior = Clip.antiAlias,
}) {
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

/// [AdaptiveGlassRow]ning bitta katakchasi (icon+label + bosish).
class AdaptiveGlassRowItem {
  const AdaptiveGlassRowItem({required this.child, this.onTap});

  /// Shisha ustidagi kontent (odatda icon + matn ustuni).
  final Widget child;

  final VoidCallback? onTap;
}

/// Bir qatordagi bir nechta shisha katakchani **HAQIQIY liquid glass** sifatida
/// beradi.
///
/// **Nega alohida widget:** [AdaptiveGlass]ning har bir nusxasi iOS'da
/// `useOwnLayer: true` — ya'ni har katakcha mustaqil, izolyatsiyalangan shisha,
/// ularning yorug'lik/refraction'i bir-biriga mos kelmaydi. Bu yerda barcha
/// katakchalar **yagona liquid glass qatlami**ni bo'lishadi: hammasi bitta
/// sirtdek, bir xil refraction va yaltirash bilan chiqadi — Figma dizaynidagidek
/// alohida yumaloq shishalar.
///
/// - **iOS (Impeller):** [AdaptiveLiquidGlassLayer] yagona qatlam yaratadi; har
///   katakcha `useOwnLayer: false` bo'lgan [GlassContainer]. [blendAmount] `0`
///   bo'lsa katakchalar alohida qoladi (default), kattaroq bo'lsa suyuqlikdek
///   bir-biriga yopishadi.
/// - **Android / web:** har katakcha alohida frosted blur (avvalgidek).
///
/// So'nish uchun tepada [GlassFadeScope] qo'ying yoki [opacity] bering — glass
/// hech qachon `Opacity` ichiga solinmaydi (qarang: [GlassFadeScope]).
class AdaptiveGlassRow extends StatelessWidget {
  const AdaptiveGlassRow({
    super.key,
    required this.items,
    required this.borderRadius,
    this.spacing = 6,
    this.blur = 16,
    this.tint = const Color(0x14FFFFFF),
    this.padding = const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
    this.blendAmount = 0,
    this.opacity,
  });

  final List<AdaptiveGlassRowItem> items;
  final double borderRadius;

  /// Katakchalar orasidagi masofa. iOS'da kichik masofa liquid "ko'prik" hosil
  /// qilishga imkon beradi.
  final double spacing;

  final double blur;
  final Color tint;
  final EdgeInsetsGeometry padding;

  /// iOS liquid metaball qo'shilish kuchi (faqat Impeller).
  ///
  /// **0 (default) = katakchalar ALOHIDA qoladi** — Figma dizaynidagidek, har biri
  /// mustaqil yumaloq shisha, oralari yopishmaydi. Kattaroq qiymat yaqin
  /// katakchalar orasida suyuq "ko'prik" hosil qiladi (o'zaro yopishadi).
  final double blendAmount;

  /// So'nish darajasi (0..1). `null` bo'lsa [GlassFadeScope]dan olinadi.
  final double? opacity;

  bool get _useLiquidGlass => defaultTargetPlatform == TargetPlatform.iOS;

  @override
  Widget build(BuildContext context) {
    final scopeOpacity = GlassFadeScope.of(context);
    final effective = ((opacity ?? 1.0) * scopeOpacity).clamp(0.0, 1.0);

    return _useLiquidGlass ? _buildLiquid(effective) : _buildBlur(effective);
  }

  Widget _fadedContent(Widget child, double effective) =>
      effective >= 0.999 ? child : Opacity(opacity: effective, child: child);

  Widget _buildLiquid(double effective) {
    if (effective <= 0.02) {
      return Opacity(opacity: 0.0, child: _row(_plainTiles()));
    }

    final tintAlpha = ((tint.a * 255.0).round() * effective).round();
    final fadedTint = tint.withAlpha(tintAlpha.clamp(0, 255));

    // Bitta umumiy blend-guruh: barcha katakchalar shu sozlamalarni ulashadi va
    // suyuqlikdek qo'shiladi. Grouped `GlassContainer` o'z `settings`ini
    // e'tiborsiz qoldiradi — sozlama shu layerdan keladi.
    final tiles = [
      for (final item in items)
        _tap(
          item.onTap,
          GlassContainer(
            useOwnLayer: false,
            clipBehavior: Clip.antiAlias,
            shape: LiquidRoundedRectangle(borderRadius: borderRadius),
            child: Padding(
              padding: padding,
              child: _fadedContent(item.child, effective),
            ),
          ),
        ),
    ];

    return AdaptiveLiquidGlassLayer(
      quality: GlassQuality.premium,
      blendAmount: blendAmount,
      settings: LiquidGlassSettings(
        visibility: effective,
        blur: blur * effective,
        glassColor: fadedTint,
        thickness: 18 * effective,
        refractiveIndex: 1.3,
        chromaticAberration: 0.01,
        glowIntensity: 0.6,
        saturation: 1.25,
        lightIntensity: 0.6,
      ),
      child: _row(tiles),
    );
  }

  Widget _buildBlur(double effective) {
    final tiles = [
      for (final item in items)
        _tap(
          item.onTap,
          _frostedGlass(
            borderRadius: borderRadius,
            blur: blur,
            tint: tint,
            child: Padding(padding: padding, child: item.child),
          ),
        ),
    ];
    final row = _row(tiles);
    return effective >= 0.999 ? row : Opacity(opacity: effective, child: row);
  }

  // So'nib bo'lgan iOS holatida layout o'lchamini saqlash uchun sodda katakchalar.
  List<Widget> _plainTiles() => [
    for (final item in items) Padding(padding: padding, child: item.child),
  ];

  Widget _tap(VoidCallback? onTap, Widget child) => GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: onTap,
    child: child,
  );

  Widget _row(List<Widget> tiles) => Row(
    children: [
      for (var i = 0; i < tiles.length; i++) ...[
        if (i > 0) SizedBox(width: spacing),
        Expanded(child: tiles[i]),
      ],
    ],
  );
}
