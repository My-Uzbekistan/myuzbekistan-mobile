import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/home/widgets/finance_home_body.dart';
import 'package:finance/src/presentation/home/widgets/finance_home_shimmer.dart';
import 'package:finance/src/presentation/home/widgets/hero/finance_hero_actions.dart';
import 'package:finance/src/presentation/home/widgets/hero/finance_hero_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'bloc/finance_bloc.dart';

class FinanceHomePage extends HookWidget {
  const FinanceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.of(context).padding.top;
    final bottomInset = MediaQuery.of(context).padding.bottom + 16;

    return Scaffold(
      extendBody: true,
      backgroundColor: context.appColors.background.underlayer,
      body: CupertinoTheme(
        data: CupertinoThemeData(
          brightness: Brightness.dark,
          textTheme: CupertinoTextThemeData(
            navLargeTitleTextStyle: CustomTypography.H1.copyWith(
              color: context.appColors.static.white,
            ),
            navTitleTextStyle: CustomTypography.labelLg.copyWith(
              color: context.appColors.static.white,
            ),
          ),
        ),
        child: BlocBuilder<FinanceBloc, FinanceState>(
          builder: (context, state) {
            return CustomScrollView(
              physics: const BouncingScrollPhysics(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                SliverStack(
                  children: [
                    const SliverPositioned.fill(
                      child: FinanceHeroBackground(),
                    ),
                    MultiSliver(
                      children: [
                        SliverStack(
                          children: [
                            SliverPersistentHeader(
                              delegate: BlurHeaderDelegate(
                                kToolbarHeight + topInset,
                                gradientColor: financeHeroBackgroundColor,
                              ),
                              pinned: true,
                            ),
                            CupertinoSliverNavigationBar(
                              largeTitle: Text(
                                context.localization.finance_title,
                              ),
                              border: null,
                              stretch: true,
                              brightness: Brightness.dark,
                              backgroundColor: Colors.transparent,
                              enableBackgroundFilterBlur: false,
                              trailing: const Row(
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                          ],
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
                  ],
                ),
                SliverToBoxAdapter(child: SizedBox(height: bottomInset)),
              ],
            );
          },
        ),
      ),
    );
  }
}
