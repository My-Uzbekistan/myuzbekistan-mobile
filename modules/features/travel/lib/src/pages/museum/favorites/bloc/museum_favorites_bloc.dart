import 'dart:async';

import 'package:domain/domain.dart';
import 'package:travel/src/pages/museum/museum_error_extension.dart';
import 'package:shared/shared.dart';

part 'museum_favorites_event.dart';
part 'museum_favorites_state.dart';
part 'museum_favorites_bloc.freezed.dart';

@injectable
class MuseumFavoritesBloc
    extends Bloc<MuseumFavoritesEvent, MuseumFavoritesState> {
  final MuseumRepository _repository;
  final AppRefreshListener _refresh;
  StreamSubscription<AppRefreshTopic>? _refreshSubscription;

  MuseumFavoritesBloc(this._repository, this._refresh)
    : super(MuseumFavoritesState()) {
    on<_MuseumFavoritesLoadDataEvent>(_loadData);
    on<_MuseumFavoritesRemoveEvent>(_remove);

    _refreshSubscription = _refresh
        .observe({AppRefreshTopic.museumFavorites})
        .listen((_) => add(MuseumFavoritesEvent.loadData()));
  }

  @override
  Future<void> close() {
    _refreshSubscription?.cancel();
    return super.close();
  }

  Future<void> _loadData(
    _MuseumFavoritesLoadDataEvent event,
    Emitter<MuseumFavoritesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final museums = await _repository.favorites();
      emit(state.copyWith(museums: museums, loadFailed: false));
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: e.errorMessage()));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _remove(
    _MuseumFavoritesRemoveEvent event,
    Emitter<MuseumFavoritesState> emit,
  ) async {
    final museum = event.museum;
    final previous = state.museums;
    emit(
      state.copyWith(
        museums: previous.where((item) => item.id != museum.id).toList(),
        errorMessage: null,
      ),
    );
    _refresh.notifyItem(
      ItemChange(
        entity: RefreshEntity.museum,
        id: museum.id,
        isFavorite: false,
      ),
    );
    try {
      await _repository.removeFavorite(museumId: museum.id);
    } catch (e) {
      _refresh.notifyItem(
        ItemChange(
          entity: RefreshEntity.museum,
          id: museum.id,
          isFavorite: true,
        ),
      );
      emit(state.copyWith(museums: previous, errorMessage: e.errorMessage()));
    }
  }
}
