part of '../app_color_theme.dart';

class DarkColors extends _BaseColors {
  @override
  // TODO: implement brand
  Color get brand => Color(0xff0099ff);

  @override
  // TODO: implement textColors
  TextIconColor get textIconColor => TextIconColor(
        primary: Colors.white,
        secondary: const Color(0xffEBEBF5).withValues(alpha: 0.64),
        tertiary: const Color(0xffEBEBF5).withValues(alpha: 0.32),
        disable: const Color(0xffEBEBF5).withValues(alpha: 0.16),
        oposite: Colors.black,
      );

  @override
  BackgroundColors get background => const BackgroundColors(
        baseIos: Colors.black,
        baseAndroid: Color(0xff121214),
        elevation1: Color(0xff1C1C1E),
        elevation1Alt: Color(0xff1C1C1E),
        elevation2: Color(0xff2C2C2E),
        elevation2Alt: Color(0xff2C2C2E),
        elevation3: Color(0xff3A3A3C),
      );

  @override
  // TODO: implement fill
  FillColors get fill => FillColors(
        quaternary: const Color(0xff787880).withValues(alpha: 0.18),
        tertiary: const Color(0xff787880).withValues(alpha: 0.24),
        secondary: const Color(0xff787880).withValues(alpha: 0.32),
    primary: Colors.white,
      );
  @override
  // TODO: implement stroke
  StrokeColors get stroke => StrokeColors(
      nonOpaque: Colors.white.withValues(alpha: 0.1),
      opaque: const Color(0xff2C2C2E));

  @override
  // TODO: implement colors
  OtherColors get colors => OtherColors(
        red: const Color(0xffFF4534),
        green: const Color(0xff30D158),
        blue: const Color(0xff0099FF),
        yellow: const Color(0xffFFD60A),
      );
  @override
  // TODO: implement nonOpaque
  NonOpaque get nonOpaque => NonOpaque(
        red: const Color(0xffFF4534).withValues(alpha: 0.16),
        green: const Color(0xff30D158).withValues(alpha: 0.16),
        blue: const Color(0xff0099FF).withValues(alpha: 0.16),
        yellow: const Color(0xffFFD60A).withValues(alpha: 0.16),
      );

  @override
  // TODO: implement service
  ServiceColors get service => ServiceColors(
      overlay: Colors.black.withValues(alpha: 0.6),
      backdrop: Colors.black.withValues(alpha: 0.4));

  @override
  // TODO: implement static
  StaticColors get static =>
      StaticColors(black: Colors.black, white: Colors.white);


  @override
  // TODO: implement ripple
  RippleColor get ripple =>
      RippleColor(ripple: Colors.white.withValues(alpha: 0.08));

  static ThemeData darkTheme() {
    final colors = DarkColors();

    return _buildTheme(
        themeData: ThemeData.dark(useMaterial3: true),
        colors: colors,
        brightness: Brightness.dark);
  }

}
