import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/core/navigation/router.dart';

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
    // var currentIndex = useCurrentIndex();
    useAutomaticKeepAlive(wantKeepAlive: true);

    final selectedTabColor = context.appColors.brand;
    final unselectedColor = context.appColors.textIconColor.secondary;

    return Stack(
      children: [
        Scaffold(
          appBar:   AppBar(),
        ),
        Positioned.fill(child:   Scaffold(
          resizeToAvoidBottomInset: true,
          body: navigationShell,
          bottomNavigationBar: Platform.isAndroid
              ? BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: navigationShell.currentIndex,
              onTap: (index) {
                if (index == navigationShell.currentIndex) return;
                _goBranch(index);
              },


              selectedLabelStyle:
              CustomTypography.labelSm.copyWith(fontSize: 12),
              unselectedLabelStyle:
              CustomTypography.labelSm.copyWith(fontSize: 12),
              items: bottomNavigationBarItems(
                  context: context,
                  selectedTabColor: selectedTabColor,
                  unselectedIconColor: unselectedColor))
              : CupertinoTabBar(
            items: bottomNavigationBarItems(
                context: context,
                selectedTabColor: selectedTabColor,
                unselectedIconColor: unselectedColor),
            currentIndex: navigationShell.currentIndex,
            onTap: (index) {
              if (index == navigationShell.currentIndex) return;
              _goBranch(index);
            },
          ),
        ),)
      ],
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
