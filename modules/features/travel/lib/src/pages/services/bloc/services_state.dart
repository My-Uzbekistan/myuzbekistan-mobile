part of 'services_cubit.dart';

@freezed
abstract class ServicesState with _$ServicesState {
  const factory ServicesState({
    @Default(<CatalogItemModel>[]) List<CatalogItemModel> services,
    @Default(true) bool isLoading,
    String? errorMessage,
  }) = _ServicesState;
}
