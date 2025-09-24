part of 'catalog_bloc.dart';


@freezed
abstract class CatalogState  with _$CatalogState {

  factory CatalogState.loading() = _LoadingState;
  factory CatalogState.loaded({
    required List<CatalogItemModel> items
}) = _LoadedState;
  factory CatalogState.error() = _ErrorState;


}