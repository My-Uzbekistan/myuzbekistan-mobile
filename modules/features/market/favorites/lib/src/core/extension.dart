import 'package:flutter/cupertino.dart';
import 'package:favorites/src/generated/locales/app_localizations.dart';

extension BuilContextExt on BuildContext {
  FeatureFavoritesLocalizations get localization => FeatureFavoritesLocalizations.of(this)!;
}
