part of 'museum_purchase_bloc.dart';

@freezed
abstract class MuseumPurchaseEvent with _$MuseumPurchaseEvent {
  factory MuseumPurchaseEvent.start({required String museumId}) =
      _MuseumPurchaseStartEvent;

  factory MuseumPurchaseEvent.changeQuantity({
    required String tariffId,
    required int quantity,
  }) = _MuseumPurchaseChangeQuantityEvent;

  factory MuseumPurchaseEvent.pay({required int cardId}) =
      _MuseumPurchasePayEvent;

  factory MuseumPurchaseEvent.confirm() = _MuseumPurchaseConfirmEvent;

  factory MuseumPurchaseEvent.pollOrder() = _MuseumPurchasePollOrderEvent;
}
