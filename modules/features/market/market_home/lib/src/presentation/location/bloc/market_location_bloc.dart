import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_location_event.dart';
part 'market_location_state.dart';
part 'market_location_bloc.freezed.dart';

@injectable
class MarketLocationBloc
    extends Bloc<MarketLocationEvent, MarketLocationState> {
  final MarketRepository _repository;

  MarketLocationBloc(this._repository) : super(MarketLocationState()) {
    on<_MarketLocationStartEvent>(_start);
  }

  Future<void> _start(
    _MarketLocationStartEvent event,
    Emitter<MarketLocationState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedCityId: event.selectedCityId ?? _repository.selectedCityId(),
        isLoading: true,
        errorMessage: null,
      ),
    );
    try {
      final cities = await _repository.cities();
      emit(state.copyWith(cities: cities, loadFailed: false));
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
