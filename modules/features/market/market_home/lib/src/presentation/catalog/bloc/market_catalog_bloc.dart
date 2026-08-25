import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_catalog_event.dart';
part 'market_catalog_state.dart';
part 'market_catalog_bloc.freezed.dart';

@injectable
class MarketCatalogBloc extends Bloc<MarketCatalogEvent, MarketCatalogState> {
  final MarketRepository _repository;

  MarketCatalogBloc(this._repository) : super(MarketCatalogState()) {
    on<_MarketCatalogLoadDataEvent>(_loadData);
  }

  Future<void> _loadData(
    _MarketCatalogLoadDataEvent event,
    Emitter<MarketCatalogState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final categories = await _repository.categories();
      emit(state.copyWith(categories: categories, loadFailed: false));
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: _errorMessage(e)));
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
