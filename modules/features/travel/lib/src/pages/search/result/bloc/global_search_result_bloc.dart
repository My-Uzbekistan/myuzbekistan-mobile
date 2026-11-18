import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'global_search_result_event.dart';
part 'global_search_result_state.dart';
part 'global_search_result_bloc.freezed.dart';

const int _groupItemsLimit = 5;

@injectable
class GlobalSearchResultBloc
    extends Bloc<GlobalSearchResultEvent, GlobalSearchResultState> {
  final SearchRepository _repository;

  GlobalSearchResultBloc(this._repository) : super(GlobalSearchResultState()) {
    on<_GlobalSearchResultLoadDataEvent>(_loadData);
  }

  Future<void> _loadData(
    _GlobalSearchResultLoadDataEvent event,
    Emitter<GlobalSearchResultState> emit,
  ) async {
    final query = event.query.trim();
    emit(state.copyWith(query: query, isLoading: true, errorMessage: null));
    final position = LocationManager().getCurrentPosition();
    try {
      final result = await _repository.search(
        query: query,
        limit: _groupItemsLimit,
        latitude: position?.latitude,
        longitude: position?.longitude,
      );
      emit(state.copyWith(result: result));
    } catch (e) {
      emit(state.copyWith(result: null, errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isLoading: false));
  }

  String? _errorMessage(Object error) {
    if (error is DioException && error.error is AppException) {
      return (error.error as AppException).message;
    }
    return null;
  }
}
