part of '../app_color_theme.dart';

abstract class _BaseColors {
  Color get brand;

  BackgroundColors get background;

  TextIconColor get textIconColor;

  FillColors get fill;

  StrokeColors get stroke;

  StaticColors get static;

  OtherColors get colors;

  NonOpaque get nonOpaque;

  ServiceColors get service;

  RippleColor get ripple;
}

class TextIconColor {
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color disable;
  final Color oposite;

  TextIconColor(
      {required this.primary,
      required this.secondary,
      required this.tertiary,
      required this.disable,
      required this.oposite});
}

class BackgroundColors {
  final Color baseIos;
  final Color baseAndroid;
  final Color elevation1;
  final Color elevation1Alt;
  final Color elevation2;
  final Color elevation2Alt;
  final Color elevation3;

  const BackgroundColors(
      {required this.baseIos,
      required this.baseAndroid,
      required this.elevation1,
      required this.elevation1Alt,
      required this.elevation2,
      required this.elevation2Alt,
      required this.elevation3});

  Color get background => Platform.isIOS ? baseIos : baseAndroid;
}

class FillColors {
  final Color primary;
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

  OtherColors({
    required this.red,
    required this.green,
    required this.blue,
    required this.yellow,
  });
}

class NonOpaque {
  final Color red;
  final Color green;
  final Color blue;
  final Color yellow;

  NonOpaque({
    required this.red,
    required this.green,
    required this.blue,
    required this.yellow,
  });
}

class ServiceColors {
  final Color overlay;
  final Color backdrop;

  ServiceColors({
    required this.overlay,
    required this.backdrop,
  });
}

class RippleColor {
  final Color ripple;
  RippleColor({
    required this.ripple,
  });
}
