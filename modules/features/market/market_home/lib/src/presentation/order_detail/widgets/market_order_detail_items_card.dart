import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/orders/widgets/market_order_item_tile.dart';
import 'package:market_home/src/presentation/orders/widgets/market_order_price_summary.dart';

class MarketOrderDetailItemsCard extends StatelessWidget {
  const MarketOrderDetailItemsCard({super.key, required this.order});

  final MarketOrder order;

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
        spacing: 16,
        children: [
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: Text(
                  context.localization.market_order_items_title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).labelLg(color: context.appColors.textIconColor.primary),
              ),
              Text(
                context.localization.market_order_items_count(
                  order.items.length,
                ),
              ).bodySm(color: context.appColors.textIconColor.secondary),
            ],
          ),
          for (final item in order.items)
            MarketOrderItemTile(key: ValueKey(item.productId), item: item),
          MarketOrderPriceSummary(
            price: order.price,
            details: order.priceDetails,
          ),
        ],
      ),
    );
  }
}
