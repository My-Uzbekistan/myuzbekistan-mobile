part of '../app_color_theme.dart';

class DarkColors extends _BaseColors {
  @override
  // Color get brandPrimary => const Color(0xff177f9B); // old
  Color get brandPrimary => const Color(0xff33BE73); // updated

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
