part of 'market_location_bloc.dart';

@freezed
abstract class MarketLocationState with _$MarketLocationState {
  factory MarketLocationState({
    int? selectedCityId,
    @Default([]) List<MarketCity> cities,
    @Default(false) bool isLoading,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _MarketLocationState;
}
