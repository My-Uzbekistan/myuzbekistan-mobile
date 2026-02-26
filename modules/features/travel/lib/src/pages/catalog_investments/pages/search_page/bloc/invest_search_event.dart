


part of 'invest_search_bloc.dart';
@freezed
abstract class InvestSearchBlocEvent with _$InvestSearchBlocEvent{

  factory InvestSearchBlocEvent.search(String query) = _InvestSearchEvent;

}