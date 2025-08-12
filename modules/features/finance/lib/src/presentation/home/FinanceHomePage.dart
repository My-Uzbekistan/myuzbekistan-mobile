import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:finance/src/presentation/home/widgets/balance_widget.dart';
import 'package:finance/src/presentation/home/widgets/currency_calculator/currency_calculator_widget.dart';
import 'package:finance/src/presentation/home/widgets/currency_widget.dart';
import 'package:finance/src/presentation/widgets/finance_merchants_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../widgets/finance_category_header.dart';
import 'bloc/finance_bloc.dart';
import 'widgets/acoount_widget.dart';
import 'widgets/finance_avatar_widgets.dart';

class FinanceHomePage extends StatefulWidget {
  const FinanceHomePage({super.key});

  @override
  State<FinanceHomePage> createState() => _FinanceHomepageState();
}

class _FinanceHomepageState extends State<FinanceHomePage>
    with AutomaticKeepAliveClientMixin {
  FinanceBloc? financeBloc;

  @override
  void initState() {
    super.initState();
    financeBloc = context.read();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: CupertinoTheme(
        data: CupertinoThemeData(
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
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                CupertinoSliverNavigationBar(
                  largeTitle: Text("Finance"),
                  border: null,
                  stretch: true,
                  backgroundColor: context.appColors.background.underlayer,
                  trailing: Row(mainAxisSize: MainAxisSize.min),
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
                                      context.pushQrCoderReaderPage();
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
                                    onTap: (){
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
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: context.appColors.background.base,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Builder(
                          builder: (context) {
                            if (state is FinanceDataState) {
                              final usdCurrency = state.currencies
                                  .firstOrNullWhere((e) => e.isUsd);
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CurrencyWidget(currencies: state.currencies,onTap: (){
                                    context.more.pushCurrencies(state.currencies);
                                  },),
                                  if (usdCurrency != null)
                                    CurrencyCalculatorWidget(
                                      currentExchangeRate:
                                          usdCurrency.rateToDouble(),
                                    ),
                                  FinanceMerchantsWithCategory(
                                    title: context.localization.nearest_places,
                                    onItemTap: (index) {
                                      context.finance.pushMerchantPage(
                                        id:
                                            state.merchants[index].id
                                                .toString(),
                                      );
                                    },
                                    items:
                                        state.merchants
                                            .map(
                                              (e) => MerchantWidgetModel(
                                                name: e.name.orEmpty(),
                                                caption: e.description,
                                                distance:
                                                    e.distance?.toString(),
                                                imageUrl: e.logo?.orEmpty(),
                                              ),
                                            )
                                            .toList(),
                                  ),
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
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
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
