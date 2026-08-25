import 'package:more/more.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:uzbekistan_travel/di/injection.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/shell_wrapper.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/tabs/nav_tabs.dart';

class MainShell {
  const MainShell._();

  static StatefulShellRoute route({
    required List<StatefulShellBranch> branches,
  }) {
    return StatefulShellRoute.indexedStack(
      parentNavigatorKey: appRootNavigatorKey,
      pageBuilder: (context, state, navigationShell) => NoTransitionPage(
        child: BlocProvider(
          create: (_) =>
              getIt<ProfileBloc>()..add(ProfileBlocEvent.initEvent()),
          child: ShellPageWrapper(
            navigationShell: navigationShell,
            tabsBuilder: mainNavTabs,
          ),
        ),
      ),
      branches: branches,
    );
  }
}
