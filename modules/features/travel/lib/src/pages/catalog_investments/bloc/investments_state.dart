part of 'investments_bloc.dart';

@freezed
abstract class InvestmentsState with _$InvestmentsState{
  factory InvestmentsState.dataState({
    @Default([]) List<MainPageContent> contents,
    @Default([]) List<MainPageContent> recommended,
    @Default(InvestCurrencyType.uzs) InvestCurrencyType currencyType,
     Region? region,
    @Default(1) int page,
    @Default(20) int pageSize,
    @Default(false) bool isLoadingRecommended ,
    @Default(false) bool isLoadingContents,
    @Default(true) bool hasMoreContents,
    @Default(true) bool hasMoreRecommended,
  }) = InvestmentsDataState;

  factory InvestmentsState.errorState() = InvestmentsErrorState;
  factory InvestmentsState.loadingState() = InvestmentsLoadingState;

  factory InvestmentsState.noContentState() =
  InvestmentsNoContentState;
}

