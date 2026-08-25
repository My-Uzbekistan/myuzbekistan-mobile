part of 'market_catalog_bloc.dart';

@freezed
abstract class MarketCatalogEvent with _$MarketCatalogEvent {
  factory MarketCatalogEvent.loadData() = _MarketCatalogLoadDataEvent;
}
