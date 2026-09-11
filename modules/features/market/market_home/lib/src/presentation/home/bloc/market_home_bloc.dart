import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_home_event.dart';
part 'market_home_state.dart';
part 'market_home_bloc.freezed.dart';

@injectable
class MarketHomeBloc extends Bloc<MarketHomeEvent, MarketHomeState> {
  final MarketRepository _repository;
  final AppRefreshListener _refresh;
  StreamSubscription<AppRefreshTopic>? _refreshSubscription;
  StreamSubscription<ItemChange>? _productSubscription;

  MarketHomeBloc(this._repository, this._refresh) : super(MarketHomeState()) {
    on<_MarketHomeLoadDataEvent>(_loadData);
    on<_MarketHomeLoadCartEvent>(_loadCart);
    on<_MarketHomeSelectCityEvent>(_selectCity);
    on<_MarketHomeToggleFavoriteEvent>(_toggleFavorite);
    on<_MarketHomeChangeCartQuantityEvent>(_changeCartQuantity);
    on<_MarketHomeProductChangedEvent>(_productChanged);

    _refreshSubscription = _refresh
        .observe({AppRefreshTopic.marketCart})
        .listen((_) => add(MarketHomeEvent.loadCart()));
    _productSubscription = _refresh
        .observeItems(RefreshEntity.marketProduct)
        .listen(
          (change) => add(MarketHomeEvent.productChanged(change: change)),
        );
  }

  @override
  Future<void> close() {
    _refreshSubscription?.cancel();
    _productSubscription?.cancel();
    return super.close();
  }

  void _productChanged(
    _MarketHomeProductChangedEvent event,
    Emitter<MarketHomeState> emit,
  ) {
    emit(state.copyWith(blocks: _applyChange(event.change)));
  }

  Future<void> _loadData(
    _MarketHomeLoadDataEvent event,
    Emitter<MarketHomeState> emit,
  ) => _fetchHome(emit);

  Future<void> _fetchHome(Emitter<MarketHomeState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final home = await _repository.home();
      emit(
        state.copyWith(
          city: home.city,
          categories: home.categories,
          blocks:
              home.blocks.where((block) => block.products.isNotEmpty).toList(),
          loadFailed: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _loadCart(
    _MarketHomeLoadCartEvent event,
    Emitter<MarketHomeState> emit,
  ) => _fetchCart(emit);

  Future<void> _fetchCart(Emitter<MarketHomeState> emit) async {
    try {
      final cart = await _repository.cartCount();
      emit(state.copyWith(cartCount: cart.count, cartTitle: cart.title));
    } catch (_) {
      emit(state.copyWith(cartCount: 0, cartTitle: ""));
    }
  }

  Future<void> _selectCity(
    _MarketHomeSelectCityEvent event,
    Emitter<MarketHomeState> emit,
  ) async {
    if (event.city.id == state.city?.id) return;

    await _repository.selectCity(cityId: event.city.id);
    emit(state.copyWith(city: event.city));
    await _fetchHome(emit);
  }

  Future<void> _toggleFavorite(
    _MarketHomeToggleFavoriteEvent event,
    Emitter<MarketHomeState> emit,
  ) async {
    final product = event.product;
    final isFavorite = !product.isFavorite;
    emit(state.copyWith(errorMessage: null));
    _refresh.notifyItem(
      ItemChange(
        entity: RefreshEntity.marketProduct,
        id: product.id.toString(),
        isFavorite: isFavorite,
      ),
    );
    try {
      if (isFavorite) {
        await _repository.addFavorite(productId: product.id);
      } else {
        await _repository.removeFavorite(productId: product.id);
      }
      _refresh.notify(AppRefreshTopic.marketFavorites);
    } catch (e) {
      _refresh.notifyItem(
        ItemChange(
          entity: RefreshEntity.marketProduct,
          id: product.id.toString(),
          isFavorite: product.isFavorite,
        ),
      );
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _changeCartQuantity(
    _MarketHomeChangeCartQuantityEvent event,
    Emitter<MarketHomeState> emit,
  ) async {
    final product = event.product;
    final quantity = event.quantity;
    emit(state.copyWith(errorMessage: null));
    _refresh.notifyItem(
      ItemChange(
        entity: RefreshEntity.marketProduct,
        id: product.id.toString(),
        cartQuantity: quantity,
      ),
    );
    try {
      if (product.cartQuantity == 0) {
        await _repository.addToCart(productId: product.id, quantity: quantity);
      } else {
        await _repository.changeCartQuantity(
          productId: product.id,
          quantity: quantity,
        );
      }
      _refresh.notify(AppRefreshTopic.marketCart);
    } catch (e) {
      _refresh.notifyItem(
        ItemChange(
          entity: RefreshEntity.marketProduct,
          id: product.id.toString(),
          cartQuantity: product.cartQuantity,
        ),
      );
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
  }

  List<MarketBlock> _applyChange(ItemChange change) {
    return state.blocks
        .map(
          (block) => block.copyWith(
            products:
                block.products
                    .map(
                      (item) =>
                          item.id.toString() == change.id
                              ? item.copyWith(
                                isFavorite: change.isFavorite,
                                cartQuantity: change.cartQuantity,
                              )
                              : item,
                    )
                    .toList(),
          ),
        )
        .toList();
  }

  String? _errorMessage(Object error) {
    if (error is DioException && error.error is AppException) {
      return (error.error as AppException).message;
    }
    return null;
  }
}
