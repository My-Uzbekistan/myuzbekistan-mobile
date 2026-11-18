part of 'invest_search_bloc.dart';

@freezed
abstract class InvestmentsSearchState with _$InvestmentsSearchState {

factory  InvestmentsSearchState.initialState() = _InvestmentsSearchInitialState;
factory  InvestmentsSearchState.loadingState() = _InvestmentsSearchLoadingState;
factory  InvestmentsSearchState.noContentState() = _InvestmentsNoContentState;

factory  InvestmentsSearchState.dataState({
    required List<MainPageContent> contents
  }) = _InvestmentsSearchDataState;


}