import 'package:core/core.dart';
import 'package:flutter/animation.dart';
import 'package:uzbekistan_travel/di/injection.dart';

mixin AuthCheck {
  static void authCheck(
      {VoidCallback? authSuccess, VoidCallback? unauthorized}) {
    final userModel = getIt<SecurityStorage>().getUserModel();
    userModel == null ? unauthorized?.call() : authSuccess?.call();
  }
}
