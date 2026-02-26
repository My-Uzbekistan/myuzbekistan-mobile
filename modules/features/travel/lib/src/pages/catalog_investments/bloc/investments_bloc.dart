import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/pages/catalog_investments/invest_currencs_type.dart';

part 'investments_event.dart';

part 'investments_state.dart';

part 'investments_bloc.freezed.dart';

EventTransformer<E> debounce<E>({Duration? duration}) {
  return (events, mapper) => events
      .debounceTime(duration ?? Duration(milliseconds: 300))
      .asyncExpand(mapper);
}

@injectable
class InvestmentsBloc extends Bloc<InvestmentsEvent, InvestmentsState> {
  final Repository _repository;
  Timer? _timer;
  final int categoryId = 110;
  final int recommendedCategoryId = 111;
  SortType? _sortType;
  InvestCurrencyType _currencyType = InvestCurrencyType.uzs;

  InvestmentsBloc(this._repository) : super(InvestmentsState.loadingState()) {
    on<_LoadDataEvent>(_loadDataEvent);
    on<_SortEvent>(
      _sortEvent,
      transformer: debounce(duration: Duration(milliseconds: 500)),
    );
  }

  Future<void> _loadDataEvent(
    _LoadDataEvent event,
    Emitter<InvestmentsState> emit,
  ) async {
    try {
      emit(InvestmentsState.loadingState());
      _sortType = event.sortType;
      final result = await Future.wait([
        _repository.loadContentsByCategory(
          categoryId: categoryId,
          page: 0,
          pageSize: 50,
          regionId: event.selectedRegion?.id,
          sort: event.sortType?.query,
        ),
        _repository.loadContentsByCategory(
          categoryId: recommendedCategoryId,
          page: 0,
          pageSize: 50,
          regionId: event.selectedRegion?.id,
          sort: event.sortType?.query,
        ),
      ]);
      final contents = result[0];
      final recommended = result[1];
      if (contents.isEmpty && recommended.isEmpty) {
        emit(InvestmentsState.noContentState());
        return;
      }
      emit(
        state.maybeMap(
          dataState:
              (st) => st.copyWith(
                contents: contents,
                recommended: recommended,
                region: event.selectedRegion ?? st.region,
              ),
          orElse:
              () => InvestmentsState.dataState(
                contents: contents,
                recommended: recommended,
                currencyType: _currencyType,
                region: event.selectedRegion,
              ),
        ),
      );
    } catch (e) {
      emit(InvestmentsState.errorState());
    }
  }

  _sortEvent(_SortEvent event, Emitter<InvestmentsState> emit) async {
    _currencyType = event.currencyType;
    if (event.sortType != _sortType) {
      add(InvestmentsEvent.loadDataEvent(sortType: event.sortType,selectedRegion: event.selectedRegion));
    } else {
      emit(
        state.maybeMap(
          dataState: (st) => st.copyWith(currencyType: event.currencyType),
          orElse: () => state,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
