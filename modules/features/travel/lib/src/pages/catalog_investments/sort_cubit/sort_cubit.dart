import 'package:shared/shared.dart';
import 'package:travel/src/pages/catalog_investments/invest_currencs_type.dart';

class SortState {
  final InvestCurrencyType currencyType;
  final SortType? sortType;

  bool get hasUsd => currencyType == InvestCurrencyType.usd;
  bool get hasPopular => sortType == SortType.popular;
  bool get hasAsk => sortType == SortType.ask;
  bool get hasDesk => sortType == SortType.desk;

  SortState({this.currencyType = InvestCurrencyType.uzs, this.sortType});

  SortState copyWith({InvestCurrencyType? currencyType, SortType? sortType}) {
    return SortState(
      currencyType: currencyType ?? this.currencyType,
      sortType: sortType??this.sortType,
    );
  }
}

class InvestSortCubit extends Cubit<SortState> {
  InvestSortCubit() : super(SortState());

  void changeCurrencyType(InvestCurrencyType type) {
    emit(state.copyWith(currencyType: type));
  }

  void changeSortType(SortType? type) {
    emit(state.copyWith(sortType: type));
  }

}
