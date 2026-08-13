import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/premium/premium_onboarding/widgets/premium_plan_grid.dart';
import 'package:travel/src/premium/premium_onboarding/widgets/premium_terms_text.dart';

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
            child: PremiumPlanGrid(
              plans: plans,
              selectedId: selectedId,
              onSelect: onSelect,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
            child: AppActionButton(
              actionText: context.localization.premiumConnect,
              onPressed: onSubscribe,
              disable: selectedId == null,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: PremiumTermsText(),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
        ],
      ),
    );
  }
}
