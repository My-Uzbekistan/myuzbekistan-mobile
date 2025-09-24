part of 'catalog_bloc.dart';



@freezed
abstract class CatalogEvent with _$CatalogEvent{

  factory CatalogEvent.loadedData({
    required List<CatalogItemModel> items,}
  ) = _CatalogLoadedData;
  factory CatalogEvent.fetch() = _CatalogFetchEvent;

}