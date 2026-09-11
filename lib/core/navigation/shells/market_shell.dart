import 'package:shared/shared.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/shell_wrapper.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/tabs/nav_tabs.dart';

class MarketShell {
  const MarketShell._();

  static StatefulShellRoute route({
    required List<StatefulShellBranch> branches,
  }) {
    return StatefulShellRoute.indexedStack(
      pageBuilder: (context, state, navigationShell) => NoTransitionPage(
        child: ShellPageWrapper(
          navigationShell: navigationShell,
          tabsBuilder: marketNavTabs,
        ),
      ),
      branches: branches,
    );
  }
}
