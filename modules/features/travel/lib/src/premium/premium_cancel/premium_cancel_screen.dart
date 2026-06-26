import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/premium/premium_cancel/bloc/premium_cancel_bloc.dart';
import 'package:travel/src/premium/premium_cancel/widgets/subscription_info_card.dart';

import '../premium_onboarding/premium_onboarding.dart';

class PremiumCancelScreen extends StatelessWidget {
  final PremiumStatusModel? status;

  const PremiumCancelScreen({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                spacing: 6,
                children: [
                  Flexible(child: Text("MyUzbekistan").h1()),
                  Assets.png.iconPremiumText.image(height: 24),
                ],
              ),

              SubscriptionInfoCard(status: status),

              Padding(
                padding: EdgeInsets.only(top: 6),
                child: Column(
                  spacing: 12,
                  children: [
                    PremiumItemCell(
                      asset: Assets.png.premiumCellIconInfinityLine,
                      title: context.localization.premiumFeatureAiTitle,
                      description: context.localization.premiumFeatureAiDesc,
                    ),
                    PremiumItemCell(
                      asset: Assets.png.premiumCellIconCpuFill,
                      title: context.localization.premiumFeatureEsimTitle,
                      description: context.localization.premiumFeatureEsimDesc,
                    ),
                    PremiumItemCell(
                      asset: Assets.png.premiumCellIconDiscountPercentFill,
                      title: context.localization.premiumFeatureDiscountTitle,
                      description:
                          context.localization.premiumFeatureDiscountDesc,
                    ),
                    PremiumItemCell(
                      asset: Assets.png.premiumCellIconImageCircleAiLine,
                      title: context.localization.premiumFeatureProfileTitle,
                      description:
                          context.localization.premiumFeatureProfileDesc,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).padding.bottom + 8,
          left: 16,
          right: 16,
        ),
        child: BlocConsumer<PremiumCancelBloc, PremiumCancelState>(
          listenWhen: (prev, curr) => prev.isCancelled != curr.isCancelled,
          listener: (context, state) {
            if (state.isCancelled) {
              context.pop();
            }
          },
          builder: (context, state) {
            return AppActionButton(
              actionText: context.localization.premiumCancelSubscription,
              isLoading: state.isCancelling,
              onPressed: () {
                context.read<PremiumCancelBloc>().add(
                  PremiumCancelEvent.cancel(),
                );
              },
              containerColor: context.appColors.fill.tertiary,
              contentColor: context.appColors.colors.red,
            );
          },
        ),
      ),
    );
  }
}
