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

  factory CheckoutEvent.loadDeliveryMethods() =
      _CheckoutLoadDeliveryMethodsEvent;

  factory CheckoutEvent.selectDelivery({required DeliveryMethod delivery}) =
      _CheckoutSelectDeliveryEvent;

  factory CheckoutEvent.loadAddresses() = _CheckoutLoadAddressesEvent;

  factory CheckoutEvent.selectAddress({required MarketAddress address}) =
      _CheckoutSelectAddressEvent;

  factory CheckoutEvent.saveAddress({
    int? addressId,
    required String line,
    String? district,
  }) = _CheckoutSaveAddressEvent;

  factory CheckoutEvent.deleteAddress({required int addressId}) =
      _CheckoutDeleteAddressEvent;

  factory CheckoutEvent.changePhone({required String phone}) =
      _CheckoutChangePhoneEvent;

  factory CheckoutEvent.createOrder({required String paymentId}) =
      _CheckoutCreateOrderEvent;
}
