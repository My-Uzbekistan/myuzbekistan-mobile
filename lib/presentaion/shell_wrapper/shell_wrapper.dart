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

    var currentIndex = useCurrentIndex();
debugPrint("currentIndex ${currentIndex}");

    final selectedTabColor = context.appColors.brand;
    final unselectedColor = context.appColors.textIconColor.secondary;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: navigationShell,
      bottomNavigationBar: !Platform.isAndroid
          ? BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex.value,
              onTap: (index) {
                if (index == currentIndex) return;
                _goBranch(index);

              },
              // fixedColor: context.appColors.background.elevation1Alt,
              backgroundColor: context.appColors.background.elevation1Alt,
              selectedItemColor: selectedTabColor,
              unselectedItemColor: unselectedColor,

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
              currentIndex: currentIndex.value,
              onTap: (index) {
                if (index == currentIndex.value) return;
                _goBranch(index);
              },
            ),
    );
  }

  List<BottomNavigationBarItem> bottomNavigationBarItems({
    required BuildContext context,
    required Color selectedTabColor,
    required Color unselectedIconColor,
  }) {
    // final selectedTabColorFilter =
    //     ColorFilter.mode(selectedTabColor, BlendMode.srcIn);
    // final unselectedTabColorFilter =
    //     ColorFilter.mode(unselectedIconColor, BlendMode.srcIn);
    return [
      BottomNavigationBarItem(
        icon: Assets.pngIcSearch
            .toImage(
          height: 24,
          width: 24,
          fit: BoxFit.contain,
          tintColor: unselectedIconColor,
        ),
        activeIcon: Assets.pngIcSearch
            .toImage(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            tintColor: selectedTabColor
        ),
        label: context.localizations?.nav_home,
      ),
      // BottomNavigationBarItem(
      //   icon: Assets.svgTabIconMap
      //       .toSvgImage(colorFilter: unselectedTabColorFilter),
      //   activeIcon: Assets.svgTabIconMap
      //       .toSvgImage(colorFilter: selectedTabColorFilter),
      //   label: context.localizations?.nav_map,
      // ),
      // BottomNavigationBarItem(
      //   icon: Assets.svgTabIconPayment
      //       .toSvgImage(colorFilter: unselectedTabColorFilter),
      //   activeIcon: Assets.svgTabIconPayment
      //       .toSvgImage(colorFilter: selectedTabColorFilter),
      //   label: context.localizations?.nav_payment,
      // ),
      // BottomNavigationBarItem(
      //   icon: Assets.svgTabIconTransfer
      //       .toSvgImage(colorFilter: unselectedTabColorFilter),
      //   activeIcon: Assets.svgTabIconTransfer
      //       .toSvgImage(colorFilter: selectedTabColorFilter),
      //   label: context.localizations?.nav_transfer,
      // ),
      BottomNavigationBarItem(
        icon: Assets.pngNavMore
            .toImage(
              height: 24,
              width: 24,
              fit: BoxFit.contain,
              tintColor: unselectedIconColor,
            ),
        activeIcon: Assets.pngNavMore
            .toImage(
                height: 24,
                width: 24,
                fit: BoxFit.contain,
                tintColor: selectedTabColor
            ),
        label: context.localizations?.nav_more,
      ),
    ];
  }

// late ThemeData theme;
//
// @override
// Widget buildContent(BuildContext context) {
//   theme = Theme.of(context);
//   return Stack(
//     children: [
//       Scaffold(
//
//         resizeToAvoidBottomInset: false,
//           body:Column(
//             children: [
//               Expanded(child:  widget.navigationShell),
//             ],
//           ),
//           extendBody: true,
//           floatingActionButtonLocation:
//               FloatingActionButtonLocation.centerDocked,
//
//           floatingActionButton: Padding(
//             padding: const EdgeInsets.only(
//                 bottom: kBottomNavigationBarHeight *0.1),
//             child: SizedBox(
//               height: 64,
//               width: 64,
//               child: FloatingActionButton(
//                 backgroundColor: context.appColor.primary,
//                 elevation: 0,
//                 shape: CircleBorder(),
//                 onPressed: () {
//                   context.pushNamed(
//                       AppRouter.appRouterPath.qrCodeReadScreen.name);
//                 },
//                 child: SvgAssetsPicture(
//                   Assets.svgIconScanner,
//                   colorFilter:
//                       const ColorFilter.mode(Colors.white, BlendMode.srcIn),
//                 ),
//               ),
//             ),
//           ),
//           bottomNavigationBar: BlocBuilder<BottomNavBloc, BottomNavState>(
//               builder: (ctx, state) {
//             return Platform.isIOS
//                 ? CupertinoTabBar(
//               backgroundColor: context.appColor.elevation.withOpacity(0.98),
//
//               inactiveColor: context.appColor.gray,
//               activeColor: context.appColor.primary,
//               currentIndex: state.index,
//                     items: bottomNavigationBarItems(),
//                     onTap: (nextIndex) {
//                       onNavigationBarTab(state.index, nextIndex);
//                     },
//                   )
//                 :Container(
//               decoration: BoxDecoration(
//                boxShadow: [
//                  BoxShadow(
//                    color: Colors.black.withValues(alpha: 0.08), // 🖤 Soya rangi
//                    blurRadius: 4, // 📌 Soya tarqalish radiusi
//                    spreadRadius: 0, // 📌 Soya kengayishi
//                    offset: Offset(0, -4), // 🚀 Soya faqat yuqoriga tushadi
//                  ),
//                ]
//               ),
//               child: BottomAppBar(
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 shape: const CircularNotchedRectangle(),
//                 color: context.appColor.elevation,
//                 surfaceTintColor: Colors.transparent,
//                 notchMargin: 4.0,
//
//                 padding: EdgeInsets.zero,
//                 child: Theme(
//                   data: ThemeData(useMaterial3: false),
//                   child: Material(
//                     clipBehavior: Clip.hardEdge,
//                     elevation: 0,
//                     child: BottomNavigationBar(
//                       backgroundColor: context.appColor.elevation,
//                       elevation: 8,
//
//                       type: BottomNavigationBarType.fixed,
//
//                       currentIndex: state.index,
//                       onTap: (nextIndex) {
//                         onNavigationBarTab(state.index, nextIndex);
//                       },
//                       selectedItemColor: context.appColor.primary,
//                       unselectedItemColor: context.appColor.gray,
//                       selectedLabelStyle:
//                       CustomTypography.ChipSmall.copyWith(),
//                       unselectedLabelStyle:
//                       CustomTypography.ChipSmall.copyWith(),
//                       // unselectedLabelStyle: AppTextStyle.sPlus,
//                       items: bottomNavigationBarItems(),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           })
//       ),
//       BlocConsumer<QrAcceptBloc, QrAcceptState>(
//           listenWhen: (prev, current) => prev != current,
//           listener: (context, state) {
//             state.when(
//                 loading: () {},
//                 defaultState: (data) {
//                   switch (data) {
//                     case QrStateType.successType:
//                       {
//                         MessageService.showSuccessMessage(
//                             message: localization!.authentication_successful);
//                       }
//                       break;
//                     case QrStateType.errorType:
//                       {}
//                     default:
//                   }
//                 });
//           },
//           builder: (context, state) {
//             return state.when(loading: () {
//               return Container(
//                 color: Colors.black54,
//                 child: SpinKitCircle(
//                   color: context.appColor.white,
//                   size: 200,
//                 ),
//               );
//             }, defaultState: (type) {
//               return const SizedBox();
//             });
//           })
//     ],
//   );
// }

// void onNavigationBarTab(int currentIndex, int nextIndex) {
//   if (nextIndex != currentIndex) {
//     _goBranch(nextIndex);
//     context.read<BottomNavBloc>().add(BottomNavEvent(index: nextIndex));
//   }
// }
//
// List<BottomNavigationBarItem> bottomNavigationBarItems() {
//   return [
//     BottomNavigationBarItem(
//       icon: SvgAssetsPicture(
//         Assets.svgIconTabProfile,
//         colorFilter: _tabIconColorFilter(),
//       ),
//       activeIcon: SvgAssetsPicture(
//         Assets.svgIconTabProfile,
//         colorFilter: _activeTabIconColorFilter(),
//       ),
//       label: localization!.profile,
//     ),
//     BottomNavigationBarItem(
//       icon: SvgAssetsPicture(
//         Assets.svgIconGridWidget,
//         colorFilter: _tabIconColorFilter(),
//       ),
//       activeIcon: SvgAssetsPicture(Assets.svgIconNavResources,
//           colorFilter: _activeTabIconColorFilter()),
//       // activeIcon: SvgAssetsPicture(Assets.svgDocuments,
//       //     color: Resources.colors.secondary.s_600),
//       label: localization!.permission,
//     ),
//     BottomNavigationBarItem(
//       icon: SvgAssetsPicture(
//         Assets.svgNotificationIcon,
//         colorFilter: _tabIconColorFilter(),
//       ),
//       activeIcon: SvgAssetsPicture(Assets.svgNotificationIcon,
//           colorFilter: _activeTabIconColorFilter()),
//       label: localization!.notification,
//     ),
//     BottomNavigationBarItem(
//       icon: SvgAssetsPicture(Assets.svgIconTabHamburgurMenu,
//           colorFilter: _tabIconColorFilter()),
//
//       activeIcon: SvgAssetsPicture(Assets.svgIconTabHamburgurMenu,
//           colorFilter: _activeTabIconColorFilter()),
//       label: localization!.more,
//     ),
//   ];
// }
//
// ColorFilter _tabIconColorFilter() {
//   return ColorFilter.mode(context.appColor.gray, BlendMode.srcIn);
// }
//
// ColorFilter _activeTabIconColorFilter() {
//   return ColorFilter.mode(context.appColor.primary, BlendMode.srcIn);
// }
}
