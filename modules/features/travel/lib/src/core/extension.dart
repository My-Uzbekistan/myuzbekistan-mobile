import 'package:flutter/cupertino.dart';
import 'package:travel/src/generated/locales/app_localizations.dart';



extension BuilContextExt on BuildContext {
  FeatureTravelLocalizations get localization =>
      FeatureTravelLocalizations.of(this)!;
}
