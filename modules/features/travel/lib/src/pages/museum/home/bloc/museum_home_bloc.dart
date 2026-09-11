import 'dart:async';

import 'package:domain/domain.dart';
import 'package:travel/src/pages/museum/museum_error_extension.dart';
import 'package:shared/shared.dart';

part 'museum_home_event.dart';
part 'museum_home_state.dart';
part 'museum_home_bloc.freezed.dart';

@injectable
class MuseumHomeBloc extends Bloc<MuseumHomeEvent, MuseumHomeState> {
  final MuseumRepository _repository;
  final AppRefreshListener _refresh;
  StreamSubscription<ItemChange>? _itemSubscription;

  MuseumHomeBloc(this._repository, this._refresh) : super(MuseumHomeState()) {
    on<_MuseumHomeLoadDataEvent>(_loadData);
    on<_MuseumHomeToggleFavoriteEvent>(_toggleFavorite);
    on<_MuseumHomeFavoriteChangedEvent>(_favoriteChanged);

    _itemSubscription = _refresh
        .observeItems(RefreshEntity.museum)
        .listen(
          (change) => add(MuseumHomeEvent.favoriteChanged(change: change)),
        );
  }

  @override
  Future<void> close() {
    _itemSubscription?.cancel();
    return super.close();
  }

  void _favoriteChanged(
    _MuseumHomeFavoriteChangedEvent event,
    Emitter<MuseumHomeState> emit,
  ) {
    final change = event.change;
    final isFavorite = change.isFavorite;
    if (isFavorite == null) return;

    List<MuseumCard> applyIn(List<MuseumCard> items) =>
        items
            .map(
              (item) =>
                  item.id == change.id
                      ? item.copyWith(isFavorite: isFavorite)
                      : item,
            )
            .toList();

    emit(
      state.copyWith(
        popular: applyIn(state.popular),
        recommended: applyIn(state.recommended),
      ),
    );
  }

  Future<void> _loadData(
    _MuseumHomeLoadDataEvent event,
    Emitter<MuseumHomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    final position = LocationManager().getCurrentPosition();
    try {
      final home = await _repository.home(
        latitude: position?.latitude,
        longitude: position?.longitude,
      );
      emit(
        state.copyWith(
          cities: home.cities,
          popular: home.popular,
          recommended: home.recommended,
          loadFailed: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: e.errorMessage()));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _toggleFavorite(
    _MuseumHomeToggleFavoriteEvent event,
    Emitter<MuseumHomeState> emit,
  ) async {
    final museum = event.museum;
    final isFavorite = !museum.isFavorite;
    emit(_replace(museum.copyWith(isFavorite: isFavorite)));
    _refresh.notifyItem(
      ItemChange(
        entity: RefreshEntity.museum,
        id: museum.id,
        isFavorite: isFavorite,
      ),
    );
    try {
      if (isFavorite) {
        await _repository.addFavorite(museumId: museum.id);
      } else {
        await _repository.removeFavorite(museumId: museum.id);
      }
      _refresh.notify(AppRefreshTopic.museumFavorites);
    } catch (e) {
      _refresh.notifyItem(
        ItemChange(
          entity: RefreshEntity.museum,
          id: museum.id,
          isFavorite: museum.isFavorite,
        ),
      );
      emit(_replace(museum).copyWith(errorMessage: e.errorMessage()));
    }
  }

  MuseumHomeState _replace(MuseumCard museum) {
    List<MuseumCard> replaceIn(List<MuseumCard> items) =>
        items.map((item) => item.id == museum.id ? museum : item).toList();

    return state.copyWith(
      popular: replaceIn(state.popular),
      recommended: replaceIn(state.recommended),
      errorMessage: null,
    );
  }
}
