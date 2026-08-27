import 'package:domain/domain.dart';
import 'package:travel/src/pages/museum/museum_error_extension.dart';
import 'package:shared/shared.dart';

part 'museum_detail_event.dart';
part 'museum_detail_state.dart';
part 'museum_detail_bloc.freezed.dart';

const int _reviewsPageSize = 15;

@injectable
class MuseumDetailBloc extends Bloc<MuseumDetailEvent, MuseumDetailState> {
  final MuseumRepository _repository;

  MuseumDetailBloc(this._repository) : super(MuseumDetailState()) {
    on<_MuseumDetailStartEvent>(_start);
    on<_MuseumDetailRefreshEvent>(_refresh);
    on<_MuseumDetailToggleFavoriteEvent>(_toggleFavorite);
  }

  Future<void> _start(
    _MuseumDetailStartEvent event,
    Emitter<MuseumDetailState> emit,
  ) async {
    emit(state.copyWith(museumId: event.museumId));
    await _fetch(emit);
  }

  Future<void> _refresh(
    _MuseumDetailRefreshEvent event,
    Emitter<MuseumDetailState> emit,
  ) async {
    emit(state.copyWith(isRefreshing: true));
    await _fetch(emit);
    emit(state.copyWith(isRefreshing: false));
  }

  Future<void> _fetch(Emitter<MuseumDetailState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    final position = LocationManager().getCurrentPosition();
    try {
      final detail = await _repository.detail(
        museumId: state.museumId,
        latitude: position?.latitude,
        longitude: position?.longitude,
      );
      emit(state.copyWith(detail: detail, loadFailed: false));
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: e.errorMessage()));
    }
    emit(state.copyWith(isLoading: false));

    try {
      final reviews = await _repository.reviews(
        museumId: state.museumId,
        page: 1,
        pageSize: _reviewsPageSize,
      );
      emit(state.copyWith(reviews: reviews));
    } catch (_) {
      emit(state.copyWith(reviews: null));
    }
  }

  Future<void> _toggleFavorite(
    _MuseumDetailToggleFavoriteEvent event,
    Emitter<MuseumDetailState> emit,
  ) async {
    final detail = state.detail;
    if (detail == null) return;

    final isFavorite = !detail.isFavorite;
    emit(state.copyWith(detail: detail.copyWith(isFavorite: isFavorite)));
    try {
      if (isFavorite) {
        await _repository.addFavorite(museumId: detail.id);
      } else {
        await _repository.removeFavorite(museumId: detail.id);
      }
    } catch (e) {
      emit(state.copyWith(detail: detail, errorMessage: e.errorMessage()));
    }
  }
}
