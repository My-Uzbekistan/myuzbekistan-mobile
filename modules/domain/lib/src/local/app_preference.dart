import 'package:flutter/material.dart';

abstract class AppPreference {
  Future<void> setLocale(AppLocale locale);

  Future<void> setTheme(ThemeMode mode);

  AppLocale? getLocale();

  ThemeMode getThemeMode();
}

enum AppLocale {
  uz,
  ru,
  en,

  // final countryCode;
  //
  // AppLocale(this.countryCode);
}

extension AppLocaleX on AppLocale {
  Locale get locale {
    return switch (this) {
      AppLocale.en => const Locale("en"),
      AppLocale.uz => const Locale("uz"),
      AppLocale.ru => const Locale("ru"),
    };
  }

  String get culture {
    return switch (this) {
      AppLocale.en => "en-US",
      AppLocale.uz => "uz-Latn",
      AppLocale.ru => "ru-RU",
    };
  }
}

extension Localex on Locale{

  AppLocale get appLocale {
    return switch (languageCode) {
      "uz" => AppLocale.uz,
      "ru" => AppLocale.ru,
      _ => AppLocale.en,
    };
  }
}
