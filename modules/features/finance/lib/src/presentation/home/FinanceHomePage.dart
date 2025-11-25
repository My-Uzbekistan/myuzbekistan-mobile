import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:finance/src/presentation/home/widgets/currency_calculator/currency_calculator_widget.dart';
import 'package:finance/src/presentation/home/widgets/currency_widget.dart';
import 'package:finance/src/presentation/widgets/finance_merchants_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import '../widgets/finance_category_header.dart';
import 'bloc/finance_bloc.dart';
import 'widgets/finance_avatar_widgets.dart';

class FinanceHomePage extends StatefulWidget {
  const FinanceHomePage({super.key});

  @override
  State<FinanceHomePage> createState() => _FinanceHomepageState();
}

class _FinanceHomepageState extends State<FinanceHomePage> {
  FinanceBloc? financeBloc;

  @override
  void initState() {
    super.initState();
    financeBloc = context.read();
  }

  @override
  Widget build(BuildContext context) {
    final paddingBottom = MediaQuery.of(context).padding.bottom + 16;

    return Scaffold(
      extendBody: true,
      body: CupertinoTheme(
        data: CupertinoThemeData(
          brightness: Brightness.light,
          textTheme: CupertinoTextThemeData(
            navLargeTitleTextStyle: CustomTypography.H1.copyWith(
              color: context.appColors.textIconColor.primary,
            ),
            navTitleTextStyle: CustomTypography.labelLg.copyWith(
              color: context.appColors.textIconColor.primary,
            ),
          ),
        ),
        child: BlocBuilder<FinanceBloc, FinanceState>(
          builder: (context, state) {
            return CustomScrollView(
              physics: BouncingScrollPhysics(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                SliverStack(
                  children: [
                    SliverPositioned.fill(
                      child: Container(
                        color: context.appColors.background.underlayer,
                      ),
                    ),
                    SliverPersistentHeader(
                      delegate: BlurHeaderDelegate(
                        kToolbarHeight + MediaQuery.of(context).padding.top,
                      ),
                      pinned: true,
                    ),
                    CupertinoSliverNavigationBar(
                      largeTitle: Text(context.localization.finance_title),
                      border: null,
                      stretch: true,
                      brightness: context.brightness,
                      backgroundColor: Colors.transparent,
                      enableBackgroundFilterBlur: false,
                      trailing: Row(mainAxisSize: MainAxisSize.min),
                    ),
                  ],
                ),
                SliverList.list(
                  children: [
                    Container(
                      color: context.appColors.background.underlayer,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ).copyWith(bottom: 40, top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 16,
                          children: [
                            Row(
                              spacing: 16,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: FinanceTopCardItemWidget(
                                    text: context.localization.payment_qr_title,
                                    svgAssets: Assets.svgIconQrCode,
                                    onTap: () {
                                      context.finance.pushQrCoderReaderPage();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: FinanceTopCardItemWidget(
                                    text: context.localization.my_cards_title,
                                    svgAssets:
                                        Assets.svgIconFilledDoubleCardCard,
                                    onTap: () {
                                      context.pushCardsPage();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: FinanceTopCardItemWidget(
                                    text:
                                        context
                                            .localization
                                            .payment_history_title,
                                    svgAssets: Assets.svgIconClock,
                                    onTap: () {
                                      context.pushPaymentHistoryPage();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -24),
                      child: Container(
                        width: double.maxFinite,
                        constraints: BoxConstraints(minHeight: 100),
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                        ).copyWith(bottom: 40),
                        decoration: BoxDecoration(
                          color: context.appColors.background.base,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Builder(
                          builder: (context) {
                            if (state is FinanceDataState) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (state.currencies.isNotEmpty)
                                  CurrencyWidget(
                                    currencies: state.currencies,
                                    onTap: () {
                                      context.pushCurrenciesPage(
                                        state.currencies,
                                      );
                                    },
                                  ),
                                  if (state.currencies.isNotEmpty)
                                    CurrencyCalculatorWidget(
                                      currencies: state.currencies,
                                    ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    spacing: 16,
                                    children: [
                                      FinanceMerchantsWithCategory(
                                        title: context.localization.nearest_places,
                                        onItemTap: (index) {
                                          context.finance.pushMerchantPage(
                                            id:
                                            state.merchants[index].id
                                                .toString(),
                                          );
                                        },
                                        openAll: () {},
                                        items:
                                        state.merchants
                                            .map(
                                              (e) => MerchantWidgetModel(
                                            name: e.name.orEmpty(),
                                            caption: e.description,
                                            distance:
                                            e.distanceString.toString(),
                                            imageUrl: e.logo?.orEmpty(),
                                          ),
                                        )
                                            .toList(),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 8),
                                        child: AppActionButton(
                                          actionText: context.localization.all_places,
                                          type: ActionButtonType.secondary,
                                          onPressed: (){

                                            context.pushMerchantsPage(  state.merchants);
                                          },
                                        ),
                                      ),
                                    ],
                                  )

                                ],
                              );
                            }

                            return _Loading();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SliverToBoxAdapter(child: SizedBox(height: paddingBottom)),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerDefaultContainer(height: 96),
                SizedBox(height: 24),
                ShimmerDefaultContainer(height: 24, width: 200),
                SizedBox(height: 8),
                ShimmerDefaultContainer(height: 120, width: double.maxFinite),
                SizedBox(height: 24),
                ShimmerDefaultContainer(height: 24, width: 200),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: SizedBox(
              height: 156,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(width: 16);
                },
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ShimmerDefaultContainer(
                    width: 128,
                    height: double.maxFinite,
                  );
                },
                itemCount: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

