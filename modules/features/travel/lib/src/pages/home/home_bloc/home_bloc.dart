import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/prayer_times.dart';
import 'package:travel/src/pages/home/widgets/prayers/prayers.dart';

part 'home_bloc.freezed.dart';

part 'home_bloc_event.dart';

part 'home_bloc_state.dart';

@injectable
class HomeBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  final Repository _repository;
  final AppStatusChangeListeners _appLocaleChangeListener;
  final SecurityStorage _securityStorage;
  HomeBlocDataState dataState = HomeBlocState.dataState() as HomeBlocDataState;
  StreamSubscription? _streamSubscription;
  StreamSubscription? _refreshFavoriteSubscription;
  StreamSubscription? _prayersSubscription;

  Timer? refreshFavoriteTimer;

  HomeBloc(Repository rp, AppStatusChangeListeners chl,this._securityStorage)
      : _repository = rp,
        _appLocaleChangeListener = chl,
        super(HomeBlocState.loading()) {
    on<_HomeBlocInitialEvent>((event, emit) async {
      add(HomeBlocEvent.checkPermission());

      _initialListens();
    });
    on<_LoadDataEvent>(_loadDataEvent);
    on<_ChangeRegion>(_changeRegion);
    on<_LoadContentsEvent>(_loadContentsEvent);
    on<_CheckPermissionEvent>(_checkPermissionEvent);
    on<_LoadFavoritesEvent>(_loadFavourites);
    on<_LoadPayerTimes>(_loadPrayerTimes);
    on<_LoadWeatherEvent>(_loadWeatherEvent);
  }

  void _initialListens() {
    _streamSubscription?.cancel();
    _streamSubscription =
        _appLocaleChangeListener.refreshListener.listen((event,) {
          add(HomeBlocEvent.loadDataEvent());
        });
    _refreshFavoriteSubscription?.cancel();
    _refreshFavoriteSubscription = _appLocaleChangeListener
        .refreshFavoriteListener
        .listen((rf) {
      refreshFavoriteTimer?.cancel();
      refreshFavoriteTimer = Timer(
        const Duration(milliseconds: 500),
            () => add(HomeBlocEvent.loadFavorites()),
      );
    });
    _prayersSubscription?.cancel();
    _prayersSubscription = _appLocaleChangeListener
        .prayersToggleListenChangeListener
        .listen((value) {
      if (value) {
        add(HomeBlocEvent.loadPrayerTimes());
      } else {
        dataState = dataState.copyWith(prayers: []);
        if (state is HomeBlocDataState) {
          emit(dataState);
        }
      }
    });
  }

  Future<void> _checkPermissionEvent(_CheckPermissionEvent event,
      Emitter<HomeBlocState> emit,) async {
    final locationManager = LocationManager();
    await locationManager.getCurrentLocation();
    add(HomeBlocEvent.loadDataEvent());
    add(HomeBlocEvent.loadPrayerTimes());
  }

  Future<void> _loadDataEvent(_LoadDataEvent event,
      Emitter<HomeBlocState> emit,) async {
    if (event.isRefresh) {
      emit(dataState.copyWith(isRefreshing: true));
    } else {
      dataState = HomeBlocDataState();
      emit(HomeBlocState.loading());
    }
    await _loadCategoriesAndRegions(emit);
    add(HomeBlocEvent.loadFavorites());
    add(HomeBlocEvent.loadPrayerTimes());
  }

  Future<void> _loadContentsEvent(_LoadContentsEvent event,
      Emitter<HomeBlocState> emit,) async {
    try {
      final regionId = dataState.selectedRegion?.id;
      final contentFuture = await _repository
          .loadContents(regionId: regionId);

      dataState = dataState.copyWith(
        contents: contentFuture,
        loadingContents: false,
        isRefreshing: false,
      );
      emit(dataState);
    } catch (e) {
      dataState = dataState.copyWith(
        loadingContents: false,
        isRefreshing: false,
      );
      emit(dataState.copyWith(loadingContents: false));
    }
  }
  Future<void> _loadWeatherEvent(_LoadWeatherEvent event,
      Emitter<HomeBlocState> emit,) async {

    try{
      final weatherFuture = await _repository.loadWeather(regionId: dataState.selectedRegion!.id);
      dataState = dataState.copyWith(
        temperature: weatherFuture,
      );
      if(state is HomeBlocDataState) {
        emit(dataState);
      }

    }catch(_){}

  }

  void _changeRegion(_ChangeRegion event, Emitter<HomeBlocState> emit) {
    dataState = dataState.copyWith(
      selectedRegion: dataState.regions.firstWhere(
            (e) => e.id == event.regionId,
      ),
      loadingContents: true,
    );
    emit(dataState);
    add(HomeBlocEvent.loadContents());
    add(HomeBlocEvent.loadWeather());
  }

  Future<void> _loadCategoriesAndRegions(Emitter<HomeBlocState> e) async {
    try {
      final result = await Future.wait([
        _repository.loadRegions(),
        _repository.loadCategories(),
      ]);
      final regions = result[0] as List<Region>;
      final categories = result[1] as List<Categories>;
      dataState = dataState.copyWith(
        regions: regions,
        selectedRegion: regions.firstOrNull,
        categories: categories,
      );
      add(HomeBlocEvent.loadContents());
      add(HomeBlocEvent.loadWeather());
    } catch (e) {
      emit(HomeBlocState.errorState());
    }
  }

  Future<void> _loadFavourites(_LoadFavoritesEvent event,
      Emitter<HomeBlocState> emit,) async {
    try {
      final result = await _repository.loadFavourites(page: 1, pageSize: 3);
      dataState = dataState.copyWith(
        totalFavoriteCount: result.totalItems,
        favorites: result.contents.map((e) => e.mainPhoto ?? "").toList(),
      );
      if (state is HomeBlocDataState) {
        emit(dataState);
      }
    } catch (_) {}
  }

  void _loadPrayerTimes(_LoadPayerTimes event, Emitter<HomeBlocState> emit) {
    var prayers = dataState.prayers;


    if (prayers.isEmpty && _securityStorage.isShowPrayerTimes()) {
        final locationManager = LocationManager();
        final currentLocation = locationManager.getCurrentPosition();
        final prayerTimes = getPrayerTimes(
          latLng:
          currentLocation != null
              ? LatLng(currentLocation.latitude, currentLocation.longitude)
              : null,);
        prayers = [
          PrayerTimesItemModel(
              time: prayerTimes.fajr, type: PrayerTimesType.fajr),
          PrayerTimesItemModel(
            time: prayerTimes.sunrise,
            type: PrayerTimesType.sunrise,
          ),
          PrayerTimesItemModel(
            time: prayerTimes.dhuhr,
            type: PrayerTimesType.dhuhr,
          ),
          PrayerTimesItemModel(
              time: prayerTimes.asr, type: PrayerTimesType.asr),
          PrayerTimesItemModel(
            time: prayerTimes.maghrib,
            type: PrayerTimesType.maghrib,
          ),
          PrayerTimesItemModel(
              time: prayerTimes.isha, type: PrayerTimesType.isha),
        ];

    }
    dataState = dataState.copyWith(
      prayers: PrayerTimesItemModel.markNext(prayers),
    );
    if (state is HomeBlocDataState) {
      emit(dataState);
    }
  }

    @override
    Future<void> close() {
      _streamSubscription?.cancel();
      _refreshFavoriteSubscription?.cancel();
      refreshFavoriteTimer?.cancel();
      _prayersSubscription?.cancel();
      debugPrint("homeBLocClose");
      return super.close();
    }
  }
