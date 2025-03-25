import 'dart:async';

import 'package:core/core.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uzbekistan_travel/core/listeners/appsettings_change_listener.dart';

part 'home_bloc.freezed.dart';

part 'home_bloc_event.dart';

part 'home_bloc_state.dart';

@injectable
class HomeBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  final Repository _repository;
  final AppStatusChangeListeners _appLocaleChangeListener;

  HomeBlocDataState dataState = HomeBlocState.dataState() as HomeBlocDataState;
  StreamSubscription? _streamSubscription;
  StreamSubscription? _refreshFavoriteSubscription;

  Timer? refreshFavoriteTimer;

  HomeBloc(Repository rp, AppStatusChangeListeners chl)
      : _repository = rp,
        _appLocaleChangeListener = chl,
        super(HomeBlocState.loading()) {
    on<_HomeBlocInitialEvent>((event, emit) async {
      add(HomeBlocEvent.loadDataEvent());
      _initialListens();
    });
    on<_LoadDataEvent>(_loadDataEvent);
    on<_ChangeRegion>(_changeRegion);
    on<_LoadContentsEvent>(_loadContentsEvent);
    on<_LoadFavoritesEvent>(_loadFavourites);
  }

  void _initialListens() {
    _streamSubscription?.cancel();
    _streamSubscription =
        _appLocaleChangeListener.refreshListener.listen((event) {
      add(HomeBlocEvent.loadDataEvent());
    });

    _refreshFavoriteSubscription?.cancel();
    _refreshFavoriteSubscription =
        _appLocaleChangeListener.refreshFavoriteListener.listen((rf) {
      refreshFavoriteTimer?.cancel();
      refreshFavoriteTimer = Timer(const Duration(milliseconds: 500),
          () => add(HomeBlocEvent.loadFavorites()));
    });
  }

  Future<void> _loadDataEvent(
      _LoadDataEvent event, Emitter<HomeBlocState> emit) async {
    dataState = HomeBlocDataState();
    emit(HomeBlocState.loading());
    await _loadCategoriesAndRegions(emit);
    add(HomeBlocEvent.loadFavorites());
  }

  Future<void> _loadContentsEvent(
      _LoadContentsEvent event, Emitter<HomeBlocState> emit) async {
    try {
      final result = await _repository.loadContents(
          regionId: dataState.selectedRegion?.id);
      dataState = dataState.copyWith(contents: result, loadingContents: false);
      emit(dataState);
    } catch (e) {
      dataState = dataState.copyWith(loadingContents: false);
      emit(dataState.copyWith(loadingContents: false));
    }
  }

  void _changeRegion(_ChangeRegion event, Emitter<HomeBlocState> emit) {
    dataState = dataState.copyWith(
        selectedRegion:
            dataState.regions.firstWhere((e) => e.id == event.regionId),
        loadingContents: true);
    emit(dataState);
    add(HomeBlocEvent.loadContents());
  }

  Future<void> _loadCategoriesAndRegions(Emitter<HomeBlocState> e) async {
    try {
      final result = await Future.wait(
        [_repository.loadRegions(), _repository.loadCategories()],
      );
      final regions = result[0] as List<Region>;
      final categories = result[1] as List<Categories>;
      dataState = dataState.copyWith(
          regions: regions,
          selectedRegion: regions.firstOrNull,
          categories: categories);
      add(HomeBlocEvent.loadContents());
    } catch (e) {
      debugPrint("HomeCategories 3xaption  $e");
    }
  }

  loadData() async {
    try {
      final content = await Future.wait(
          [_repository.loadCategories(), _repository.loadContents()]);
      final categories = content[0] as List<Categories>;
      final placeCategories = (content[1] as List<ContentCategories>)
          .filter((e) => e.contents.isNotEmpty || e.recommended != null)
          .toList();

      emit(HomeBlocState.dataState(
          categories: categories, contents: placeCategories));
    } catch (e) {
      debugPrint("Exaption ${e}");
    }
  }

  Future<void> _loadFavourites(
      _LoadFavoritesEvent event, Emitter<HomeBlocState> emit) async {
    try {
      final result = await _repository.loadFavourites(
        page: 1,
        pageSize: 3,
      );

      dataState = dataState.copyWith(
          totalFavoriteCount: result.totalItems,
          favorites: result.contents.map((e) => e.mainPhoto ?? "").toList());
      if (state is HomeBlocDataState) {
        emit(dataState);
      }
    } catch (e) {
      debugPrint("Favourites Exaprion ${e} ");
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    _refreshFavoriteSubscription?.cancel();
    refreshFavoriteTimer?.cancel();
    return super.close();
  }
}
