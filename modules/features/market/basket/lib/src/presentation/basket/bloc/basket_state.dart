part of 'basket_bloc.dart';

@freezed
abstract class BasketState with _$BasketState {
  factory BasketState({
    @Default([]) List<CartSeller> sellers,
    @Default(0) int totalCount,
    @Default(0) int selectedCount,
    @Default(0) int selectedTotal,
    @Default(false) bool isLoading,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _BasketState;

  const BasketState._();

  bool get isEmpty => sellers.isEmpty;

  bool get allSelected => totalCount > 0 && selectedCount >= totalCount;

  bool get hasSelection => selectedCount > 0;
}
