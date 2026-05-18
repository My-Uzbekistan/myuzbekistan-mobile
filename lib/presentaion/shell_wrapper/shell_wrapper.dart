import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/upgrader/upgrader_global.dart';

class ShellPageWrapper extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const ShellPageWrapper({super.key, required this.navigationShell});

  @override
  State<ShellPageWrapper> createState() => _ShellPageWrapperState();
}

class _ShellPageWrapperState extends State<ShellPageWrapper> {
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((t) {
      NotificationService().listenNotification(
          logRemoteMessage: (remoteMessage) {
        openNotification(remoteMessage);
      });
    });
    super.initState();
  }

  void openNotification(RemoteMessage message) {
    try {
      final String? deeplink = message.data["deeplink"];
      if (deeplink != null && deeplink.isNotEmpty) {
        final uri = Uri.parse(deeplink);
        if (uri.host == "myuzb.uz" && uri.pathSegments.isNotEmpty) {
          appRootNavigatorKey.currentContext?.push(uri.toString());
        }
      }
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    // useAutomaticKeepAlive(wantKeepAlive: true);
    return MyUpgradeAlert(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          extendBody: true,
          body: widget.navigationShell,
          bottomNavigationBar: CustomNavigationBar(
            centerDotted: true,
            currentIndex: widget.navigationShell.currentIndex,
            onTap: (index) => _goBranch(index),
            onTapCenterDotted: () {
              context.finance.pushQrCoderReaderPage();
            },
            items: [
              CustomTabItem(
                label: context.localizations!.nav_home,
                icon: Assets.svg.tabIconHome.svg(height: 24, width: 24),
              ),
              CustomTabItem(
                label: context.localizations!.nav_payment,
                icon: Assets.svg.tabIconFinance.svg(height: 24, width: 24),
              ),
              CustomTabItem(
                label: context.localizations!.nav_services,
                icon: Assets.svg.tabIconCatalog.svg(height: 24, width: 24),
              ),
              CustomTabItem(
                label: context.localizations!.nav_more,
                icon: Assets.svg.tabIconMore.svg(height: 24, width: 24),
              )
            ],
          )),
    );
  }

  List<BottomNavigationBarItem> bottomNavigationBarItems({
    required BuildContext context,
    required Color selectedTabColor,
    required Color unselectedIconColor,
  }) {
    final selectedTabColorFilter =
        ColorFilter.mode(selectedTabColor, BlendMode.srcIn);
    final unselectedTabColorFilter =
        ColorFilter.mode(unselectedIconColor, BlendMode.srcIn);
    return [
      BottomNavigationBarItem(
        icon: Assets.svg.tabIconHome.path.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: unselectedTabColorFilter),
        activeIcon: Assets.svg.tabIconHome.path.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: selectedTabColorFilter),
        label: context.localizations?.nav_home,
      ),
      BottomNavigationBarItem(
        icon: Assets.svg.tabIconFinance.path.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: unselectedTabColorFilter),
        activeIcon: Assets.svg.tabIconFinance.path.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: selectedTabColorFilter),
        label: context.localizations?.nav_payment,
      ),
      BottomNavigationBarItem(
        icon: Assets.svg.tabIconCatalog.path.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: unselectedTabColorFilter),
        activeIcon: Assets.svg.tabIconCatalog.path.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: selectedTabColorFilter),
        label: context.localizations?.nav_services,
      ),
      BottomNavigationBarItem(
        icon: Assets.svg.tabIconMore.path.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: unselectedTabColorFilter),
        activeIcon: Assets.svg.tabIconMore.path.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: selectedTabColorFilter),
        label: context.localizations?.nav_more,
      ),
    ];
  }
}
