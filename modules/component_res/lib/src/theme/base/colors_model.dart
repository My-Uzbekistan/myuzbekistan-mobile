part of '../app_color_theme.dart';

abstract class _BaseColors {
  Color get brandSeaBlue;
  Color get brandFlamingo;

  BackgroundColors get background;

  LabelColor get label;

  FillColors get fill;

  StrokeColors get stroke;

  StaticColors get static;

  OtherColors get colors;

  NonOpaque get nonOpaque;

  ServiceColors get service;

  AccentColors get accent;

  RippleColor get ripple;
}

class LabelColor {
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color disable;
  final Color oposite;

  LabelColor(
      {required this.primary,
      required this.secondary,
      required this.tertiary,
      required this.disable,
      required this.oposite});
}

class BackgroundColors {
  final Color base;
  final Color underlayer;
  final Color elevation1;
  final Color elevation1Alt;
  final Color elevation2;
  final Color elevation2Alt;
  final Color elevation3;

  const BackgroundColors(
      {required this.base,
      required this.underlayer,
      required this.elevation1,
      required this.elevation1Alt,
      required this.elevation2,
      required this.elevation2Alt,
      required this.elevation3});

  Color get background =>base;
}

class FillColors {
  @Deprecated("Olib tashlangan")
  final Color primary;
  @Deprecated("Olib tashlangan")
  final Color secondary;
  final Color tertiary;
  final Color quaternary;

  FillColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.quaternary,
  });
}

class StrokeColors {
  final Color nonOpaque;
  final Color opaque;

  StrokeColors({required this.nonOpaque, required this.opaque});
}

class StaticColors {
  final Color black;
  final Color white;

  StaticColors({required this.black, required this.white});
}

class OtherColors {
  final Color red;
  final Color green;
  final Color blue;
  final Color yellow;
  final Color orange;
  final Color lime;
  final Color purple;

  OtherColors({
    required this.red,
    required this.green,
    required this.blue,
    required this.yellow,
    required this.orange,
    required this.lime,
    required this.purple,
  });
}

class NonOpaque {
  final Color red;
  final Color green;
  final Color blue;
  final Color yellow;
  final Color brand;


  NonOpaque({
    required this.red,
    required this.green,
    required this.blue,
    required this.yellow,
    required this.brand

  });
}

class ServiceColors {
  final Color overlay;
  final Color scrim;
  final Color glass;
  final Color onMedia;
  final Color shadow;
  final Color shimmerBase;
  final Color shimmerHighlight;
  final Color heroSurface;

  ServiceColors({
    required this.overlay,
    required this.scrim,
    required this.glass,
    required this.onMedia,
    required this.shadow,
    required this.shimmerBase,
    required this.shimmerHighlight,
    required this.heroSurface,
  });
}

class AccentColors {
  final Color premium;
  final Color premiumLight;
  final Color premiumDark;
  final Color premiumPlan;
  final Color premiumPlanDark;
  final Color gift;
  final Color giftLime;
  final Color giftSurface;
  final Color aqiModerateLabel;
  final Color aqiHazardous;

  AccentColors({
    required this.premium,
    required this.premiumLight,
    required this.premiumDark,
    required this.premiumPlan,
    required this.premiumPlanDark,
    required this.gift,
    required this.giftLime,
    required this.giftSurface,
    required this.aqiModerateLabel,
    required this.aqiHazardous,
  });
}

class RippleColor {
  final Color ripple;
  RippleColor({
    required this.ripple,
  });
}
