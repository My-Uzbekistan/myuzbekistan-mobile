import 'package:finance/src/generated/locales/app_localizations.dart';
import 'package:flutter/cupertino.dart';



extension BuilContextExt on BuildContext {
  FeatureFinanceLocalizations get localization =>
      FeatureFinanceLocalizations.of(this)!;
}



