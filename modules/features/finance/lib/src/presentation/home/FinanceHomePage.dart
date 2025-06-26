import 'package:component_res/component_res.dart';
import 'package:finance/src/presentation/home/widgets/balance_widget.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../widgets/finance_category_header.dart';
import 'widgets/acoount_widget.dart';
import 'widgets/finance_avatar_widgets.dart';

class FinanceHomePage extends StatefulWidget {
  const FinanceHomePage({super.key});

  @override
  State<FinanceHomePage> createState() => _FinanceHomepageState();
}

class _FinanceHomepageState extends State<FinanceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.nonOpaque.brand,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ).copyWith(bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 32,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 2),
                        child: AccountWidget(),
                      ),
                      BalanceWidget(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FinanceAvatarWidgets(
                            text: "Qr-pay",
                            svgAssets: Assets.svgIconQrCode,
                          ),
                          FinanceAvatarWidgets(
                            text: "My cards",
                            svgAssets: Assets.svgIconFilledDoubleCardCard,
                            onTap: () {
                              context.finance.pushCardsPage();
                            },
                          ),
                          FinanceAvatarWidgets(
                            text: "History",
                            svgAssets: Assets.svgIconClock,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          width: double.maxFinite,

          decoration: BoxDecoration(
            color: context.appColors.background.background,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),

          child: Column(
            children: [
              CreditCard(data: CreditCardItem(amount: "amount")),

              AppActionButton(actionText: "Label",isLoading: true,),
              AppActionButton(
                actionText: "Label",
                isLoading: true,
                onPressed: () {},
                sizeType: ActionButtonSizeType.large,
              ),
            ],
          ),

          // ListView(
          //   padding: EdgeInsets.zero,
          //
          //   children: [
          //     FinanceMerchantsWithCategory()
          //
          //   ],
          // ),
        ),
      ),
    );
  }
}
