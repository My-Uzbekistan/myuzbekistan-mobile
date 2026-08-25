import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_product_detail_event.dart';
part 'market_product_detail_state.dart';
part 'market_product_detail_bloc.freezed.dart';

@injectable
class MarketProductDetailBloc
    extends Bloc<MarketProductDetailEvent, MarketProductDetailState> {
  final MarketRepository _repository;

  MarketProductDetailBloc(this._repository)
    : super(MarketProductDetailState()) {
    on<_MarketProductDetailStartEvent>(_start);
    on<_MarketProductDetailRefreshEvent>(_refresh);
    on<_MarketProductDetailToggleFavoriteEvent>(_toggleFavorite);
    on<_MarketProductDetailChangeCartQuantityEvent>(_changeCartQuantity);
    on<_MarketProductDetailSelectDeliveryEvent>(_selectDelivery);
    on<_MarketProductDetailBuyNowEvent>(_buyNow);
  }

  Future<void> _start(
    _MarketProductDetailStartEvent event,
    Emitter<MarketProductDetailState> emit,
  ) async {
    emit(state.copyWith(productId: event.productId));
    await _load(emit);
  }

  Future<void> _refresh(
    _MarketProductDetailRefreshEvent event,
    Emitter<MarketProductDetailState> emit,
  ) async {
    emit(state.copyWith(isRefreshing: true));
    await _load(emit);
    emit(state.copyWith(isRefreshing: false));
  }

  Future<void> _load(Emitter<MarketProductDetailState> emit) async {
    emit(
      state.copyWith(
        isLoading: state.detail == null,
        errorMessage: null,
      ),
    );
    try {
      final position = LocationManager().getCurrentPosition();
      final detail = await _repository.productDetail(
        productId: state.productId,
        latitude: position?.latitude,
        longitude: position?.longitude,
      );
      emit(
        state.copyWith(
          detail: detail,
          selectedDeliveryId:
              detail.delivery.firstOrNullWhere((e) => e.isSelected)?.id ??
              detail.delivery.firstOrNull?.id,
          loadFailed: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _toggleFavorite(
    _MarketProductDetailToggleFavoriteEvent event,
    Emitter<MarketProductDetailState> emit,
  ) async {
    final detail = state.detail;
    if (detail == null) return;

    final isFavorite = !detail.isFavorite;
    emit(
      state.copyWith(
        detail: detail.copyWith(isFavorite: isFavorite),
        errorMessage: null,
      ),
    );
    try {
      if (isFavorite) {
        await _repository.addFavorite(productId: detail.id);
      } else {
        await _repository.removeFavorite(productId: detail.id);
      }
    } catch (e) {
      emit(state.copyWith(detail: detail, errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _changeCartQuantity(
    _MarketProductDetailChangeCartQuantityEvent event,
    Emitter<MarketProductDetailState> emit,
  ) async {
    final detail = state.detail;
    if (detail == null) return;

    final quantity = event.quantity;
    emit(
      state.copyWith(
        detail: detail.copyWith(cartQuantity: quantity),
        errorMessage: null,
      ),
    );
    try {
      if (detail.cartQuantity == 0) {
        await _repository.addToCart(productId: detail.id, quantity: quantity);
      } else if (quantity == 0) {
        await _repository.removeCartItem(productId: detail.id);
      } else {
        await _repository.changeCartQuantity(
          productId: detail.id,
          quantity: quantity,
        );
      }
    } catch (e) {
      emit(state.copyWith(detail: detail, errorMessage: _errorMessage(e)));
    }
  }

  void _selectDelivery(
    _MarketProductDetailSelectDeliveryEvent event,
    Emitter<MarketProductDetailState> emit,
  ) {
    emit(state.copyWith(selectedDeliveryId: event.deliveryId));
  }

  Future<void> _buyNow(
    _MarketProductDetailBuyNowEvent event,
    Emitter<MarketProductDetailState> emit,
  ) async {
    final detail = state.detail;
    if (detail == null || !detail.isAvailable) return;

    if (detail.cartQuantity == 0) {
      emit(
        state.copyWith(
          detail: detail.copyWith(cartQuantity: 1),
          errorMessage: null,
        ),
      );
      try {
        await _repository.addToCart(productId: detail.id, quantity: 1);
      } catch (e) {
        emit(state.copyWith(detail: detail, errorMessage: _errorMessage(e)));
        return;
      }
    }

    emit(state.copyWith(isReadyForCheckout: true));
    emit(state.copyWith(isReadyForCheckout: false));
  }

  String? _errorMessage(Object error) {
    if (error is DioException && error.error is AppException) {
      return (error.error as AppException).message;
    }
    return null;
  }
}
