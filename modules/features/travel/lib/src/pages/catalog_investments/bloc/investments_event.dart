part of 'investments_bloc.dart';

@freezed
abstract class InvestmentsEvent with _$InvestmentsEvent {
  factory InvestmentsEvent.setCategoryId(
      int? contentsId,
      int? topContentsCategoryId,
      ) = _SetContentIdEvent;
  factory InvestmentsEvent.loadMoreContents() = _LoadMoreContentEvent;

  factory InvestmentsEvent.loadMoreRecommended() = _LoadMoreRecommendedEvent;

  factory InvestmentsEvent.loadDataEvent({
    Region? selectedRegion,
    InvestCurrencyType? currencyType,
    SortType? sortType,
  }) = _LoadDataEvent;

  factory InvestmentsEvent.sort({
    required InvestCurrencyType currencyType,
    required SortType? sortType,
    Region? selectedRegion,
  }) = _SortEvent;
}
