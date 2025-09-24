part of '../app_color_theme.dart';

abstract class _BaseColors {
  Color get brandPrimary;

  BackgroundColors get background;

  LabelColor get label;

  FillColors get fill;

  StrokeColors get stroke;

  StaticColors get static;

  OtherColors get colors;

  NonOpaque get nonOpaque;

  ServiceColors get service;

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

  OtherColors({
    required this.red,
    required this.green,
    required this.blue,
    required this.yellow,
    required this.orange
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

  ServiceColors({
    required this.overlay,
  });
}

class RippleColor {
  final Color ripple;
  RippleColor({
    required this.ripple,
  });
}
