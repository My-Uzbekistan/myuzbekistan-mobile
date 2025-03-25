part of 'contents_by_category_bloc.dart';

@freezed
abstract class ContentByCategoryState with _$ContentByCategoryState {
  factory ContentByCategoryState(
      {@Default([]) List<MainPageContent> contents,
      @Default(0) int categoryId,
      @Default(1) int page,
      @Default(20) int pageSize,
      @Default(true) bool isLoading,
      @Default(true) bool hasMore,
      @Default(ContentByCategoryType.contents) ContentByCategoryType type,
      String? query}) = _ContentByCategoryState;
}

enum ContentByCategoryType { contents, favorites }
