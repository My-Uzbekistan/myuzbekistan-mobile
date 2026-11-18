import 'package:flutter/cupertino.dart';
import 'package:basket/src/generated/locales/app_localizations.dart';

extension BuilContextExt on BuildContext {
  FeatureBasketLocalizations get localization => FeatureBasketLocalizations.of(this)!;
}
