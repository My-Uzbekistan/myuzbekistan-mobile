import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/home/widgets/finance_home_body.dart';
import 'package:finance/src/presentation/home/widgets/finance_home_shimmer.dart';
import 'package:finance/src/presentation/home/widgets/hero/finance_hero_actions.dart';
import 'package:finance/src/presentation/home/widgets/hero/finance_hero_background.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'bloc/finance_bloc.dart';

class FinanceHomePage extends HookWidget {
  const FinanceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.of(context).padding.top;
    final bottomInset = MediaQuery.of(context).padding.bottom + 16;
    final scrollController = useScrollController();
    final scrollOffset = useState(0.0);

    useEffect(() {
      void onScroll() {
        final value = scrollController.offset.clamp(0.0, 64.0);
        if ((value - scrollOffset.value).abs() > 0.5) {
          scrollOffset.value = value;
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    final scrimProgress = (scrollOffset.value / 28).clamp(0.0, 1.0);
    final largeTitleOpacity =
        1 - ((scrollOffset.value - 10) / 14).clamp(0.0, 1.0);
    final titleProgress = Curves.easeOut.transform(
      ((scrollOffset.value - 20) / 16).clamp(0.0, 1.0),
    );

    return Scaffold(
      extendBody: true,
      backgroundColor: context.appColors.background.underlayer,
      body: BlocBuilder<FinanceBloc, FinanceState>(
        builder: (context, state) {
          return CustomScrollView(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverStack(
                children: [
                  const SliverPositioned.fill(child: FinanceHeroBackground()),
                  MultiSliver(
                    children: [
                      SliverToBoxAdapter(
                        child: Opacity(
                          opacity: largeTitleOpacity,
                          child: _largeTitle(context, topInset),
                        ),
                      ),
                      SliverList.list(
                        children: [
                          const FinanceHeroActions(),
                          Container(
                            width: double.maxFinite,
                            padding: const EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              color: context.appColors.background.underlayer,
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(24),
                              ),
                            ),
                            child: state is FinanceDataState
                                ? FinanceHomeBody(state: state)
                                : const FinanceHomeShimmer(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _FinanceHeaderDelegate(
                      height: kToolbarHeight + topInset,
                      title: context.localization.finance_title,
                      titleStyle: CustomTypography.labelLg.copyWith(
                        color: context.appColors.static.white,
                      ),
                      gradientColor: context.appColors.service.heroSurface,
                      scrimProgress: scrimProgress,
                      titleProgress: titleProgress,
                    ),
                  ),
                ],
              ),
              SliverToBoxAdapter(child: SizedBox(height: bottomInset)),
            ],
          );
        },
      ),
    );
  }

  Widget _largeTitle(BuildContext context, double topInset) {
    return Padding(
      padding: EdgeInsets.only(top: topInset + 32, left: 16, right: 16),
      child: SizedBox(
        height: 52,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            context.localization.finance_title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTypography.H1.copyWith(
              color: context.appColors.static.white,
              letterSpacing: -0.5,
            ),
          ),
        ),
      ),
    );
  }
}

class _FinanceHeaderDelegate extends SliverPersistentHeaderDelegate {
  _FinanceHeaderDelegate({
    required this.height,
    required this.title,
    required this.titleStyle,
    required this.gradientColor,
    required this.scrimProgress,
    required this.titleProgress,
  });

  final double height;
  final String title;
  final TextStyle titleStyle;
  final Color gradientColor;
  final double scrimProgress;
  final double titleProgress;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return IgnorePointer(
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (scrimProgress > 0)
            Opacity(
              opacity: scrimProgress,
              child: AppGradientMask(gradientColor: gradientColor),
            ),
          if (titleProgress > 0)
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: kToolbarHeight,
                child: Center(
                  child: Opacity(
                    opacity: titleProgress,
                    child: Transform.translate(
                      offset: Offset(0, (1 - titleProgress) * 8),
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: titleStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _FinanceHeaderDelegate oldDelegate) =>
      oldDelegate.height != height ||
      oldDelegate.title != title ||
      oldDelegate.titleStyle != titleStyle ||
      oldDelegate.gradientColor != gradientColor ||
      oldDelegate.scrimProgress != scrimProgress ||
      oldDelegate.titleProgress != titleProgress;
}
