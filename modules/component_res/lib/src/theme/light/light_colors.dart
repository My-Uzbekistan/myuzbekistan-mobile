part of '../app_color_theme.dart';

class LightColors extends _BaseColors {
  Color get brand => Color(0xff0077ff);
  @override
  // TODO: implement textColors
  TextIconColor get textIconColor => TextIconColor(
    primary:  Colors.black,
    secondary: const Color(0xff3C3C43).withValues(alpha: 0.64),
    tertiary: const Color(0xff3C3C43).withValues(alpha: 0.32),
    disable: const Color(0xff3C3C43).withValues(alpha: 0.16),
    oposite: Colors.white,
  );
  @override
  BackgroundColors get background => const BackgroundColors(
       baseIos: Colors.white,
        baseAndroid: Colors.white,
        elevation1:Colors.white,
        elevation1Alt: Color(0xffF5F6F7),
        elevation2: Colors.white,
        elevation2Alt: Color(0xffEBECEE),
        elevation3: Colors.white,
      );

  @override
  // TODO: implement fill
  FillColors get fill => FillColors(
      quaternary: const Color(0xff001024).withValues(alpha: 0.04),
      tertiary:const Color(0xff001024).withValues(alpha: 0.06),
      secondary: const Color(0xff001024).withValues(alpha: 0.12),
      primary: Colors.black);

  @override
  // TODO: implement stroke
  StrokeColors get stroke => StrokeColors(
      nonOpaque: const Color(0xff3C3C43).withValues(alpha: 0.12),
      opaque: const Color(0xffE8E8E8));

  @override
  // TODO: implement colors
  OtherColors get colors => OtherColors(
      red: const Color(0xffFF3B30),
      green: const Color(0xff34C759),
      blue: const Color(0xff007AFF),
      yellow: const Color(0xffF6B51E),
     );


  @override
  // TODO: implement nonOpaque
  NonOpaque get nonOpaque => NonOpaque(
      red: const Color(0xffFF3B30).withValues(alpha: 0.16),
      green: const Color(0xff34C759).withValues(alpha: 0.16),
      blue: const Color(0xff007AFF).withValues(alpha: 0.12),
      yellow: const Color(0xffF6B51E).withValues(alpha: 0.16),
     );


  @override
  // TODO: implement service
  ServiceColors get service => ServiceColors(
      overlay: Colors.black.withValues(alpha: 0.6),
      backdrop: Colors.black.withValues(alpha: 0.48));

  @override
  // TODO: implement static
  StaticColors get static =>
      StaticColors(black: Colors.black, white: Colors.white);



  @override
  // TODO: implement ripple
  RippleColor get ripple => RippleColor(ripple: Colors.black.withValues(alpha: 0.08));

  static ThemeData lightTheme() {
    final colors = LightColors();
    return _buildTheme(
        themeData: ThemeData.light(useMaterial3: true),
        colors: colors,
        brightness: Brightness.light);
  }


}
