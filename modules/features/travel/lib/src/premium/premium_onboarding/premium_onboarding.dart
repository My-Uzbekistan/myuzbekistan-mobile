import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/premium/premium_onboarding/bloc/premium_bloc.dart';
import 'package:travel/src/premium/premium_onboarding/widgets/premium_plan_sheet.dart';
import 'package:travel/src/premium/widgets/premium_alert_dialog.dart';
import 'package:travel/src/premium/widgets/premium_sky_background.dart';

class PremiumOnboardingPage extends HookWidget {
  static const _merchantId = "50";
  static const _contentTopSpacing = 72.0;
  static const _contentBottomSpacing = 24.0;

  const PremiumOnboardingPage({super.key});

  Future<void> _subscribe(BuildContext context, PremiumState state) async {
    final completer = Completer<bool>();
    context.finance.pushMerchantPage(
      id: _merchantId,
      orderId: state.item?.id.toString(),
      extra: completer,
      amount: ((state.item?.price ?? 0) / 100).toInt().toString(),
    );
    final result = await completer.future;
    if (!result) return;

    GlobalHandler().refreshListener?.call();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final rootContext = appRootNavigatorKey.currentContext;
        if (rootContext != null) {
          PremiumAlertDialog.showSuccess(rootContext);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    return BlocConsumer<PremiumBloc, PremiumState>(
      listenWhen: (prev, curr) => prev.status != curr.status,
      listener: (context, state) {
        final status = state.status;
        if (status != null && status.isPremium) {
          context.travel.replaceWithPremiumCancel(status: status);
        }
      },
      builder: (context, state) {
        final features = state.item?.features ?? const [];
        final topInset = MediaQuery.of(context).padding.top;

        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              const PremiumSkyBackground(),
              Column(
                children: [
                  Expanded(
                    child: RawScrollbar(
                      controller: scrollController,
                      thumbVisibility: true,
                      thumbColor: context.appColors.static.white,
                      thickness: 3,
                      radius: const Radius.circular(999),
                      padding: EdgeInsets.only(
                        top: topInset + _contentTopSpacing,
                        bottom: _contentBottomSpacing,
                        right: 4,
                      ),
                      child: SingleChildScrollView(
                        controller: scrollController,
                        padding: EdgeInsets.only(
                          top: topInset + _contentTopSpacing,
                          bottom: _contentBottomSpacing,
                        ),
                        child: Column(
                          spacing: 24,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Column(
                                spacing: 10,
                                children: [
                                  Text(
                                    context.localization.premiumOnboardingTitle,
                                    textAlign: TextAlign.center,
                                  ).h1(color: context.appColors.static.white),
                                  Text(
                                    context
                                        .localization
                                        .premiumOnboardingSubtitle,
                                    textAlign: TextAlign.center,
                                  ).bodyMd(
                                    color: context.appColors.static.black
                                        .withValues(alpha: 0.4),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: AdaptiveGlass(
                                borderRadius: 20,
                                blur: 8.7,
                                tint: context.appColors.service.glass,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      for (final feature in features)
                                        _benefitRow(
                                          context,
                                          feature.title ?? "",
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  PremiumPlanSheet(
                    plans: state.plans,
                    selectedId: state.item?.id,
                    onSelect: (plan) => context.read<PremiumBloc>().add(
                      PremiumEvent.selectPlan(item: plan),
                    ),
                    onSubscribe: () => _subscribe(context, state),
                  ),
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 8,
                right: 16,
                child: RoundedButton.closeButton(
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _benefitRow(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        spacing: 8,
        children: [
          Assets.svg.premiumFeatureCheck.svg(width: 24, height: 24),
          Flexible(
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ).labelLg(color: context.appColors.static.white),
          ),
        ],
      ),
    );
  }
}
