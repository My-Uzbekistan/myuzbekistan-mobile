import 'dart:async';

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
  final AppRefreshListener _refreshListener;
  StreamSubscription<ItemChange>? _itemSubscription;

  MuseumDetailBloc(this._repository, this._refreshListener)
    : super(MuseumDetailState()) {
    on<_MuseumDetailStartEvent>(_start);
    on<_MuseumDetailRefreshEvent>(_refresh);
    on<_MuseumDetailToggleFavoriteEvent>(_toggleFavorite);
    on<_MuseumDetailFavoriteChangedEvent>(_favoriteChanged);

    _itemSubscription = _refreshListener
        .observeItems(RefreshEntity.museum)
        .listen(
          (change) => add(MuseumDetailEvent.favoriteChanged(change: change)),
        );
  }

  @override
  Future<void> close() {
    _itemSubscription?.cancel();
    return super.close();
  }

  void _favoriteChanged(
    _MuseumDetailFavoriteChangedEvent event,
    Emitter<MuseumDetailState> emit,
  ) {
    final detail = state.detail;
    final change = event.change;
    final isFavorite = change.isFavorite;
    if (detail == null || isFavorite == null || detail.id != change.id) return;

    emit(state.copyWith(detail: detail.copyWith(isFavorite: isFavorite)));
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
    _refreshListener.notifyItem(
      ItemChange(
        entity: RefreshEntity.museum,
        id: detail.id,
        isFavorite: isFavorite,
      ),
    );
    try {
      if (isFavorite) {
        await _repository.addFavorite(museumId: detail.id);
      } else {
        await _repository.removeFavorite(museumId: detail.id);
      }
      _refreshListener.notify(AppRefreshTopic.museumFavorites);
    } catch (e) {
      _refreshListener.notifyItem(
        ItemChange(
          entity: RefreshEntity.museum,
          id: detail.id,
          isFavorite: detail.isFavorite,
        ),
      );
      emit(state.copyWith(detail: detail, errorMessage: e.errorMessage()));
    }
  }
}
