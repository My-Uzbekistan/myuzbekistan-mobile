import 'cart_item.dart';
import 'checkout_price.dart';
import 'delivery_method.dart';
import 'market_address.dart';
import 'market_pickup_point.dart';
import 'market_price_details.dart';
import 'market_region.dart';

class Checkout {
  final DeliveryMethod? delivery;
  final MarketAddress? address;
  final MarketPickupPoint? pickupPoint;
  final MarketRegion? region;
  final String? phone;
  final List<CartItem> items;
  final CheckoutPrice price;
  final MarketPriceDetails? priceDetails;
  final DateTime? freeCancellationUntil;

  Checkout({
    required this.items,
    required this.price,
    this.delivery,
    this.address,
    this.pickupPoint,
    this.region,
    this.phone,
    this.priceDetails,
    this.freeCancellationUntil,
  });
}
