import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_category_event.dart';
part 'market_category_state.dart';
part 'market_category_bloc.freezed.dart';

const int _pageSize = 20;

@injectable
class MarketCategoryBloc
    extends Bloc<MarketCategoryEvent, MarketCategoryState> {
  final MarketRepository _repository;
  final AppRefreshListener _refreshListener;
  StreamSubscription<AppRefreshTopic>? _refreshSubscription;
  StreamSubscription<ItemChange>? _productSubscription;

  MarketCategoryBloc(this._repository, this._refreshListener)
    : super(MarketCategoryState()) {
    on<_MarketCategoryStartEvent>(_start);
    on<_MarketCategoryRefreshEvent>(_refresh);
    on<_MarketCategoryProductChangedEvent>(_productChanged);
    on<_MarketCategoryLoadCartSummaryEvent>(_loadCartSummaryEvent);
    on<_MarketCategoryLoadMoreEvent>(_loadMore);
    on<_MarketCategoryChangeSortEvent>(_changeSort);
    on<_MarketCategoryToggleFavoriteEvent>(_toggleFavorite);
    on<_MarketCategoryChangeCartQuantityEvent>(_changeCartQuantity);

    _refreshSubscription = _refreshListener
        .observe({AppRefreshTopic.marketCart})
        .listen((_) => add(MarketCategoryEvent.loadCartSummary()));
    _productSubscription = _refreshListener
        .observeItems(RefreshEntity.marketProduct)
        .listen(
          (change) => add(MarketCategoryEvent.productChanged(change: change)),
        );
  }

  @override
  Future<void> close() {
    _refreshSubscription?.cancel();
    _productSubscription?.cancel();
    return super.close();
  }

  void _productChanged(
    _MarketCategoryProductChangedEvent event,
    Emitter<MarketCategoryState> emit,
  ) {
    emit(state.copyWith(products: _applyChange(event.change)));
  }

  Future<void> _start(
    _MarketCategoryStartEvent event,
    Emitter<MarketCategoryState> emit,
  ) async {
    emit(
      state.copyWith(
        categoryId: event.categoryId,
        block: event.block,
        categoryName: event.categoryName,
        productCount: event.productCount,
      ),
    );
    await _loadFirstPage(emit);
    await _loadCartSummary(emit);
  }

  Future<void> _refresh(
    _MarketCategoryRefreshEvent event,
    Emitter<MarketCategoryState> emit,
  ) async {
    emit(state.copyWith(isRefreshing: true));
    await _loadFirstPage(emit);
    await _loadCartSummary(emit);
    emit(state.copyWith(isRefreshing: false));
  }

  Future<void> _changeSort(
    _MarketCategoryChangeSortEvent event,
    Emitter<MarketCategoryState> emit,
  ) async {
    if (event.sort == state.sort) return;
    emit(state.copyWith(sort: event.sort, products: const []));
    await _loadFirstPage(emit);
  }

  Future<void> _loadCartSummaryEvent(
    _MarketCategoryLoadCartSummaryEvent event,
    Emitter<MarketCategoryState> emit,
  ) => _loadCartSummary(emit);

  Future<void> _loadFirstPage(Emitter<MarketCategoryState> emit) async {
    emit(
      state.copyWith(
        isFirstLoading: state.products.isEmpty,
        isLoadingMore: false,
        errorMessage: null,
      ),
    );
    try {
      final result = await _repository.products(
        page: 1,
        pageSize: _pageSize,
        sort: state.sort,
        categoryId: state.categoryId,
        block: state.block,
      );
      emit(
        state.copyWith(
          products: result.items,
          categoryName: result.category?.name ?? state.categoryName,
          productCount: result.category?.productCount ?? result.totalItems,
          page: 2,
          isLast: result.items.length < _pageSize,
          loadFailed: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isFirstLoading: false));
  }

  Future<void> _loadMore(
    _MarketCategoryLoadMoreEvent event,
    Emitter<MarketCategoryState> emit,
  ) async {
    if (state.isLoadingMore || state.isFirstLoading || state.isLast) return;

    emit(state.copyWith(isLoadingMore: true, errorMessage: null));
    try {
      final result = await _repository.products(
        page: state.page,
        pageSize: _pageSize,
        sort: state.sort,
        categoryId: state.categoryId,
        block: state.block,
      );
      emit(
        state.copyWith(
          products: [...state.products, ...result.items],
          productCount: result.category?.productCount ?? state.productCount,
          page: state.page + 1,
          isLast: result.items.length < _pageSize,
        ),
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isLoadingMore: false));
  }

  Future<void> _toggleFavorite(
    _MarketCategoryToggleFavoriteEvent event,
    Emitter<MarketCategoryState> emit,
  ) async {
    final product = event.product;
    final isFavorite = !product.isFavorite;
    emit(
      state.copyWith(
        products: _replaceProduct(product.copyWith(isFavorite: isFavorite)),
        errorMessage: null,
      ),
    );
    _refreshListener.notifyItem(
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
      _refreshListener.notify(AppRefreshTopic.marketFavorites);
    } catch (e) {
      _refreshListener.notifyItem(
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
    _MarketCategoryChangeCartQuantityEvent event,
    Emitter<MarketCategoryState> emit,
  ) async {
    final product = event.product;
    final quantity = event.quantity;
    emit(
      state.copyWith(
        products: _replaceProduct(product.copyWith(cartQuantity: quantity)),
        errorMessage: null,
      ),
    );
    _refreshListener.notifyItem(
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
      _refreshListener.notify(AppRefreshTopic.marketCart);
    } catch (e) {
      _refreshListener.notifyItem(
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

  Future<void> _loadCartSummary(Emitter<MarketCategoryState> emit) async {
    try {
      final cart = await _repository.cart();
      emit(
        state.copyWith(
          cartCount: cart.totalCount,
          cartTotal: cart.selectedTotal,
        ),
      );
    } catch (_) {
      emit(state.copyWith(cartCount: 0, cartTotal: 0));
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
