import 'package:component_res/component_res.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/navigation.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/widgets/app_bottom_nav_bar.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/widgets/nav_tab_data.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/widgets/nav_profile_avatar.dart';

List<NavTabData> mainNavTabs(BuildContext context) {
  final localizations = context.localizations!;

  return [
    NavTabData.branch(
      asset: Assets.svg.tabIconHome,
      label: localizations.nav_home,
      branchIndex: 0,
    ),
    NavTabData.branch(
      asset: Assets.svg.tabIconFinance,
      label: localizations.nav_payment,
      branchIndex: 1,
    ),
    NavTabData.action(
      asset: Assets.svg.tabIconMarket,
      label: localizations.nav_market,
      onTap: context.market.goMarketHome,
    ),
    NavTabData.branch(
      asset: Assets.svg.tabIconMore,
      label: localizations.nav_more,
      branchIndex: 2,
      iconBuilder: (selected, color) => NavProfileAvatar(
        selected: selected,
        ringColor: color,
      ),
    ),
  ];
}

List<NavTabData> marketNavTabs(BuildContext context) {
  final localizations = context.localizations!;

  return [
    NavTabData.action(
      asset: Assets.svg.tabIconBack,
      label: localizations.nav_back,
      onTap: context.travel.goMain,
    ),
    NavTabData.branch(
      asset: Assets.svg.tabIconMarket,
      label: localizations.nav_market,
      branchIndex: 0,
    ),
    NavTabData.branch(
      asset: Assets.svg.tabIconFavorites,
      label: localizations.nav_favorites,
      branchIndex: 1,
    ),
    NavTabData.branch(
      asset: Assets.svg.tabIconBasket,
      label: localizations.nav_basket,
      branchIndex: 2,
    ),
    NavTabData.branch(
      asset: Assets.svg.tabIconProfile,
      label: localizations.nav_profile,
      branchIndex: 3,
    ),
  ];
}
