part of 'market_home_bloc.dart';

@freezed
abstract class MarketHomeState with _$MarketHomeState {
  factory MarketHomeState({
    MarketCity? city,
    @Default([]) List<MarketCategory> categories,
    @Default([]) List<MarketBlock> blocks,
    @Default(0) int cartCount,
    @Default("") String cartTitle,
    @Default(false) bool isLoading,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _MarketHomeState;
}
