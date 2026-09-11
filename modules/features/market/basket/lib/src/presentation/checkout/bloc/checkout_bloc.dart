import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

@injectable
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final MarketRepository _repository;
  final AppRefreshListener _refresh;
  StreamSubscription<AppRefreshTopic>? _refreshSubscription;

  CheckoutBloc(this._repository, this._refresh) : super(CheckoutState()) {
    on<_CheckoutLoadDataEvent>(_loadData);
    on<_CheckoutChangeQuantityEvent>(_changeQuantity);
    on<_CheckoutRemoveItemEvent>(_removeItem);
    on<_CheckoutReloadItemsEvent>(_reloadItems);
    on<_CheckoutSelectDeliveryEvent>(_selectDelivery);
    on<_CheckoutLoadPickupPointsEvent>(_loadPickupPoints);
    on<_CheckoutSelectPickupPointEvent>(_selectPickupPoint);
    on<_CheckoutLoadAddressesEvent>(_loadAddresses);
    on<_CheckoutSelectAddressEvent>(_selectAddress);
    on<_CheckoutChangePhoneEvent>(_changePhone);
    on<_CheckoutCreateOrderEvent>(_createOrder);

    _refreshSubscription = _refresh
        .observe({AppRefreshTopic.marketCart, AppRefreshTopic.marketAddresses})
        .listen((_) => add(CheckoutEvent.loadData()));
  }

  @override
  Future<void> close() {
    _refreshSubscription?.cancel();
    return super.close();
  }

  Future<void> _loadData(
    _CheckoutLoadDataEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    await _fetch(emit);
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _fetch(Emitter<CheckoutState> emit) async {
    try {
      final results = await Future.wait([
        _repository.checkout(),
        _repository.deliveryMethods(),
      ]);
      final checkout = results.first as Checkout;
      final methods = results.last as List<DeliveryMethod>;
      emit(
        state.copyWith(
          delivery:
              methods.firstOrNullWhere((e) => e.id == state.delivery?.id) ??
              checkout.delivery ??
              methods.firstOrNullWhere((e) => e.isSelected),
          deliveryMethods: methods,
          address: checkout.address,
          region: checkout.region,
          pickupPoint: state.pickupPoint ?? checkout.pickupPoint,
          phone: state.phone ?? checkout.phone,
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
              (it) =>
                  it.productId == item.productId
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
      await _applyCheckout(emit);
      _refresh.notifyItem(
        ItemChange(
          entity: RefreshEntity.marketProduct,
          id: item.productId.toString(),
          cartQuantity: quantity,
        ),
      );
      _refresh.notify(AppRefreshTopic.marketCart);
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
      await _applyCheckout(emit);
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
      await _applyCheckout(emit);
      _refresh.notifyItem(
        ItemChange(
          entity: RefreshEntity.marketProduct,
          id: item.productId.toString(),
          cartQuantity: 0,
        ),
      );
      _refresh.notify(AppRefreshTopic.marketCart);
    } catch (e) {
      emit(_recalculated(previous).copyWith(errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _applyCheckout(Emitter<CheckoutState> emit) async {
    final checkout = await _repository.checkout();
    emit(
      state.copyWith(
        items: checkout.items,
        price: checkout.price,
        priceDetails: checkout.priceDetails,
        freeCancellationUntil: checkout.freeCancellationUntil,
      ),
    );
  }

  void _selectDelivery(
    _CheckoutSelectDeliveryEvent event,
    Emitter<CheckoutState> emit,
  ) {
    if (state.delivery?.id == event.delivery.id) return;
    emit(
      _recalculated(
        state.items,
        deliveryPrice: event.delivery.price,
      ).copyWith(delivery: event.delivery, pickupPoints: []),
    );
  }

  Future<void> _loadPickupPoints(
    _CheckoutLoadPickupPointsEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(isPickupPointsLoading: true, errorMessage: null));
    try {
      final points = await _repository.pickupPoints(
        deliveryMethodId: state.delivery?.id,
      );
      emit(
        state.copyWith(
          pickupPoints: points,
          pickupPoint:
              points.firstOrNullWhere((e) => e.id == state.pickupPoint?.id) ??
              points.firstOrNullWhere((e) => e.isClosest),
        ),
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isPickupPointsLoading: false));
  }

  void _selectPickupPoint(
    _CheckoutSelectPickupPointEvent event,
    Emitter<CheckoutState> emit,
  ) {
    emit(state.copyWith(pickupPoint: event.point, errorMessage: null));
  }

  Future<void> _loadAddresses(
    _CheckoutLoadAddressesEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(isAddressesLoading: true, errorMessage: null));
    try {
      final addresses = await _repository.addresses();
      emit(
        state.copyWith(
          addresses: addresses,
          address:
              addresses.firstOrNullWhere((e) => e.id == state.address?.id) ??
              addresses.firstOrNullWhere((e) => e.isDefault),
        ),
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isAddressesLoading: false));
  }

  Future<void> _selectAddress(
    _CheckoutSelectAddressEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    final address = event.address;
    if (state.address?.id == address.id && address.isDefault) return;

    emit(
      state.copyWith(
        address: address,
        phone: null,
        isLoading: true,
        errorMessage: null,
      ),
    );
    try {
      await _repository.editAddress(
        addressId: address.id,
        line: address.line,
        district: address.district,
        latitude: address.latitude,
        longitude: address.longitude,
        isDefault: true,
        phone: address.phone,
      );
      emit(state.copyWith(addresses: await _repository.addresses()));
      await _fetch(emit);
      _refresh.notify(AppRefreshTopic.marketAddresses);
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _changePhone(
    _CheckoutChangePhoneEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(phone: event.phone, errorMessage: null));

    final address = state.address;
    if (address == null) return;
    try {
      await _repository.editAddress(
        addressId: address.id,
        line: address.line,
        district: address.district,
        latitude: address.latitude,
        longitude: address.longitude,
        isDefault: address.isDefault,
        phone: state.phoneDigits,
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _createOrder(
    _CheckoutCreateOrderEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    final delivery = state.delivery;
    final phone = state.phoneDigits;
    if (delivery == null || phone.isEmpty) return;

    final ordered = state.items;
    emit(state.copyWith(isOrdering: true, errorMessage: null));
    try {
      await _repository.createOrder(
        deliveryMethodId: delivery.id,
        recipientPhone: phone,
        addressId: state.isPickup ? null : state.address?.id,
        pickupPointId: state.isPickup ? state.pickupPoint?.id : null,
      );
      emit(state.copyWith(isOrderCreated: true, paymentId: event.paymentId));
      for (final item in ordered) {
        _refresh.notifyItem(
          ItemChange(
            entity: RefreshEntity.marketProduct,
            id: item.productId.toString(),
            cartQuantity: 0,
          ),
        );
      }
      _refresh.notifyAll({
        AppRefreshTopic.marketCart,
        AppRefreshTopic.marketOrders,
      });
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
