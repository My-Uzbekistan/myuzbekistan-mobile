import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/premium/premium_cancel/bloc/premium_cancel_bloc.dart';
import 'package:travel/src/premium/premium_cancel/widgets/subscription_info_card.dart';
import '../premium_onboarding/widgets/premium_item_cell.dart';

class PremiumCancelScreen extends StatelessWidget {
  final PremiumStatusModel? status;

  const PremiumCancelScreen({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    final features = status?.features ?? const <PremiumFeatureModel>[];
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
                  children: features
                      .mapIndexed(
                        (index, feature) => PremiumItemCell(
                          iconUrl: feature.icon,
                          title: feature.title ?? "",
                          description: feature.description ?? "",
                        ),
                      )
                      .toList(),
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
