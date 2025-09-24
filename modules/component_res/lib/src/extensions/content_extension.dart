import 'package:flutter/material.dart';

import '../../generated/locale/app_localizations.dart';

extension BuildContextExtensions on BuildContext{

  CoreAppLocalizations get coreLocalization =>
      CoreAppLocalizations.of(this)!;
}