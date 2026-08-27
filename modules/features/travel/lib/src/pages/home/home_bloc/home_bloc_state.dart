part of 'home_bloc.dart';

@Freezed(map: FreezedMapOptions(maybeMap: true))
abstract class HomeBlocState with _$HomeBlocState {
  const factory HomeBlocState.loading() = HomeBlocLoadingState;

  const factory HomeBlocState.dataState({
    @Default([]) List<Categories> categories,
    @Default([]) List<ServiceAction> services,
    @Default([]) List<CatalogItemModel> catalogServices,
    @Default([]) List<ContentCategories> contents,
    @Default([]) List<City> cities,
    String? citiesWeekend,
    @Default([]) List<BannerItem> banners,
    String? backgroundImage,
    @Default(true) bool loadingBackground,
    @Default([]) List<MainPageContent> hotels,
    @Default([]) List<MainPageContent> events,
    AirQuality? airQuality,
    Temperature? temperature,
    @Default([]) List<Region> regions,
    PrayerTimes? prayerTimes,
    Region? selectedRegion,
    @Default(true) bool loadingContents,
    @Default(false) bool isRefreshing


  }) = HomeBlocDataState;


  const factory HomeBlocState.errorState() = HomeBlocErrorState;
}


