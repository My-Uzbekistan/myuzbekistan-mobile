import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/premium/premium_cancel/bloc/premium_cancel_bloc.dart';
import 'package:travel/src/premium/premium_cancel/widgets/premium_features_card.dart';
import 'package:travel/src/premium/premium_cancel/widgets/subscription_info_card.dart';
import 'package:travel/src/premium/widgets/premium_sky_background.dart';

class PremiumCancelScreen extends StatelessWidget {
  final PremiumStatusModel? status;

  const PremiumCancelScreen({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: Stack(
        fit: StackFit.expand,
        children: [
          const PremiumSkyBackground(fadeOut: true),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: topPadding + 72, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    context.localization.premiumStatusTitle,
                  ).h1(color: context.appColors.static.white),
                ),
                SubscriptionInfoCard(status: status),
                PremiumFeaturesCard(
                  features: status?.features ?? const <PremiumFeatureModel>[],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: topPadding,
              child: const AppGradientMask(),
            ),
          ),
          Positioned(
            top: topPadding + 2,
            left: 16,
            child: RoundedButton.arrowLeft(
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).padding.bottom.clamp(16, 34),
          left: 16,
          right: 16,
        ),
        child: BlocConsumer<PremiumCancelBloc, PremiumCancelState>(
          listenWhen: (prev, curr) => prev.isCancelled != curr.isCancelled,
          listener: (context, state) {
            if (state.isCancelled) {
              GlobalHandler().refreshListener?.call();
            }
          },
          builder: (context, state) {
            return AppActionButton(
              actionText: context.localization.premiumCancelSubscription,
              isLoading: state.isCancelling,
              onPressed: () {
                showActionAlertDialog(
                  context,
                  title: context.localization.premiumCancelConfirmTitle,
                  message: context.localization.premiumCancelConfirmMessage,
                  firstActionText:
                      context.localization.premiumCancelConfirmAction,
                  firstButtonTextColor: context.appColors.colors.red,
                  secondActionText: context.localization.premiumCancelDismiss,
                  onFirstButtonClick: () {
                    context.read<PremiumCancelBloc>().add(
                      PremiumCancelEvent.cancel(),
                    );
                  },
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
