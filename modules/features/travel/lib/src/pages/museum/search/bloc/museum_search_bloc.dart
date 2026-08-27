import 'package:domain/domain.dart';
import 'package:travel/src/pages/museum/museum_error_extension.dart';
import 'package:shared/shared.dart';

part 'museum_search_event.dart';
part 'museum_search_state.dart';
part 'museum_search_bloc.freezed.dart';

@injectable
class MuseumSearchBloc extends Bloc<MuseumSearchEvent, MuseumSearchState> {
  final MuseumRepository _repository;

  MuseumSearchBloc(this._repository) : super(MuseumSearchState()) {
    on<_MuseumSearchLoadDataEvent>(_loadData);
    on<_MuseumSearchQueryChangedEvent>(_queryChanged);
    on<_MuseumSearchSelectCityEvent>(_selectCity);
    on<_MuseumSearchClearHistoryEvent>(_clearHistory);
  }

  Future<void> _loadData(
    _MuseumSearchLoadDataEvent event,
    Emitter<MuseumSearchState> emit,
  ) async {
    emit(state.copyWith(query: event.query ?? state.query, isLoading: true));
    final cities = await _citiesOrEmpty();
    final history = await _historyOrEmpty();
    emit(state.copyWith(cities: cities, history: history, isLoading: false));
  }

  Future<void> _queryChanged(
    _MuseumSearchQueryChangedEvent event,
    Emitter<MuseumSearchState> emit,
  ) async {
    final city = state.cities.firstOrNullWhere(
      (city) => city.name.toLowerCase() == event.query.trim().toLowerCase(),
    );
    emit(state.copyWith(query: event.query, city: city));
  }

  Future<void> _selectCity(
    _MuseumSearchSelectCityEvent event,
    Emitter<MuseumSearchState> emit,
  ) async {
    emit(state.copyWith(city: event.city, query: event.city.name));
  }

  Future<void> _clearHistory(
    _MuseumSearchClearHistoryEvent event,
    Emitter<MuseumSearchState> emit,
  ) async {
    final previous = state.history;
    emit(state.copyWith(history: const [], errorMessage: null));
    try {
      await _repository.clearSearchHistory();
    } catch (e) {
      emit(state.copyWith(history: previous, errorMessage: e.errorMessage()));
    }
  }

  Future<List<MuseumCity>> _citiesOrEmpty() async {
    try {
      return await _repository.cities();
    } catch (e) {
      return const [];
    }
  }

  Future<List<String>> _historyOrEmpty() async {
    try {
      return await _repository.searchHistory();
    } catch (e) {
      return const [];
    }
  }
}
