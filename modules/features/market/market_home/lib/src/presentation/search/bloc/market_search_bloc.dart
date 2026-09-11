import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_search_event.dart';
part 'market_search_state.dart';
part 'market_search_bloc.freezed.dart';

const int marketSearchMinQueryLength = 2;
const int _pageSize = 20;
const Duration _debounceDuration = Duration(milliseconds: 350);

EventTransformer<E> _debounce<E>() {
  return (events, mapper) =>
      events.debounceTime(_debounceDuration).switchMap(mapper);
}

@injectable
class MarketSearchBloc extends Bloc<MarketSearchEvent, MarketSearchState> {
  final MarketRepository _repository;
  final AppRefreshListener _refreshListener;
  StreamSubscription<ItemChange>? _productSubscription;

  MarketSearchBloc(this._repository, this._refreshListener)
    : super(MarketSearchState()) {
    on<_MarketSearchLoadInitialEvent>(_loadInitial);
    on<_MarketSearchQueryChangedEvent>(_queryChanged);
    on<_MarketSearchSearchEvent>(_search, transformer: _debounce());
    on<_MarketSearchSubmitEvent>(_submit);
    on<_MarketSearchLoadMoreEvent>(_loadMore);
    on<_MarketSearchProductChangedEvent>(_productChanged);
    on<_MarketSearchChangeSortEvent>(_changeSort);
    on<_MarketSearchRemoveHistoryEvent>(_removeHistory);
    on<_MarketSearchToggleFavoriteEvent>(_toggleFavorite);
    on<_MarketSearchChangeCartQuantityEvent>(_changeCartQuantity);

    _productSubscription = _refreshListener
        .observeItems(RefreshEntity.marketProduct)
        .listen(
          (change) => add(MarketSearchEvent.productChanged(change: change)),
        );
  }

  @override
  Future<void> close() {
    _productSubscription?.cancel();
    return super.close();
  }

  void _productChanged(
    _MarketSearchProductChangedEvent event,
    Emitter<MarketSearchState> emit,
  ) {
    emit(state.copyWith(products: _applyChange(event.change)));
  }

  Future<void> _loadInitial(
    _MarketSearchLoadInitialEvent event,
    Emitter<MarketSearchState> emit,
  ) async {
    emit(state.copyWith(isHintsLoading: true));
    final history = await _historyOrEmpty();
    final suggestions = await _suggestionsOrEmpty();
    emit(
      state.copyWith(
        history: history,
        suggestions: suggestions,
        isHintsLoading: false,
      ),
    );
  }

  Future<void> _queryChanged(
    _MarketSearchQueryChangedEvent event,
    Emitter<MarketSearchState> emit,
  ) async {
    emit(state.copyWith(query: event.query));
    if (event.query.trim().length < marketSearchMinQueryLength) {
      emit(
        state.copyWith(
          products: const [],
          totalItems: 0,
          page: 1,
          isLast: false,
          isFirstLoading: false,
          isLoading: false,
        ),
      );
      return;
    }
    emit(state.copyWith(isFirstLoading: true));
    add(MarketSearchEvent.search());
  }

  Future<void> _search(
    _MarketSearchSearchEvent event,
    Emitter<MarketSearchState> emit,
  ) => _runSearch(emit);

  Future<void> _submit(
    _MarketSearchSubmitEvent event,
    Emitter<MarketSearchState> emit,
  ) async {
    emit(state.copyWith(query: event.query));
    await _runSearch(emit);
  }

  Future<void> _changeSort(
    _MarketSearchChangeSortEvent event,
    Emitter<MarketSearchState> emit,
  ) async {
    if (event.sort == state.sort) return;
    emit(state.copyWith(sort: event.sort));
    await _runSearch(emit);
  }

  Future<void> _runSearch(Emitter<MarketSearchState> emit) async {
    final query = state.query.trim();
    if (query.length < marketSearchMinQueryLength) {
      emit(
        state.copyWith(
          products: const [],
          totalItems: 0,
          page: 1,
          isLast: false,
          isFirstLoading: false,
          isLoading: false,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        isFirstLoading: true,
        isLoading: false,
        errorMessage: null,
      ),
    );
    try {
      final result = await _repository.products(
        page: 1,
        pageSize: _pageSize,
        sort: state.sort,
        search: query,
      );
      emit(
        state.copyWith(
          products: result.items,
          totalItems: result.totalItems,
          page: 2,
          isLast: result.items.length < _pageSize,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          products: const [],
          totalItems: 0,
          isLast: true,
          errorMessage: _errorMessage(e),
        ),
      );
    }
    emit(state.copyWith(isFirstLoading: false));
  }

  Future<void> _loadMore(
    _MarketSearchLoadMoreEvent event,
    Emitter<MarketSearchState> emit,
  ) async {
    if (state.isLoading || state.isFirstLoading || state.isLast) return;
    final query = state.query.trim();
    if (query.length < marketSearchMinQueryLength) return;

    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final result = await _repository.products(
        page: state.page,
        pageSize: _pageSize,
        sort: state.sort,
        search: query,
      );
      emit(
        state.copyWith(
          products: [...state.products, ...result.items],
          totalItems: result.totalItems,
          page: state.page + 1,
          isLast: result.items.length < _pageSize,
        ),
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _removeHistory(
    _MarketSearchRemoveHistoryEvent event,
    Emitter<MarketSearchState> emit,
  ) async {
    final previous = state.history;
    emit(
      state.copyWith(
        history: previous.where((item) => item.id != event.searchId).toList(),
        errorMessage: null,
      ),
    );
    try {
      await _repository.deleteSearchHistory(searchId: event.searchId);
    } catch (e) {
      emit(state.copyWith(history: previous, errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _toggleFavorite(
    _MarketSearchToggleFavoriteEvent event,
    Emitter<MarketSearchState> emit,
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
    _MarketSearchChangeCartQuantityEvent event,
    Emitter<MarketSearchState> emit,
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

  Future<List<MarketSearchHistory>> _historyOrEmpty() async {
    try {
      return await _repository.searchHistory();
    } catch (e) {
      return const [];
    }
  }

  Future<List<String>> _suggestionsOrEmpty() async {
    try {
      return await _repository.searchSuggestions();
    } catch (e) {
      return const [];
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
