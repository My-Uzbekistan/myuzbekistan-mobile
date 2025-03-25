part of 'home_bloc.dart';


@freezed
abstract class HomeBlocEvent with _$HomeBlocEvent{
  factory HomeBlocEvent.initial() = _HomeBlocInitialEvent;
  factory HomeBlocEvent.loadDataEvent() = _LoadDataEvent;
  factory HomeBlocEvent.changeRegion(int regionId) = _ChangeRegion;
  factory HomeBlocEvent.loadContents() = _LoadContentsEvent;
  factory HomeBlocEvent.loadFavorites() = _LoadFavoritesEvent;
}
