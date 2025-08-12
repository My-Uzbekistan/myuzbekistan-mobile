part of 'home_bloc.dart';

@Freezed(map: FreezedMapOptions(maybeMap: true))
abstract class HomeBlocState with _$HomeBlocState {
  const factory HomeBlocState.loading() = HomeBlocLoadingState;

  const factory HomeBlocState.dataState({
    @Default([]) List<Categories> categories,
    @Default([]) List<ContentCategories> contents,
    Temperature? temperature,
    @Default([]) List<Region> regions,
    @Default([]) List<String> favorites,
    @Default(0) int totalFavoriteCount,
    Region? selectedRegion,
    @Default(true) bool loadingContents,
    @Default(false) bool isRefreshing

  }) = HomeBlocDataState;

  const factory HomeBlocState.errorState() = HomeBlocErrorState;
}


