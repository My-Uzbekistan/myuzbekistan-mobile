import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final MarketRepository _repository;
  final AppRefreshListener _refresh;
  StreamSubscription<AppRefreshTopic>? _refreshSubscription;
  StreamSubscription<ItemChange>? _productSubscription;

  FavoritesBloc(this._repository, this._refresh) : super(FavoritesState()) {
    on<_FavoritesLoadDataEvent>(_loadData);
    on<_FavoritesToggleFavoriteEvent>(_toggleFavorite);
    on<_FavoritesChangeCartQuantityEvent>(_changeCartQuantity);
    on<_FavoritesProductChangedEvent>(_productChanged);

    _refreshSubscription = _refresh
        .observe({AppRefreshTopic.marketFavorites})
        .listen((_) => add(FavoritesEvent.loadData()));
    _productSubscription = _refresh
        .observeItems(RefreshEntity.marketProduct)
        .where((change) => change.cartQuantity != null)
        .listen((change) => add(FavoritesEvent.productChanged(change: change)));
  }

  @override
  Future<void> close() {
    _refreshSubscription?.cancel();
    _productSubscription?.cancel();
    return super.close();
  }

  void _productChanged(
    _FavoritesProductChangedEvent event,
    Emitter<FavoritesState> emit,
  ) {
    emit(state.copyWith(products: _applyChange(event.change)));
  }

  Future<void> _loadData(
    _FavoritesLoadDataEvent event,
    Emitter<FavoritesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final products = await _repository.favorites();
      emit(state.copyWith(products: products, loadFailed: false));
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _toggleFavorite(
    _FavoritesToggleFavoriteEvent event,
    Emitter<FavoritesState> emit,
  ) async {
    final product = event.product;
    final isFavorite = !product.isFavorite;
    emit(
      state.copyWith(
        products: _replaceProduct(product.copyWith(isFavorite: isFavorite)),
        errorMessage: null,
      ),
    );
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
      emit(
        state.copyWith(
          products: _replaceProduct(product),
          errorMessage: _errorMessage(e),
        ),
      );
    }
  }

  Future<void> _changeCartQuantity(
    _FavoritesChangeCartQuantityEvent event,
    Emitter<FavoritesState> emit,
  ) async {
    final product = event.product;
    final quantity = event.quantity;
    emit(
      state.copyWith(
        products: _replaceProduct(product.copyWith(cartQuantity: quantity)),
        errorMessage: null,
      ),
    );
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
      emit(
        state.copyWith(
          products: _replaceProduct(product),
          errorMessage: _errorMessage(e),
        ),
      );
    }
  }

  List<MarketProduct> _replaceProduct(MarketProduct product) {
    return state.products
        .map((item) => item.id == product.id ? product : item)
        .toList();
  }

  List<MarketProduct> _applyChange(ItemChange change) {
    return state.products
        .map(
          (item) =>
              item.id.toString() == change.id
                  ? item.copyWith(
                    isFavorite: change.isFavorite,
                    cartQuantity: change.cartQuantity,
                  )
                  : item,
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
