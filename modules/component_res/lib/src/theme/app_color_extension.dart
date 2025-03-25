part of 'app_color_theme.dart';

class _AppColorsExtension extends ThemeExtension<_AppColorsExtension> {
  final Color brand;
  final TextIconColor textIconColor;
  final BackgroundColors background;
  final FillColors fill;
  final StrokeColors stroke;
  final StaticColors static;
  final OtherColors colors;
  final NonOpaque nonOpaque;
  final ServiceColors service;
  final RippleColor rippleColor;


  _AppColorsExtension(
      {
        required this.brand,
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
  ThemeExtension<_AppColorsExtension> lerp(
      covariant ThemeExtension<_AppColorsExtension>? other, double t) {
    if (other is! _AppColorsExtension) {
      return this;
    }
    return _AppColorsExtension(
      brand: other.brand,
      textIconColor: other.textIconColor,
        background: other.background,
        fill: other.fill,
        stroke: other.stroke,
        static: other.static,
        colors: other.colors,
        nonOpaque: other.nonOpaque,
        service: other.service,
        rippleColor: other.rippleColor,

    );
  }

  @override
  ThemeExtension<_AppColorsExtension> copyWith(
      {TextIconColor? textIconColor,
        Color? brand,
      BackgroundColors? background,
      FillColors? fill,
      StrokeColors? stroke,
      StaticColors? static,
      OtherColors? colors,
      NonOpaque? nonOpaque,
      ServiceColors? service,
      RippleColor? ripple

      }) {
    return _AppColorsExtension(
      brand: brand??this.brand,
      textIconColor: textIconColor ?? this.textIconColor,
        background: background ?? this.background,
        fill: fill ?? this.fill,
        stroke: stroke ?? this.stroke,
        static: static ?? this.static,
        colors: colors ?? this.colors,
        nonOpaque: nonOpaque ?? this.nonOpaque,
        service: service ?? this.service,
        rippleColor: ripple?? rippleColor,

    );
  }
}

extension CustomThemeData on ThemeData {
  _AppColorsExtension get appColors =>
      extensions[_AppColorsExtension] as _AppColorsExtension;
}

extension ContextEx on BuildContext {
  _AppColorsExtension get appColors => Theme.of(this).appColors;

  Brightness get brightness => Theme.of(this).brightness;
}
