import 'package:flutter/animation.dart';

import '../../domain.dart';
import '../di/injection.dart';

mixin AuthCheck {
  static void authCheck(
      {VoidCallback? authSuccess, VoidCallback? unauthorized}) {
    final userModel = getIt<SecurityStorage>().getUserModel();
    userModel == null ? unauthorized?.call() : authSuccess?.call();
  }
}
