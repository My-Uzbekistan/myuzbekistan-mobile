part of 'home_bloc.dart';


@freezed
abstract class HomeBlocEvent with _$HomeBlocEvent{
  factory HomeBlocEvent.initial() = _HomeBlocInitialEvent;
  factory HomeBlocEvent.loadDataEvent({@Default(false)bool isRefresh}) = _LoadDataEvent;
  factory HomeBlocEvent.changeRegion(int regionId) = _ChangeRegion;
  factory HomeBlocEvent.loadContents() = _LoadContentsEvent;
  factory HomeBlocEvent.checkPermission() = _CheckPermissionEvent;
  factory HomeBlocEvent.loadFavorites() = _LoadFavoritesEvent;
  factory HomeBlocEvent.loadPrayerTimes() = _LoadPayerTimes;
  factory HomeBlocEvent.loadWeather() = _LoadWeatherEvent;
  factory HomeBlocEvent.loadServices() = _LoadServicesEvent;
  factory HomeBlocEvent.loadCities() = _LoadCitiesEvent;
  factory HomeBlocEvent.loadBanners() = _LoadBannersEvent;
  factory HomeBlocEvent.loadHotels() = _LoadHotelsEvent;
  factory HomeBlocEvent.loadEvents() = _LoadEventsEvent;
  factory HomeBlocEvent.loadAirQuality() = _LoadAirQualityEvent;
}
