import 'cart_item.dart';
import 'checkout_price.dart';
import 'delivery_method.dart';
import 'market_address.dart';
import 'market_price_details.dart';

class Checkout {
  final DeliveryMethod? delivery;
  final MarketAddress? address;
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
    this.phone,
    this.priceDetails,
    this.freeCancellationUntil,
  });
}
