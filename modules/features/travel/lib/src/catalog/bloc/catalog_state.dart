part of 'catalog_bloc.dart';

enum PremiumAccessStatus { idle, allowed, premiumRequired, limitReached }

@freezed
abstract class CatalogState  with _$CatalogState {

  factory CatalogState.loading() = _LoadingState;
  factory CatalogState.loaded({
    required List<CatalogItemModel> items,
    @Default(PremiumAccessStatus.idle) PremiumAccessStatus accessStatus,
    CatalogItemModel? pendingItem,
}) = _LoadedState;
  factory CatalogState.error() = _ErrorState;


}