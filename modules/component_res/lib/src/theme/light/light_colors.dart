part of '../app_color_theme.dart';

class LightColors extends _BaseColors {
  @override
  Color get brandPrimary => const Color(0xff177f9B); // unchanged

  @override
  LabelColor get label =>
      LabelColor(
        primary: const Color(0xff14191a),
        secondary: const Color(0xff14191a).withValues(alpha: 0.56),
        tertiary: const Color(0xff14191A).withValues(alpha: 0.4),
        disable: const Color(0xff14191a).withValues(alpha: 0.16),
        oposite: Colors.white,
      );

  @override
  BackgroundColors get background =>
      const BackgroundColors(
        underlayer: Color(0xffF1F3F6),
        base: Colors.white,
        elevation1: Colors.white,
        elevation1Alt: Color(0xffF1F3F6),
        elevation2: Colors.white,
        elevation2Alt: Color(0xffebecee),
        elevation3: Colors.white,
      );


  @override
  FillColors get fill =>
      FillColors(
        quaternary: const Color(0xff143661).withValues(alpha: 0.04), // ~4%
        tertiary: const Color(0xff143661).withValues(alpha: 0.06), // ~6%


        secondary: const Color(0xff001024).withAlpha(0x1F), // ~12%
        primary: const Color(0xff000000),
      );

  @override
  StrokeColors get stroke =>
      StrokeColors(
        nonOpaque: const Color(0xff75808A).withValues(alpha: 0.16), // updated
        opaque: const Color(0xffe8e8e8),
      );

  @override
  OtherColors get colors =>
      OtherColors(
        red: const Color(0xffff3b30),
        green: const Color(0xff34c759),
        blue: const Color(0xff007aff),
        yellow: const Color(0xffffca2d),
        orange: const Color(0xfffb5d40),// updated
      );

  @override
  NonOpaque get nonOpaque =>
      NonOpaque(
        red: const Color(0xffff3b30).withValues(alpha: 0.16),
        green: const Color(0xff34c759).withValues(alpha: 0.16),
        blue: const Color(0xff007aff).withValues(alpha: 0.12),
        yellow: const Color(0xffffcc00).withValues(alpha: 0.16),
        brand: const Color(0xff177f9b).withValues(alpha: 0.16),
      );

  @override
  ServiceColors get service =>
      ServiceColors(
        overlay: Colors.black.withValues(alpha: 0.6), // updated
      );

  @override
  StaticColors get static =>
      StaticColors(
        black: const Color(0xff14191a),
        white: Colors.white,
      );

  @override
  RippleColor get ripple =>
      RippleColor(ripple: const Color(0xff000000).withAlpha(0x14)); // 8%

  static ThemeData lightTheme() {
    final colors = LightColors();
    return _buildTheme(
      themeData: ThemeData.light(useMaterial3: true),
      colors: colors,
      brightness: Brightness.light,
      systemOverlayStyle: SystemUiOverlayStyle.dark
    );
  }
}


