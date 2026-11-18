part of 'checkout_bloc.dart';

@freezed
abstract class CheckoutEvent with _$CheckoutEvent {
  factory CheckoutEvent.loadData() = _CheckoutLoadDataEvent;

  factory CheckoutEvent.changeQuantity({
    required CartItem item,
    required int quantity,
  }) = _CheckoutChangeQuantityEvent;

  factory CheckoutEvent.removeItem({required CartItem item}) =
      _CheckoutRemoveItemEvent;

  factory CheckoutEvent.reloadItems() = _CheckoutReloadItemsEvent;

  factory CheckoutEvent.selectDelivery({required DeliveryMethod delivery}) =
      _CheckoutSelectDeliveryEvent;

  factory CheckoutEvent.loadPickupPoints() = _CheckoutLoadPickupPointsEvent;

  factory CheckoutEvent.selectPickupPoint({required MarketPickupPoint point}) =
      _CheckoutSelectPickupPointEvent;

  factory CheckoutEvent.loadAddresses() = _CheckoutLoadAddressesEvent;

  factory CheckoutEvent.selectAddress({required MarketAddress address}) =
      _CheckoutSelectAddressEvent;

  factory CheckoutEvent.changePhone({required String phone}) =
      _CheckoutChangePhoneEvent;

  factory CheckoutEvent.createOrder({required String paymentId}) =
      _CheckoutCreateOrderEvent;
}
