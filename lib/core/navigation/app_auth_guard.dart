import 'package:domain/domain.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:uzbekistan_travel/di/injection.dart';

abstract class AppAuthGuard {
  static String? redirect(BuildContext context, GoRouterState state) {
    if (!_authRequired(state)) return null;
    if (getIt<SecurityStorage>().getAccessToken() != null) return null;

    return "${AppNavPath.more.authPage.path}?slideAlign=vertical";
  }

  static bool _authRequired(GoRouterState state) {
    if (parseBool(state.uri.queryParameters["authRequired"]) ?? false) {
      return true;
    }
    return AppNavPath.byName(state.topRoute?.name)?.authRequired ?? false;
  }
}
