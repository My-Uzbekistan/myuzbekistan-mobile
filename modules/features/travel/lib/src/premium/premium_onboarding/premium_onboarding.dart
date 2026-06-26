import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/premium/premium_onboarding/bloc/premium_bloc.dart';
import 'package:travel/src/premium/widgets/premium_access_dialogs.dart';

import 'widgets/discount_item.dart';

class PremiumOnboardingPage extends StatefulWidget {
  const PremiumOnboardingPage({super.key});

  @override
  State<PremiumOnboardingPage> createState() => _PremiumOnboardingPageState();
}

class _PremiumOnboardingPageState extends State<PremiumOnboardingPage> {
  PremiumBloc? bloc;
  static const merchantId = "50";

  @override
  void initState() {
    super.initState();
    bloc = context.read();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PremiumBloc, PremiumState>(
      builder: (context, state) {
        return Scaffold(
          appBar: GradientAppBar(),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 8,
              left: 16,
              right: 16,
            ),
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 16,
              children: [
                AppActionButton(
                  actionText: context.localization.premiumConnect,
                  onPressed: () async {
                    final completer = Completer<bool>();
                    context.finance.pushMerchantPage(
                      id: merchantId,
                      orderId: state.item?.id.toString(),
                      extra: completer,
                      amount:
                          ((state.item?.price ?? 0) / 100).toInt().toString(),
                    );
                    final result = await completer.future;
                    if (result) {
                      context.travel.goMain();
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        final rootContext = appRootNavigatorKey.currentContext;
                        if (rootContext != null) {
                          PremiumSuccessDialog.show(rootContext);
                        }
                      });
                    }
                  },
                  disable: state.item == null,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: context.localization.premiumCancelAnytime,
                        style: CustomTypography.bodyXsm.copyWith(
                          color: context.appColors.textIconColor.secondary,
                        ),
                      ),
                      TextSpan(
                        text: "\n${context.localization.premiumTerms}",
                        style: CustomTypography.bodyXsm.copyWith(
                          decoration: TextDecoration.underline,
                          color: context.appColors.textIconColor.secondary,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.png.iconPremium.image(height: 80),
                  Row(
                    spacing: 6,
                    children: [
                      Flexible(child: Text("MyUzbekistan").h1()),
                      Assets.png.iconPremiumText.image(height: 24),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Column(
                      spacing: 12,
                      children: [
                        PremiumItemCell(
                          asset: Assets.png.premiumCellIconInfinityLine,
                          title: context.localization.premiumFeatureAiTitle,
                          description:
                              context.localization.premiumFeatureAiDesc,
                        ),
                        PremiumItemCell(
                          asset: Assets.png.premiumCellIconCpuFill,
                          title: context.localization.premiumFeatureEsimTitle,
                          description:
                              context.localization.premiumFeatureEsimDesc,
                        ),
                        PremiumItemCell(
                          asset: Assets.png.premiumCellIconDiscountPercentFill,
                          title:
                              context.localization.premiumFeatureDiscountTitle,
                          description:
                              context.localization.premiumFeatureDiscountDesc,
                        ),
                        PremiumItemCell(
                          asset: Assets.png.premiumCellIconImageCircleAiLine,
                          title:
                              context.localization.premiumFeatureProfileTitle,
                          description:
                              context.localization.premiumFeatureProfileDesc,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    padding: const EdgeInsets.only(top: 36),
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    child: Row(
                      children:
                          state.plans
                              .mapIndexed(
                                (index, data) => DiscountItem(
                                  isSelect: state.item?.id == data.id,
                                  item: data,
                                  onTap:
                                      () => bloc?.add(
                                        PremiumEvent.selectPlan(item: data),
                                      ),
                                ),
                              )
                              .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class PremiumItemCell extends StatelessWidget {
  final AssetGenImage asset;
  final String title;
  final String description;

  const PremiumItemCell({
    super.key,
    required this.asset,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        asset.image(height: 32),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(title).labelLg(),
              Text(
                description,
              ).bodyMd(color: context.appColors.textIconColor.secondary),
            ],
          ),
        ),
      ],
    );
  }
}
