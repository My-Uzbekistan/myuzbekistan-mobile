import 'package:flutter/cupertino.dart';

import '../generated/locales/app_localizations.dart';



extension BuilContextExt on BuildContext {
  FeatureMoreLocalizations get localization =>
      FeatureMoreLocalizations.of(this)!;
}
