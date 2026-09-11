import 'package:flutter/widgets.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class RootShell {
  const RootShell._();

  static StatefulShellRoute route({
    required List<StatefulShellBranch> branches,
  }) {
    return StatefulShellRoute.indexedStack(
      parentNavigatorKey: appRootNavigatorKey,
      pageBuilder: (context, state, navigationShell) => NoTransitionPage(
        child: RootShellScope(
          navigationShell: navigationShell,
          child: navigationShell,
        ),
      ),
      branches: branches,
    );
  }
}

class RootShellScope extends InheritedWidget {
  const RootShellScope({
    super.key,
    required this.navigationShell,
    required super.child,
  });

  final StatefulNavigationShell navigationShell;

  static StatefulNavigationShell? maybeOf(BuildContext context) =>
      context.getInheritedWidgetOfExactType<RootShellScope>()?.navigationShell;

  static void goMainShell(BuildContext context) {
    final shell = maybeOf(context);
    if (shell == null) {
      context.travel.goMain();
      return;
    }
    shell.goBranch(0);
  }

  static void goMarketShell(BuildContext context) {
    final shell = maybeOf(context);
    if (shell == null) {
      context.market.goMarketHome();
      return;
    }
    shell.goBranch(1);
  }

  @override
  bool updateShouldNotify(RootShellScope oldWidget) =>
      navigationShell != oldWidget.navigationShell;
}
