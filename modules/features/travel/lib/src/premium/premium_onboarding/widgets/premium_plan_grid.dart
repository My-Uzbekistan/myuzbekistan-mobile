import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/premium/premium_onboarding/widgets/premium_plan_card.dart';

class PremiumPlanGrid extends StatelessWidget {
  static const double _spacing = 8;
  static const double _horizontalPadding = 16;
  static const int _visibleCards = 2;

  final List<PremiumPlansModel> plans;
  final int? selectedId;
  final ValueChanged<PremiumPlansModel>? onSelect;

  const PremiumPlanGrid({
    super.key,
    required this.plans,
    this.selectedId,
    this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final cardWidth =
        (MediaQuery.sizeOf(context).width -
            _horizontalPadding * 2 -
            _spacing * (_visibleCards - 1)) /
        _visibleCards;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: IntrinsicHeight(
        child: Row(
          spacing: _spacing,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: plans
              .map(
                (plan) => SizedBox(
                  width: cardWidth,
                  child: PremiumPlanCard(
                    item: plan,
                    isSelected: selectedId != null && plan.id == selectedId,
                    onTap: () => onSelect?.call(plan),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
