import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';

class MarketOrderStatusChip extends StatelessWidget {
  const MarketOrderStatusChip({super.key, required this.order});

  final MarketOrder order;

  @override
  Widget build(BuildContext context) {
    final isReturned = MarketOrderGroup.returned.contains(order.status);
    final title =
        order.currentStepTitle ??
        context.localization.market_order_status(order.status.name);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: isReturned
            ? context.appColors.nonOpaque.red
            : context.appColors.fill.tertiary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis).labelSm(
        color: isReturned
            ? context.appColors.colors.red
            : context.appColors.textIconColor.secondary,
      ),
    );
  }
}
