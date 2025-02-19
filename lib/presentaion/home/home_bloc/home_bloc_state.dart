part of 'home_bloc.dart';

@freezed
abstract class HomeBlocState with _$HomeBlocState {
  const factory HomeBlocState.loading() = _HomeBlocLoadingState;

  const factory HomeBlocState.dataState({
    @Default([]) List<Categories> categories,
    @Default([]) List<PlaceCategories> placeCategories,
  }) = HomeBlocDataState;
}
