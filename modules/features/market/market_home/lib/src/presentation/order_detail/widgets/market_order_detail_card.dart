import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/orders/widgets/market_order_detail_fields.dart';

class MarketOrderDetailCard extends StatelessWidget {
  const MarketOrderDetailCard({
    super.key,
    required this.order,
    required this.isExpanded,
    required this.onToggle,
  });

  final MarketOrder order;
  final bool isExpanded;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onToggle,
            child: Row(
              spacing: 8,
              children: [
                Expanded(
                  child: Text(
                    context.localization.market_order_details,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).labelLg(color: context.appColors.textIconColor.primary),
                ),
                AnimatedRotation(
                  turns: isExpanded ? 0.5 : 0,
                  duration: const Duration(milliseconds: 280),
                  curve: Curves.easeOutCubic,
                  child: SizedBox.square(
                    dimension: 20,
                    child: Center(
                      child: Assets.svg.iconChevronDown.path.toSvgImage(
                        width: 12,
                        fit: BoxFit.contain,
                        tintColor: context.appColors.textIconColor.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 320),
            curve: Curves.easeOutCubic,
            alignment: Alignment.topCenter,
            child: isExpanded
                ? Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: MarketOrderDetailFields(order: order),
                  )
                : const SizedBox(width: double.infinity),
          ),
        ],
      ),
    );
  }
}
