import 'dart:math';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/orders/widgets/market_order_detail_fields.dart';
import 'package:market_home/src/presentation/orders/widgets/market_order_item_tile.dart';
import 'package:market_home/src/presentation/orders/widgets/market_order_price_summary.dart';
import 'package:market_home/src/presentation/orders/widgets/market_order_status_chip.dart';
import 'package:shared/shared.dart';

class MarketOrderCard extends StatelessWidget {
  const MarketOrderCard({
    super.key,
    required this.order,
    required this.isExpanded,
    required this.onToggleDetails,
    required this.onTap,
  });

  final MarketOrder order;
  final bool isExpanded;
  final VoidCallback onToggleDetails;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.appColors.background.elevation1,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            _header(context),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                for (final item in order.items)
                  MarketOrderItemTile(
                    key: ValueKey(item.productId),
                    item: item,
                  ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                _detailsToggle(context),
                if (isExpanded) ...[
                  MarketOrderDetailFields(order: order),
                  MarketOrderPriceSummary(price: order.price),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    final langCode = Localizations.localeOf(context).languageCode;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6,
      children: [
        MarketOrderStatusChip(order: order),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            Text(
              context.localization.market_order_number(order.orderNumber),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).labelMd(color: context.appColors.textIconColor.primary),
            Text(
              order.createdAt.toFormatDMMMY(langCode),
            ).bodySm(color: context.appColors.textIconColor.secondary),
          ],
        ),
      ],
    );
  }

  Widget _detailsToggle(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onToggleDetails,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 4,
        children: [
          Text(
            context.localization.market_order_details,
          ).bodyMd(color: context.appColors.brandSeaBlue),
          Transform.rotate(
            angle: isExpanded ? -pi / 2 : pi / 2,
            child: SizedBox.square(
              dimension: 20,
              child: Assets.svg.iconArrowRight.path.toSvgImage(
                fit: BoxFit.contain,
                tintColor: context.appColors.brandSeaBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
