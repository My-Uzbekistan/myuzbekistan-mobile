import 'market_order_status.dart';

enum MarketOrderGroup {
  active,
  purchased,
  returned;

  bool contains(MarketOrderStatus status) => switch (this) {
    MarketOrderGroup.active => const {
      MarketOrderStatus.draft,
      MarketOrderStatus.awaitingPayment,
      MarketOrderStatus.paid,
      MarketOrderStatus.preparing,
      MarketOrderStatus.ready,
      MarketOrderStatus.delivering,
    }.contains(status),
    MarketOrderGroup.purchased => status == MarketOrderStatus.delivered,
    MarketOrderGroup.returned => const {
      MarketOrderStatus.cancelled,
      MarketOrderStatus.refunded,
    }.contains(status),
  };
}
