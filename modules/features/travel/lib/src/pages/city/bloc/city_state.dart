part of 'city_bloc.dart';

@freezed
abstract class CityState with _$CityState {
  factory CityState({
    @Default(true) bool isLoading,
    CityDetail? city,
    String? errorMessage,
  }) = _CityState;
}
