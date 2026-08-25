import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

@injectable
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final MarketRepository _repository;

  CheckoutBloc(this._repository) : super(CheckoutState()) {
    on<_CheckoutLoadDataEvent>(_loadData);
    on<_CheckoutChangeQuantityEvent>(_changeQuantity);
    on<_CheckoutRemoveItemEvent>(_removeItem);
    on<_CheckoutReloadItemsEvent>(_reloadItems);
    on<_CheckoutLoadDeliveryMethodsEvent>(_loadDeliveryMethods);
    on<_CheckoutSelectDeliveryEvent>(_selectDelivery);
    on<_CheckoutLoadAddressesEvent>(_loadAddresses);
    on<_CheckoutSelectAddressEvent>(_selectAddress);
    on<_CheckoutSaveAddressEvent>(_saveAddress);
    on<_CheckoutDeleteAddressEvent>(_deleteAddress);
    on<_CheckoutChangePhoneEvent>(_changePhone);
    on<_CheckoutCreateOrderEvent>(_createOrder);
  }

  Future<void> _loadData(
    _CheckoutLoadDataEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final checkout = await _repository.checkout();
      emit(
        state.copyWith(
          delivery: checkout.delivery,
          address: checkout.address,
          phone: checkout.phone,
          items: checkout.items,
          price: checkout.price,
          priceDetails: checkout.priceDetails,
          freeCancellationUntil: checkout.freeCancellationUntil,
          loadFailed: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _changeQuantity(
    _CheckoutChangeQuantityEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    final item = event.item;
    final quantity = event.quantity;
    if (quantity <= 0) {
      await _remove(emit, item);
      return;
    }
    if (quantity > item.available) return;

    final previous = state.items;
    emit(
      _recalculated(
        previous
            .map(
              (it) => it.productId == item.productId
                  ? it.copyWith(quantity: quantity)
                  : it,
            )
            .toList(),
      ),
    );
    try {
      await _repository.changeCartQuantity(
        productId: item.productId,
        quantity: quantity,
      );
    } catch (e) {
      emit(_recalculated(previous).copyWith(errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _removeItem(
    _CheckoutRemoveItemEvent event,
    Emitter<CheckoutState> emit,
  ) {
    return _remove(emit, event.item);
  }

  Future<void> _reloadItems(
    _CheckoutReloadItemsEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    try {
      final checkout = await _repository.checkout();
      emit(_recalculated(checkout.items));
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _remove(Emitter<CheckoutState> emit, CartItem item) async {
    final previous = state.items;
    emit(
      _recalculated(
        previous.where((it) => it.productId != item.productId).toList(),
      ),
    );
    try {
      await _repository.removeCartItem(productId: item.productId);
    } catch (e) {
      emit(_recalculated(previous).copyWith(errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _loadDeliveryMethods(
    _CheckoutLoadDeliveryMethodsEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(isDeliveryMethodsLoading: true, errorMessage: null));
    try {
      final methods = await _repository.deliveryMethods();
      emit(state.copyWith(deliveryMethods: methods));
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isDeliveryMethodsLoading: false));
  }

  void _selectDelivery(
    _CheckoutSelectDeliveryEvent event,
    Emitter<CheckoutState> emit,
  ) {
    emit(
      _recalculated(
        state.items,
        deliveryPrice: event.delivery.price,
      ).copyWith(delivery: event.delivery),
    );
  }

  Future<void> _loadAddresses(
    _CheckoutLoadAddressesEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(isAddressesLoading: true, errorMessage: null));
    try {
      final addresses = await _repository.addresses();
      emit(state.copyWith(addresses: addresses));
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isAddressesLoading: false));
  }

  void _selectAddress(
    _CheckoutSelectAddressEvent event,
    Emitter<CheckoutState> emit,
  ) {
    emit(state.copyWith(address: event.address, errorMessage: null));
  }

  Future<void> _saveAddress(
    _CheckoutSaveAddressEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(isAddressesLoading: true, errorMessage: null));
    try {
      final addressId = event.addressId;
      final address = addressId == null
          ? await _repository.addAddress(
              line: event.line,
              district: event.district,
            )
          : await _repository.editAddress(
              addressId: addressId,
              line: event.line,
              district: event.district,
            );
      final addresses = await _repository.addresses();
      emit(state.copyWith(address: address, addresses: addresses));
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isAddressesLoading: false));
  }

  Future<void> _deleteAddress(
    _CheckoutDeleteAddressEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(isAddressesLoading: true, errorMessage: null));
    try {
      await _repository.deleteAddress(addressId: event.addressId);
      final addresses = await _repository.addresses();
      emit(
        state.copyWith(
          addresses: addresses,
          address: state.address?.id == event.addressId
              ? null
              : state.address,
        ),
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isAddressesLoading: false));
  }

  void _changePhone(
    _CheckoutChangePhoneEvent event,
    Emitter<CheckoutState> emit,
  ) {
    emit(state.copyWith(phone: event.phone, errorMessage: null));
  }

  Future<void> _createOrder(
    _CheckoutCreateOrderEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    final delivery = state.delivery;
    final phone = state.phone;
    if (delivery == null || phone == null || phone.isEmpty) return;

    emit(state.copyWith(isOrdering: true, errorMessage: null));
    try {
      await _repository.createOrder(
        deliveryMethodId: delivery.id,
        recipientPhone: phone.replaceAll(RegExp(r"\D"), ""),
        addressId: state.address?.id,
      );
      emit(state.copyWith(isOrderCreated: true, paymentId: event.paymentId));
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isOrdering: false));
  }

  CheckoutState _recalculated(List<CartItem> items, {int? deliveryPrice}) {
    final int products = items.fold<int>(0, (sum, item) => sum + item.total);
    final int delivery = deliveryPrice ?? state.price?.delivery ?? 0;
    return state.copyWith(
      items: items,
      price: CheckoutPrice(
        products: products,
        delivery: delivery,
        total: products + delivery,
      ),
      priceDetails: null,
      errorMessage: null,
    );
  }

  String? _errorMessage(Object error) {
    if (error is DioException && error.error is AppException) {
      return (error.error as AppException).message;
    }
    return null;
  }
}
