part of 'checkout_bloc.dart';

@freezed
abstract class CheckoutState with _$CheckoutState {
  factory CheckoutState({
    DeliveryMethod? delivery,
    MarketAddress? address,
    String? phone,
    @Default([]) List<CartItem> items,
    @Default([]) List<DeliveryMethod> deliveryMethods,
    @Default([]) List<MarketAddress> addresses,
    CheckoutPrice? price,
    MarketPriceDetails? priceDetails,
    DateTime? freeCancellationUntil,
    String? paymentId,
    @Default(false) bool isLoading,
    @Default(false) bool isDeliveryMethodsLoading,
    @Default(false) bool isAddressesLoading,
    @Default(false) bool isOrdering,
    @Default(false) bool isOrderCreated,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _CheckoutState;

  const CheckoutState._();

  bool get isEmpty => items.isEmpty;

  bool get hasPhone => (phone ?? "").isNotEmpty;

  int get total => price?.total ?? 0;

  bool get canOrder => delivery != null && hasPhone && items.isNotEmpty;
}
