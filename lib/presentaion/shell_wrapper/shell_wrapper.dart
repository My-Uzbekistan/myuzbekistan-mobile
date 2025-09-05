

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';


class ShellPageWrapper extends HookWidget {
  final StatefulNavigationShell navigationShell;
  const ShellPageWrapper({super.key, required this.navigationShell});

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    // useAutomaticKeepAlive(wantKeepAlive: true);
    return  Scaffold(
          resizeToAvoidBottomInset: true,
          extendBody: true,
          body: navigationShell,
          bottomNavigationBar: CustomNavigationBar(
            centerDotted: true,
            currentIndex: navigationShell.currentIndex,

            onTap: (index) => _goBranch(index),
            onTapCenterDotted: (){
              context.finance.pushQrCoderReaderPage();
            },
            items: [
              CustomTabItem(
                label: context.localizations!.nav_home,
                icon: Assets.svgTabIconHome.toSvgImage(height: 24, width: 24),
              ),
              CustomTabItem(
                label: context.localizations!.nav_payment,
                icon: Assets.svgTabIconFinance.toSvgImage(height: 24, width: 24),
              ),
              CustomTabItem(
                label: context.localizations!.nav_services,
                icon: Assets.svgTabIconCatalog.toSvgImage(height: 24, width: 24),
              ),
              CustomTabItem(
                label: context.localizations!.nav_more,
                icon: Assets.svgTabIconMore.toSvgImage(height: 24, width: 24),
              )
            ],
          ));

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
        icon: Assets.svgTabIconHome.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: unselectedTabColorFilter),
        activeIcon: Assets.svgTabIconHome.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: selectedTabColorFilter),
        label: context.localizations?.nav_home,
      ),
      BottomNavigationBarItem(

        icon: Assets.svgTabIconFinance.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: unselectedTabColorFilter),
        activeIcon: Assets.svgTabIconFinance.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: selectedTabColorFilter),
        label: context.localizations?.nav_payment,
      ),
      BottomNavigationBarItem(
        icon: Assets.svgTabIconCatalog.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: unselectedTabColorFilter),
        activeIcon: Assets.svgTabIconCatalog.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: selectedTabColorFilter),
        label: context.localizations?.nav_services,
      ),
      BottomNavigationBarItem(
        icon: Assets.svgTabIconMore.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: unselectedTabColorFilter),
        activeIcon: Assets.svgTabIconMore.toSvgImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            colorFilter: selectedTabColorFilter),
        label: context.localizations?.nav_more,
      ),
    ];
  }
}
