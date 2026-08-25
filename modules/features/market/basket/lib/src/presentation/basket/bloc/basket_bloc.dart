import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'basket_event.dart';
part 'basket_state.dart';
part 'basket_bloc.freezed.dart';

@injectable
class BasketBloc extends Bloc<BasketEvent, BasketState> {
  final MarketRepository _repository;

  BasketBloc(this._repository) : super(BasketState()) {
    on<_BasketLoadDataEvent>(_loadData);
    on<_BasketChangeQuantityEvent>(_changeQuantity);
    on<_BasketToggleItemEvent>(_toggleItem);
    on<_BasketToggleSellerEvent>(_toggleSeller);
    on<_BasketToggleAllEvent>(_toggleAll);
    on<_BasketRemoveItemEvent>(_removeItem);
    on<_BasketRemoveSelectedEvent>(_removeSelected);
  }

  Future<void> _loadData(
    _BasketLoadDataEvent event,
    Emitter<BasketState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final cart = await _repository.cart();
      emit(
        state.copyWith(
          sellers: cart.sellers,
          totalCount: cart.totalCount,
          selectedCount: cart.selectedCount,
          selectedTotal: cart.selectedTotal,
          loadFailed: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _changeQuantity(
    _BasketChangeQuantityEvent event,
    Emitter<BasketState> emit,
  ) async {
    final item = event.item;
    final quantity = event.quantity;
    if (quantity <= 0) {
      await _delete(
        emit,
        _withoutItem(state.sellers, item),
        () => _repository.removeCartItem(productId: item.productId),
      );
      return;
    }
    if (quantity > item.available) return;

    final previous = state.sellers;
    emit(_recalculated(_replaceItem(previous, item.copyWith(quantity: quantity))));
    try {
      await _repository.changeCartQuantity(
        productId: item.productId,
        quantity: quantity,
      );
    } catch (e) {
      emit(_recalculated(previous).copyWith(errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _toggleItem(
    _BasketToggleItemEvent event,
    Emitter<BasketState> emit,
  ) async {
    final item = event.item;
    final isSelected = !item.isSelected;
    final previous = state.sellers;
    emit(
      _recalculated(
        _replaceItem(previous, item.copyWith(isSelected: isSelected)),
      ),
    );
    try {
      await _repository.selectCartItem(
        productId: item.productId,
        isSelected: isSelected,
      );
    } catch (e) {
      emit(_recalculated(previous).copyWith(errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _toggleSeller(
    _BasketToggleSellerEvent event,
    Emitter<BasketState> emit,
  ) async {
    final seller = event.seller;
    final isSelected = !seller.isSelected;
    final changed = seller.items
        .where((item) => item.isSelected != isSelected)
        .toList();
    if (changed.isEmpty) return;

    final previous = state.sellers;
    emit(
      _recalculated(
        previous
            .map(
              (item) => item.id == seller.id
                  ? item.copyWith(
                      items: item.items
                          .map((it) => it.copyWith(isSelected: isSelected))
                          .toList(),
                    )
                  : item,
            )
            .toList(),
      ),
    );
    try {
      await Future.wait(
        changed.map(
          (item) => _repository.selectCartItem(
            productId: item.productId,
            isSelected: isSelected,
          ),
        ),
      );
    } catch (e) {
      emit(_recalculated(previous).copyWith(errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _toggleAll(
    _BasketToggleAllEvent event,
    Emitter<BasketState> emit,
  ) async {
    final isSelected = !state.allSelected;
    final previous = state.sellers;
    emit(
      _recalculated(
        previous
            .map(
              (seller) => seller.copyWith(
                items: seller.items
                    .map((item) => item.copyWith(isSelected: isSelected))
                    .toList(),
              ),
            )
            .toList(),
      ),
    );
    try {
      await _repository.selectAllCartItems(isSelected: isSelected);
    } catch (e) {
      emit(_recalculated(previous).copyWith(errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _removeItem(
    _BasketRemoveItemEvent event,
    Emitter<BasketState> emit,
  ) {
    final item = event.item;
    return _delete(
      emit,
      _withoutItem(state.sellers, item),
      () => _repository.removeCartItem(productId: item.productId),
    );
  }

  Future<void> _removeSelected(
    _BasketRemoveSelectedEvent event,
    Emitter<BasketState> emit,
  ) {
    return _delete(
      emit,
      _withoutSelected(state.sellers),
      _repository.removeSelectedCartItems,
    );
  }

  Future<void> _delete(
    Emitter<BasketState> emit,
    List<CartSeller> next,
    Future<void> Function() request,
  ) async {
    final previous = state.sellers;
    emit(_recalculated(next));
    try {
      await request();
    } catch (e) {
      emit(_recalculated(previous).copyWith(errorMessage: _errorMessage(e)));
    }
  }

  BasketState _recalculated(List<CartSeller> sellers) {
    final items = sellers.expand((seller) => seller.items).toList();
    final selected = items.where((item) => item.isSelected).toList();
    return state.copyWith(
      sellers: sellers,
      totalCount: items.length,
      selectedCount: selected.length,
      selectedTotal: selected.fold(0, (sum, item) => sum + item.total),
      errorMessage: null,
    );
  }

  List<CartSeller> _replaceItem(List<CartSeller> sellers, CartItem item) {
    return sellers
        .map(
          (seller) => seller.copyWith(
            items: seller.items
                .map((it) => it.productId == item.productId ? item : it)
                .toList(),
          ),
        )
        .toList();
  }

  List<CartSeller> _withoutItem(List<CartSeller> sellers, CartItem item) {
    return _withoutEmpty(
      sellers.map(
        (seller) => seller.copyWith(
          items: seller.items
              .where((it) => it.productId != item.productId)
              .toList(),
        ),
      ),
    );
  }

  List<CartSeller> _withoutSelected(List<CartSeller> sellers) {
    return _withoutEmpty(
      sellers.map(
        (seller) => seller.copyWith(
          items: seller.items.where((item) => !item.isSelected).toList(),
        ),
      ),
    );
  }

  List<CartSeller> _withoutEmpty(Iterable<CartSeller> sellers) {
    return sellers.where((seller) => seller.items.isNotEmpty).toList();
  }

  String? _errorMessage(Object error) {
    if (error is DioException && error.error is AppException) {
      return (error.error as AppException).message;
    }
    return null;
  }
}
