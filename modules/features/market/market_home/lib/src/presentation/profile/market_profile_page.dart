import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:navigation/navigation.dart';

class MarketProfilePage extends StatelessWidget {
  const MarketProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.paddingOf(context).top;

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBody: true,
      body: CupertinoTheme(
        data: CupertinoThemeData(
          brightness: context.brightness,
          textTheme: CupertinoTextThemeData(
            navLargeTitleTextStyle: CustomTypography.H1.copyWith(
              color: context.appColors.textIconColor.primary,
            ),
            navTitleTextStyle: CustomTypography.labelLg.copyWith(
              color: context.appColors.textIconColor.primary,
            ),
          ),
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            SliverStack(
              children: [
                SliverPersistentHeader(
                  delegate: BlurHeaderDelegate(
                    kToolbarHeight + topInset,
                    gradientColor: context.appColors.background.underlayer,
                  ),
                  pinned: true,
                ),
                CupertinoSliverNavigationBar(
                  largeTitle: Text(context.localization.market_profile_title),
                  border: null,
                  stretch: true,
                  brightness: context.brightness,
                  backgroundColor: Colors.transparent,
                  enableBackgroundFilterBlur: false,
                  trailing: Row(mainAxisSize: MainAxisSize.min),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: context.appColors.background.elevation1,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _cell(
                      context,
                      icon: _icon(
                        context,
                        asset: Assets.svg.market.orderBox,
                        width: 19,
                        height: 19,
                      ),
                      title: context.localization.market_profile_orders,
                      onTap: () => context.market.pushMarketOrders(
                        group: MarketOrderGroup.active,
                      ),
                    ),
                    _cell(
                      context,
                      icon: _icon(
                        context,
                        asset: Assets.svg.market.orderBag,
                        width: 21.2,
                        height: 22.4,
                      ),
                      title: context.localization.market_profile_purchased,
                      onTap: () => context.market.pushMarketOrders(
                        group: MarketOrderGroup.purchased,
                      ),
                    ),
                    _cell(
                      context,
                      icon: _icon(
                        context,
                        asset: Assets.svg.market.orderReturn,
                        width: 18,
                        height: 18,
                        flipHorizontally: true,
                      ),
                      title: context.localization.market_profile_returns,
                      onTap: () => context.market.pushMarketOrders(
                        group: MarketOrderGroup.returned,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverFillRemaining(hasScrollBody: false),
          ],
        ),
      ),
    );
  }

  Widget _cell(
    BuildContext context, {
    required Widget icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        height: 56,
        child: Row(
          spacing: 8,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                height: 24,
                width: 24,
                child: Center(child: icon),
              ),
            ),
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).labelMd(color: context.appColors.textIconColor.primary),
            ),
            SizedBox(
              height: 20,
              width: 20,
              child: Assets.svg.iconArrowRight.path.toSvgImage(
                fit: BoxFit.contain,
                tintColor: context.appColors.textIconColor.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _icon(
    BuildContext context, {
    required SvgGenImage asset,
    required double width,
    required double height,
    bool flipHorizontally = false,
  }) {
    final image = asset.path.toSvgImage(
      width: width,
      height: height,
      fit: BoxFit.contain,
      tintColor: context.appColors.textIconColor.tertiary,
    );

    if (!flipHorizontally) return image;

    return Transform.flip(flipX: true, child: image);
  }
}
