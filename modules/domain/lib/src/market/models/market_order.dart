import 'market_order_delivery_type.dart';
import 'market_order_item.dart';
import 'market_order_payment.dart';
import 'market_order_price.dart';
import 'market_order_status.dart';
import 'market_order_step.dart';
import 'market_order_step_state.dart';
import 'market_price_details.dart';

class MarketOrder {
  final int id;
  final String orderNumber;
  final MarketOrderStatus status;
  final DateTime? createdAt;
  final MarketOrderPrice price;
  final MarketPriceDetails? priceDetails;
  final MarketOrderDeliveryType? deliveryType;
  final String deliveryTitle;
  final String addressLine;
  final String addressDistrict;
  final String recipientPhone;
  final bool canCancel;
  final List<MarketOrderStep> steps;
  final MarketOrderPayment? payment;
  final List<MarketOrderItem> items;

  MarketOrder({
    required this.id,
    required this.orderNumber,
    required this.status,
    required this.createdAt,
    required this.price,
    required this.priceDetails,
    required this.deliveryType,
    required this.deliveryTitle,
    required this.addressLine,
    required this.addressDistrict,
    required this.recipientPhone,
    required this.canCancel,
    required this.steps,
    required this.payment,
    required this.items,
  });

  String? get currentStepTitle => steps
      .where((e) => e.state == MarketOrderStepState.current)
      .map((e) => e.title)
      .firstOrNull;

  String get fullAddress => [
    addressLine,
    addressDistrict,
  ].where((e) => e.isNotEmpty).join(" ");
}
