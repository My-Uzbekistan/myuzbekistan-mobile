import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'global_search_event.dart';
part 'global_search_state.dart';
part 'global_search_bloc.freezed.dart';

const int globalSearchMinQueryLength = 2;
const int _popularLimit = 8;
const int _historyLimit = 10;
const int _suggestionsLimit = 10;
const Duration _debounceDuration = Duration(milliseconds: 300);

EventTransformer<E> _debounce<E>() {
  return (events, mapper) =>
      events.debounceTime(_debounceDuration).switchMap(mapper);
}

@injectable
class GlobalSearchBloc extends Bloc<GlobalSearchEvent, GlobalSearchState> {
  final SearchRepository _repository;

  GlobalSearchBloc(this._repository) : super(GlobalSearchState()) {
    on<_GlobalSearchLoadDataEvent>(_loadData);
    on<_GlobalSearchQueryChangedEvent>(_queryChanged);
    on<_GlobalSearchSuggestEvent>(_suggest, transformer: _debounce());
    on<_GlobalSearchClearHistoryEvent>(_clearHistory);
    on<_GlobalSearchRemoveHistoryEvent>(_removeHistory);
  }

  Future<void> _loadData(
    _GlobalSearchLoadDataEvent event,
    Emitter<GlobalSearchState> emit,
  ) async {
    emit(state.copyWith(query: event.query ?? state.query, isLoading: true));
    final popular = await _popularOrEmpty();
    final history = await _historyOrEmpty();
    emit(state.copyWith(popular: popular, history: history, isLoading: false));
    if (state.hasQuery) add(GlobalSearchEvent.suggest());
  }

  Future<void> _queryChanged(
    _GlobalSearchQueryChangedEvent event,
    Emitter<GlobalSearchState> emit,
  ) async {
    emit(state.copyWith(query: event.query));
    if (!state.hasQuery) {
      emit(state.copyWith(suggestions: const []));
      return;
    }
    add(GlobalSearchEvent.suggest());
  }

  Future<void> _suggest(
    _GlobalSearchSuggestEvent event,
    Emitter<GlobalSearchState> emit,
  ) async {
    final query = state.query.trim();
    if (query.length < globalSearchMinQueryLength) return;
    try {
      final suggestions = await _repository.suggestions(
        query: query,
        limit: _suggestionsLimit,
      );
      if (state.query.trim() != query) return;
      emit(state.copyWith(suggestions: suggestions));
    } catch (e) {
      emit(state.copyWith(suggestions: const []));
    }
  }

  Future<void> _clearHistory(
    _GlobalSearchClearHistoryEvent event,
    Emitter<GlobalSearchState> emit,
  ) async {
    final previous = state.history;
    emit(state.copyWith(history: const [], errorMessage: null));
    try {
      await _repository.clearHistory();
    } catch (e) {
      emit(state.copyWith(history: previous, errorMessage: _errorMessage(e)));
    }
  }

  Future<void> _removeHistory(
    _GlobalSearchRemoveHistoryEvent event,
    Emitter<GlobalSearchState> emit,
  ) async {
    final previous = state.history;
    emit(
      state.copyWith(
        history: previous.where((e) => e.id != event.historyId).toList(),
        errorMessage: null,
      ),
    );
    try {
      await _repository.deleteHistory(historyId: event.historyId);
    } catch (e) {
      emit(state.copyWith(history: previous, errorMessage: _errorMessage(e)));
    }
  }

  Future<List<String>> _popularOrEmpty() async {
    try {
      return await _repository.popular(limit: _popularLimit);
    } catch (e) {
      return const [];
    }
  }

  Future<List<SearchHistoryItem>> _historyOrEmpty() async {
    try {
      return await _repository.history(limit: _historyLimit);
    } catch (e) {
      return const [];
    }
  }

  String? _errorMessage(Object error) {
    if (error is DioException && error.error is AppException) {
      return (error.error as AppException).message;
    }
    return null;
  }
}
