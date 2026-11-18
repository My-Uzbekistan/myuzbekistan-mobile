import 'package:flutter/cupertino.dart';
import 'package:market_home/src/generated/locales/app_localizations.dart';

extension BuilContextExt on BuildContext {
  FeatureMarketHomeLocalizations get localization => FeatureMarketHomeLocalizations.of(this)!;
}
