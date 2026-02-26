import 'package:domain/domain.dart';
import 'package:flutter/rendering.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/pages/catalog_investments/bloc/investments_bloc.dart';

part 'invest_search_state.dart';

part 'invest_search_event.dart';

part 'invest_search_bloc.freezed.dart';

@injectable
class InvestSearchBloc
    extends Bloc<InvestSearchBlocEvent, InvestmentsSearchState> {
  final Repository _repository;

  final int categoryId = 110;
  final int recommendedCategoryId = 111;

  InvestSearchBloc(Repository rep)
    : _repository = rep,
      super(InvestmentsSearchState.initialState()) {
    on<_InvestSearchEvent>(_search, transformer: debounce());
  }

  Future<void> _search(
    _InvestSearchEvent event,
    Emitter<InvestmentsSearchState> emit,
  ) async {
    try {
      if(event.query.isEmpty) {
        emit((InvestmentsSearchState.initialState()));
        return;
      }
      emit(InvestmentsSearchState.loadingState());
      final result = await Future.wait([
        _repository.loadContentsByCategory(
          categoryId: categoryId,
          page: 0,
          pageSize: 100,
          search: event.query
        ),
        _repository.loadContentsByCategory(
          categoryId: recommendedCategoryId,
          page: 0,
          pageSize: 100, search: event.query
        ),
      ]);
      final contents = result.expand((e) => e).toList();

      if(contents.isEmpty) {
        emit(InvestmentsSearchState.noContentState());
        return ;
      }

      emit(InvestmentsSearchState.dataState(contents: contents));
    } catch (e) {
      emit(InvestmentsSearchState.noContentState());
      // emit(InvestmentsSearchState.);
    }
  }
}
