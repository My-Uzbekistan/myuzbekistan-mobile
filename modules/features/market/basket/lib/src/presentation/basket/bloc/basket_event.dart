part of 'basket_bloc.dart';

@freezed
abstract class BasketEvent with _$BasketEvent {
  factory BasketEvent.loadData() = _BasketLoadDataEvent;

  factory BasketEvent.changeQuantity({
    required CartItem item,
    required int quantity,
  }) = _BasketChangeQuantityEvent;

  factory BasketEvent.toggleItem({required CartItem item}) =
      _BasketToggleItemEvent;

  factory BasketEvent.toggleSeller({required CartSeller seller}) =
      _BasketToggleSellerEvent;

  factory BasketEvent.toggleAll() = _BasketToggleAllEvent;

  factory BasketEvent.removeItem({required CartItem item}) =
      _BasketRemoveItemEvent;

  factory BasketEvent.removeSelected() = _BasketRemoveSelectedEvent;
}
