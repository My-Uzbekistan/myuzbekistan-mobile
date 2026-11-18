import 'dart:async';

import 'package:domain/domain.dart';
import 'package:travel/src/pages/museum/museum_error_extension.dart';
import 'package:shared/shared.dart';

part 'museum_list_event.dart';
part 'museum_list_state.dart';
part 'museum_list_bloc.freezed.dart';

const int _pageSize = 20;

@injectable
class MuseumListBloc extends Bloc<MuseumListEvent, MuseumListState> {
  final MuseumRepository _repository;
  final AppRefreshListener _refresh;
  StreamSubscription<ItemChange>? _itemSubscription;

  MuseumListBloc(this._repository, this._refresh) : super(MuseumListState()) {
    on<_MuseumListStartEvent>(_start);
    on<_MuseumListApplyQueryEvent>(_applyQuery);
    on<_MuseumListChangeSortEvent>(_changeSort);
    on<_MuseumListLoadMoreEvent>(_loadMore);
    on<_MuseumListToggleFavoriteEvent>(_toggleFavorite);
    on<_MuseumListFavoriteChangedEvent>(_favoriteChanged);

    _itemSubscription = _refresh
        .observeItems(RefreshEntity.museum)
        .listen(
          (change) => add(MuseumListEvent.favoriteChanged(change: change)),
        );
  }

  @override
  Future<void> close() {
    _itemSubscription?.cancel();
    return super.close();
  }

  void _favoriteChanged(
    _MuseumListFavoriteChangedEvent event,
    Emitter<MuseumListState> emit,
  ) {
    final change = event.change;
    final isFavorite = change.isFavorite;
    if (isFavorite == null) return;

    emit(
      state.copyWith(
        items:
            state.items
                .map(
                  (item) =>
                      item.id == change.id
                          ? item.copyWith(isFavorite: isFavorite)
                          : item,
                )
                .toList(),
      ),
    );
  }

  Future<void> _start(
    _MuseumListStartEvent event,
    Emitter<MuseumListState> emit,
  ) async {
    emit(
      state.copyWith(
        search: event.search,
        cityId: event.cityId,
        cityName: event.cityName,
      ),
    );
    await _fetchFirstPage(emit);
  }

  Future<void> _applyQuery(
    _MuseumListApplyQueryEvent event,
    Emitter<MuseumListState> emit,
  ) async {
    emit(
      state.copyWith(
        search: event.query.search,
        cityId: event.query.cityId,
        cityName: event.query.cityName,
      ),
    );
    await _fetchFirstPage(emit);
  }

  Future<void> _changeSort(
    _MuseumListChangeSortEvent event,
    Emitter<MuseumListState> emit,
  ) async {
    if (event.sort == state.sort) return;
    emit(state.copyWith(sort: event.sort));
    await _fetchFirstPage(emit);
  }

  Future<void> _fetchFirstPage(Emitter<MuseumListState> emit) async {
    emit(state.copyWith(isFirstLoading: true, errorMessage: null));
    final position = LocationManager().getCurrentPosition();
    try {
      final result = await _repository.museums(
        page: 1,
        pageSize: _pageSize,
        search: state.search,
        city: state.cityId,
        sort: state.sort,
        latitude: position?.latitude,
        longitude: position?.longitude,
      );
      emit(
        state.copyWith(
          items: result.items,
          totalItems: result.totalItems,
          page: 2,
          isLast: !result.hasNext,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          items: const [],
          totalItems: 0,
          isLast: true,
          errorMessage: e.errorMessage(),
        ),
      );
    }
    emit(state.copyWith(isFirstLoading: false));
  }

  Future<void> _loadMore(
    _MuseumListLoadMoreEvent event,
    Emitter<MuseumListState> emit,
  ) async {
    if (state.isLoading || state.isFirstLoading || state.isLast) return;

    emit(state.copyWith(isLoading: true, errorMessage: null));
    final position = LocationManager().getCurrentPosition();
    try {
      final result = await _repository.museums(
        page: state.page,
        pageSize: _pageSize,
        search: state.search,
        city: state.cityId,
        sort: state.sort,
        latitude: position?.latitude,
        longitude: position?.longitude,
      );
      emit(
        state.copyWith(
          items: [...state.items, ...result.items],
          totalItems: result.totalItems,
          page: state.page + 1,
          isLast: !result.hasNext,
        ),
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: e.errorMessage()));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _toggleFavorite(
    _MuseumListToggleFavoriteEvent event,
    Emitter<MuseumListState> emit,
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

  MuseumListState _replace(MuseumCard museum) {
    return state.copyWith(
      items:
          state.items
              .map((item) => item.id == museum.id ? museum : item)
              .toList(),
      errorMessage: null,
    );
  }
}
