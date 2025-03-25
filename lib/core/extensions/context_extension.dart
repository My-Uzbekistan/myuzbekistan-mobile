import 'package:flutter/cupertino.dart';
import 'package:uzbekistan_travel/generated/locale/app_localizations.dart';

extension LocalizationContextExtension on BuildContext {
  AppLocalizations? get localizations => AppLocalizations.of(this);
}
