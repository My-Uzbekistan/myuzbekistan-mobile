import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/premium/premium_onboarding/widgets/premium_plan_card.dart';

class PremiumPlanSheet extends StatelessWidget {
  final List<PremiumPlansModel> plans;
  final int? selectedId;
  final ValueChanged<PremiumPlansModel>? onSelect;
  final VoidCallback? onSubscribe;

  const PremiumPlanSheet({
    super.key,
    required this.plans,
    this.selectedId,
    this.onSelect,
    this.onSubscribe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.appColors.background.base,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        boxShadow: [
          BoxShadow(
            color: context.appColors.static.white.withValues(alpha: 0.94),
            offset: const Offset(0, -26),
            blurRadius: 34,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: _planGrid(context),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
            child: AppActionButton(
              actionText: context.localization.premiumConnect,
              onPressed: onSubscribe,
              disable: selectedId == null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _terms(context),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
        ],
      ),
    );
  }

  Widget _planGrid(BuildContext context) {
    final cardWidth = (MediaQuery.sizeOf(context).width - 40) / 2;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: IntrinsicHeight(
        child: Row(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (final plan in plans)
              SizedBox(
                width: cardWidth,
                child: PremiumPlanCard(
                  item: plan,
                  isSelected: selectedId != null && plan.id == selectedId,
                  onTap: () => onSelect?.call(plan),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _terms(BuildContext context) {
    final style = CustomTypography.bodyXsm.copyWith(
      color: context.appColors.textIconColor.secondary,
    );

    return Column(
      spacing: 6,
      children: [
        Text(
          context.localization.premiumCancelAnytime,
          style: style,
          textAlign: TextAlign.center,
        ),
        Text(
          context.localization.premiumTerms,
          style: style.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: context.appColors.textIconColor.secondary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
