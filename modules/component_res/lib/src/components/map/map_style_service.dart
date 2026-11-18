import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MapStyleService {
  MapStyleService._();

  static String? _dark;
  static Future<void>? _loading;

  static Future<void> load() {
    return _loading ??= rootBundle
        .loadString("packages/component_res/${Assets.mapStyle.nightTheme}")
        .then((style) => _dark = style);
  }

  static String? of(Brightness brightness) {
    return brightness == Brightness.dark ? _dark : null;
  }
}
