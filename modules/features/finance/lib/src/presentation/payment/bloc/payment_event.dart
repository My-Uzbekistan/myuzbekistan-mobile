part  of 'payment_bloc.dart';


@freezed
abstract class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.pay() = _PaymentPayEvent;
  const factory PaymentEvent.updateCards() = _PaymentPayUpdateCardsEvent;
  const factory PaymentEvent.loadCards() = _PaymentPayLoadCardsEvent;
  const factory PaymentEvent.checkPayDetail() = _CheckPayDetailEvent;
  const factory PaymentEvent.setMerchant(Merchant merchant) = _PaymentSetMerchantEvent;
  const factory PaymentEvent.selectedCard(CardItem  item) = _PaymentSelecteCardEvent;
  const factory PaymentEvent.loadMerchantById ({required String merchantId,String? orderId,MarketCheckoutPayment? orderPayment,}) = _PaymentMerchantEvent;
  const factory PaymentEvent.loadOrderDetails() = _PaymentOrderDetailsEvent;
  const factory PaymentEvent.setAmount ({required String amount}) = _PaymentSetAmountEvent;
}
