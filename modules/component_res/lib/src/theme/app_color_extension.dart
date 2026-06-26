part of 'app_color_theme.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  final Color brand;
  final Color brandFlamingo;
  final LabelColor textIconColor;
  final BackgroundColors background;
  final FillColors fill;
  final StrokeColors stroke;
  final StaticColors static;
  final OtherColors colors;
  final NonOpaque nonOpaque;
  final ServiceColors service;
  final RippleColor rippleColor;

  AppColorsExtension({
    required this.brand,
    required this.brandFlamingo,
    required this.textIconColor,
    required this.background,
    required this.fill,
    required this.stroke,
    required this.static,
    required this.colors,
    required this.nonOpaque,
    required this.service,
    required this.rippleColor,
  });

  @override
  ThemeExtension<AppColorsExtension> lerp(
      covariant ThemeExtension<AppColorsExtension>? other, double t) {
    if (other is! AppColorsExtension) {
      return this;
    }
    return AppColorsExtension(
      brand: Color.lerp(brand, other.brand, t) ?? other.brand,
      brandFlamingo: Color.lerp(brandFlamingo, other.brandFlamingo, t) ?? other.brandFlamingo,
      textIconColor: _lerpLabelColor(textIconColor, other.textIconColor, t),
      background: _lerpBackgroundColors(background, other.background, t),
      fill: _lerpFillColors(fill, other.fill, t),
      stroke: _lerpStrokeColors(stroke, other.stroke, t),
      static: _lerpStaticColors(static, other.static, t),
      colors: _lerpOtherColors(colors, other.colors, t),
      nonOpaque: _lerpNonOpaque(nonOpaque, other.nonOpaque, t),
      service: _lerpServiceColors(service, other.service, t),
      rippleColor: _lerpRippleColor(rippleColor, other.rippleColor, t),
    );
  }

  static LabelColor _lerpLabelColor(LabelColor a, LabelColor b, double t) {
    return LabelColor(
      primary: Color.lerp(a.primary, b.primary, t) ?? b.primary,
      secondary: Color.lerp(a.secondary, b.secondary, t) ?? b.secondary,
      tertiary: Color.lerp(a.tertiary, b.tertiary, t) ?? b.tertiary,
      disable: Color.lerp(a.disable, b.disable, t) ?? b.disable,
      oposite: Color.lerp(a.oposite, b.oposite, t) ?? b.oposite,
    );
  }

  static BackgroundColors _lerpBackgroundColors(
    BackgroundColors a,
    BackgroundColors b,
    double t,
  ) {
    return BackgroundColors(
      base: Color.lerp(a.base, b.base, t) ?? b.base,
      underlayer: Color.lerp(a.underlayer, b.underlayer, t) ?? b.underlayer,
      elevation1: Color.lerp(a.elevation1, b.elevation1, t) ?? b.elevation1,
      elevation1Alt:
          Color.lerp(a.elevation1Alt, b.elevation1Alt, t) ?? b.elevation1Alt,
      elevation2: Color.lerp(a.elevation2, b.elevation2, t) ?? b.elevation2,
      elevation2Alt:
          Color.lerp(a.elevation2Alt, b.elevation2Alt, t) ?? b.elevation2Alt,
      elevation3: Color.lerp(a.elevation3, b.elevation3, t) ?? b.elevation3,
    );
  }

  static FillColors _lerpFillColors(FillColors a, FillColors b, double t) {
    return FillColors(
      primary: Color.lerp(a.primary, b.primary, t) ?? b.primary,
      secondary: Color.lerp(a.secondary, b.secondary, t) ?? b.secondary,
      tertiary: Color.lerp(a.tertiary, b.tertiary, t) ?? b.tertiary,
      quaternary: Color.lerp(a.quaternary, b.quaternary, t) ?? b.quaternary,
    );
  }

  static StrokeColors _lerpStrokeColors(
    StrokeColors a,
    StrokeColors b,
    double t,
  ) {
    return StrokeColors(
      nonOpaque: Color.lerp(a.nonOpaque, b.nonOpaque, t) ?? b.nonOpaque,
      opaque: Color.lerp(a.opaque, b.opaque, t) ?? b.opaque,
    );
  }

  static StaticColors _lerpStaticColors(StaticColors a, StaticColors b, double t) {
    return StaticColors(
      black: Color.lerp(a.black, b.black, t) ?? b.black,
      white: Color.lerp(a.white, b.white, t) ?? b.white,
    );
  }

  static OtherColors _lerpOtherColors(OtherColors a, OtherColors b, double t) {
    return OtherColors(
      red: Color.lerp(a.red, b.red, t) ?? b.red,
      green: Color.lerp(a.green, b.green, t) ?? b.green,
      blue: Color.lerp(a.blue, b.blue, t) ?? b.blue,
      yellow: Color.lerp(a.yellow, b.yellow, t) ?? b.yellow,
      orange: Color.lerp(a.orange, b.orange, t) ?? b.orange,
        lime: Color.lerp(a.lime, b.lime, t) ?? b.lime,
    );
  }

  static NonOpaque _lerpNonOpaque(NonOpaque a, NonOpaque b, double t) {
    return NonOpaque(
      red: Color.lerp(a.red, b.red, t) ?? b.red,
      green: Color.lerp(a.green, b.green, t) ?? b.green,
      blue: Color.lerp(a.blue, b.blue, t) ?? b.blue,
      yellow: Color.lerp(a.yellow, b.yellow, t) ?? b.yellow,
      brand: Color.lerp(a.brand, b.brand, t) ?? b.brand,
    );
  }

  static ServiceColors _lerpServiceColors(ServiceColors a, ServiceColors b, double t) {
    return ServiceColors(
      overlay: Color.lerp(a.overlay, b.overlay, t) ?? b.overlay,
    );
  }

  static RippleColor _lerpRippleColor(RippleColor a, RippleColor b, double t) {
    return RippleColor(
      ripple: Color.lerp(a.ripple, b.ripple, t) ?? b.ripple,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> copyWith(
      {LabelColor? textIconColor,
      Color? brand,
      Color? brandFlamingo,
      BackgroundColors? background,
      FillColors? fill,
      StrokeColors? stroke,
      StaticColors? static,
      OtherColors? colors,
      NonOpaque? nonOpaque,
      ServiceColors? service,
      RippleColor? ripple}) {
    return AppColorsExtension(
      brand: brand ?? this.brand,
      brandFlamingo: brandFlamingo ?? this.brandFlamingo,
      textIconColor: textIconColor ?? this.textIconColor,
      background: background ?? this.background,
      fill: fill ?? this.fill,
      stroke: stroke ?? this.stroke,
      static: static ?? this.static,
      colors: colors ?? this.colors,
      nonOpaque: nonOpaque ?? this.nonOpaque,
      service: service ?? this.service,
      rippleColor: ripple ?? rippleColor,

    );
  }
}

extension CustomThemeData on ThemeData {
  AppColorsExtension get appColors =>
      extensions[AppColorsExtension] as AppColorsExtension;
}

extension ContextEx on BuildContext {
  AppColorsExtension get appColors => Theme.of(this).appColors;

  SystemUiOverlayStyle get systemUiOverlyStyle => systemOverlyStyle();

  Brightness get brightness => Theme.of(this).brightness;

  SystemUiOverlayStyle systemOverlyStyle() {
    return ((brightness == Brightness.light
            ? SystemUiOverlayStyle.dark
            : SystemUiOverlayStyle.light))
        .copyWith(
      systemNavigationBarContrastEnforced: false,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          brightness == Brightness.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness:
          brightness == Brightness.light ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: appColors.background.base,
    );
  }
}
