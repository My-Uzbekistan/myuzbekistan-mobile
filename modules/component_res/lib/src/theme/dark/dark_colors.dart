part of '../app_color_theme.dart';

class DarkColors extends _BaseColors {
  @override
  // Color get brandPrimary => const Color(0xff177f9B); // old
  Color get brandSeaBlue => const Color(0xff33BE73); // updated

  @override
  Color get brandFlamingo => const Color(0xffFFD7F0);

  @override
  LabelColor get label => LabelColor(
        primary: Colors.white,
        secondary: Colors.white.withValues(alpha: 0.64),
        tertiary: Colors.white.withValues(alpha: 0.32),
        disable: Colors.white.withValues(alpha: 0.16),
        oposite: const Color(0xff14191a),
      );

  @override
  BackgroundColors get background => const BackgroundColors(
        underlayer: Colors.black,
        base: Color(0xff0E0E10),
        elevation1: Color(0xff18181a),
        elevation1Alt: Color(0xff18181a),
        elevation2: Color(0xff27272b),
        elevation2Alt: Color(0xff27272b),
        elevation3: Color(0xff6C6C71),
      );

  @override
  FillColors get fill => FillColors(
        quaternary: const Color(0xff9090a2).withValues(alpha: 0.15), // ~18%
        tertiary: const Color(0xff9090a2).withValues(alpha: 0.27),
        opaque: const Color(0xff27272b),


        secondary: const Color(0xff787880).withAlpha(0x52), // unchanged
        primary: const Color(0xffffffff),
      );

  @override
  StrokeColors get stroke => StrokeColors(
        nonOpaque: Colors.white.withValues(alpha: 0.1), // updated
        opaque: const Color(0xff27272b), // updated
      );

  @override
  OtherColors get colors => OtherColors(
        red: const Color(0xffff453a),
        green: const Color(0xff30d158),
        blue: const Color(0xff0099ff),
        yellow: const Color(0xffffdd2d),
    orange: const Color(0xfffb5d40),// updated
      lime:  const Color(0xffC2ED72),
      purple: const Color(0xffbf5af2),
      );

  @override
  NonOpaque get nonOpaque => NonOpaque(
        red: const Color(0xffff453a).withValues(alpha: 0.16),
        green: const Color(0xff30d158).withValues(alpha: 0.16),
        blue: const Color(0xff0a84ff).withValues(alpha: 0.16),
        yellow: const Color(0xffffdd2d).withValues(alpha: 0.16),
        // brand: const Color(0xff177f9b).withValues(alpha: 0.16), // old
        brand: const Color(0xff33BE73).withValues(alpha: 0.12), // updated
      );

  @override
  ServiceColors get service => ServiceColors(
    overlay:  Colors.black.withValues(alpha: 0.6), // updated// updated
        scrim: const Color(0xff0b0d0e),
        glass: Colors.white.withValues(alpha: 0.08),
        onMedia: Colors.white,
        shadow: Colors.black.withValues(alpha: 0.4),
        shimmerBase: const Color(0xff9090a2).withValues(alpha: 0.12),
        shimmerHighlight: Colors.white.withValues(alpha: 0.2),
        heroSurface: const Color(0xff0e0e10),
        iconNeutral: const Color(0xff6C6C71),
      );

  @override
  AccentColors get accent => AccentColors(
        premium: const Color(0xfff7ce5f),
        premiumLight: const Color(0xfffeea7b),
        premiumDark: const Color(0xffcb9030),
        premiumPlan: const Color(0xff07c277),
        premiumPlanDark: const Color(0xff006f42),
        premiumSurface: const Color(0xff664c00),
        premiumGlow: const Color(0xffffca2d),
        gift: const Color(0xff00b93f),
        giftLime: const Color(0xffadee5c),
        giftSurface: const Color(0xff143327),
        aqiModerateLabel: const Color(0xff4d3d0e),
        aqiHazardous: const Color(0xff453442),
      );

  @override
  StaticColors get static => StaticColors(
        black: const Color(0xff14191a),
        white: Colors.white,
      );

  @override
  RippleColor get ripple =>
      RippleColor(ripple: const Color(0xffffffff).withAlpha(0x14)); // 8%

  static ThemeData darkTheme() {
    final colors = DarkColors();
    return _buildTheme(
      themeData: ThemeData.dark(useMaterial3: true),
      colors: colors,
      brightness: Brightness.dark,
        systemOverlayStyle: SystemUiOverlayStyle.light
    );
  }


}
