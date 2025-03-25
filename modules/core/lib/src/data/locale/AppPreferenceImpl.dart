import 'dart:ui';

import 'package:core/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../shared/local/app_preference.dart';

@Injectable(as: AppPreference)
class AppPreferenceImpl extends AppPreference {
  final Box _box;

  AppPreferenceImpl({@Named(StorageConstants.localeBox) required Box box})
      : _box = box;

  @override
  Future<void> setLocale(AppLocale locale) async {
    await _box.put("locale", locale.name);
  }

  @override
  AppLocale getLocale() {
    final String? locale = _box.get(
      "locale",
    );

    if (locale == null) return AppLocale.en;
    final appLocale = AppLocale.values.firstWhere((e) => e.name == locale);
    return appLocale;
  }

  @override
  ThemeMode getThemeMode() {
    final String mode =
        _box.get("themeMode", defaultValue: ThemeMode.system.name);

    final appThemeMode = ThemeMode.values.firstWhere((e) => e.name == mode);
    return appThemeMode;
  }

  @override
  Future<void> setTheme(ThemeMode mode) async {
    await _box.put("themeMode", mode.name);
  }
}
