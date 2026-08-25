import 'checkout_price.dart';
import 'market_price_details.dart';

class MarketCheckoutPayment {
  final int deliveryMethodId;
  final String recipientPhone;
  final int? addressId;
  final CheckoutPrice price;
  final MarketPriceDetails? priceDetails;
  final DateTime? freeCancellationUntil;

  MarketCheckoutPayment({
    required this.deliveryMethodId,
    required this.recipientPhone,
    required this.price,
    this.addressId,
    this.priceDetails,
    this.freeCancellationUntil,
  });
}
