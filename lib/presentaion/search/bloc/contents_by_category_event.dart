part of 'contents_by_category_bloc.dart';

@freezed
abstract class ContentByCategoryEvent with _$ContentByCategoryEvent {
  factory ContentByCategoryEvent.init(
    int categoryId,
  ) = _InitialEvent;
  factory ContentByCategoryEvent.initFavorite(
  ) = _InitialFavoriteEvent;

  factory ContentByCategoryEvent.loadFavorites() = _LoadFavoritesEvent;
  factory ContentByCategoryEvent.requestFavorite() = _RequestFavorieEvent;

  factory ContentByCategoryEvent.loadMore() = _LoadMoreEvent;

  factory ContentByCategoryEvent.setQuery(String query) = _SetQueryEvent;

  factory ContentByCategoryEvent.loadContentEvent() = _LoadContentEvent;

  factory ContentByCategoryEvent.updateItemFavoriteWithPopResult({
    required bool isFavorite,
    required int contentId,
  }) = _UpdateItemFavoriteWithPopResult;

  factory ContentByCategoryEvent.updateItemFavorite({
    required int contentId,
    required bool isFavorite,
  }) = _UpdateItemFavoriteEvent;
}
