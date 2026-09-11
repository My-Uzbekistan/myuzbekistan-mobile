part of 'checkout_bloc.dart';

@freezed
abstract class CheckoutState with _$CheckoutState {
  factory CheckoutState({
    DeliveryMethod? delivery,
    MarketAddress? address,
    MarketRegion? region,
    MarketPickupPoint? pickupPoint,
    String? phone,
    @Default([]) List<CartItem> items,
    @Default([]) List<DeliveryMethod> deliveryMethods,
    @Default([]) List<MarketAddress> addresses,
    @Default([]) List<MarketPickupPoint> pickupPoints,
    CheckoutPrice? price,
    MarketPriceDetails? priceDetails,
    DateTime? freeCancellationUntil,
    String? paymentId,
    @Default(false) bool isLoading,
    @Default(false) bool isAddressesLoading,
    @Default(false) bool isPickupPointsLoading,
    @Default(false) bool isOrdering,
    @Default(false) bool isOrderCreated,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _CheckoutState;

  const CheckoutState._();

  bool get isEmpty => items.isEmpty;

  bool get hasPhone => phoneDigits.isNotEmpty;

  String get phoneDigits {
    final digits = (phone ?? "").replaceAll(RegExp(r"\D"), "");
    return digits.isEmpty ? "" : "998${digits.takeLast(9)}";
  }

  bool get isPickup => delivery?.type == DeliveryType.pickup;

  String? get addressLine =>
      isPickup
          ? (pickupPoint?.fullLine ?? delivery?.subtitle)
          : address?.fullLine;

  int get total => price?.total ?? 0;

  bool get isDeliveryUnavailable => delivery == null && deliveryMethods.isEmpty;

  bool get hasMappedAddress => region != null;

  bool get canOrder => delivery != null && hasPhone && items.isNotEmpty;
}
