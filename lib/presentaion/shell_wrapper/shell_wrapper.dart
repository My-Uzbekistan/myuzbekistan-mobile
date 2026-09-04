import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/travel.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/widgets/app_bottom_nav_bar.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/widgets/nav_tab_data.dart';
import 'package:uzbekistan_travel/upgrader/upgrader_global.dart';

const _deeplinkHost = "myuzb.uz";

bool _listeningNotifications = false;

class ShellPageWrapper extends HookWidget {
  const ShellPageWrapper({
    super.key,
    required this.navigationShell,
    required this.tabsBuilder,
    this.navBarKind = NavBarKind.auto,
    this.showNavBarFade = true,
    this.extendBody = true,
  });

  final StatefulNavigationShell navigationShell;
  final NavTabsBuilder tabsBuilder;
  final NavBarKind navBarKind;
  final bool showNavBarFade;
  final bool extendBody;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  void _onTabSelected(List<NavTabData> tabs, int index) {
    final tab = tabs[index];
    final onTap = tab.onTap;
    if (onTap != null) {
      onTap();
      return;
    }
    final branchIndex = tab.branchIndex;
    if (branchIndex != null) _goBranch(branchIndex);
  }

  @override
  Widget build(BuildContext context) {
    final aiGuideCubit = context.read<AiGuideCubit>();
    useEffect(() {
      aiGuideCubit.loadAiGuideLink();
      return null;
    }, [Localizations.localeOf(context)]);

    useEffect(() {
      if (_listeningNotifications) return null;
      _listeningNotifications = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        NotificationService().listenNotification(
          logRemoteMessage: _openNotificationDeeplink,
        );
      });
      return null;
    }, const []);

    return MyUpgradeAlert(
      child: Scaffold(
        backgroundColor: context.appColors.background.underlayer,
        extendBody: extendBody,
        body: navigationShell,
        bottomNavigationBar: Builder(
          builder: (context) {
            final tabs = tabsBuilder(context);
            return AppBottomNavBar(
              tabs: tabs,
              selectedIndex: tabs.indexWhere(
                (tab) => tab.branchIndex == navigationShell.currentIndex,
              ),
              onTabSelected: (index) => _onTabSelected(tabs, index),
              kind: navBarKind,
              showFade: showNavBarFade,
            );
          },
        ),
      ),
    );
  }
}

void _openNotificationDeeplink(RemoteMessage message) {
  try {
    final deeplink = message.data["deeplink"];
    if (deeplink is! String || deeplink.isEmpty) return;
    final uri = Uri.parse(deeplink);
    if (uri.host == _deeplinkHost && uri.pathSegments.isNotEmpty) {
      appRootNavigatorKey.currentContext?.push(uri.toString());
    }
  } catch (_) {}
}
