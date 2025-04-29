part of 'contents_by_category_bloc.dart';

@freezed
abstract class ContentByCategoryState with _$ContentByCategoryState {
  factory ContentByCategoryState.dataState({
    @Default([]) List<MainPageContent> contents,
    @Default(0) int categoryId,
    @Default(1) int page,
    @Default(20) int pageSize,
    @Default(true) bool isLoading,
    @Default(true) bool hasMore,
    @Default(ContentByCategoryType.contents) ContentByCategoryType type,
    String? query,
    ContentsByCategoryNavState? navState,
    ErrorState? errorState,
  }) = ContentByCategoryDataState;

  factory ContentByCategoryState.errorState() = ContentByCategoryErrorState;

  factory ContentByCategoryState.noContentState() =
      ContentByCategoryNoContentState;
}

enum ContentByCategoryType { contents, favorites }

@freezed
abstract class ContentsByCategoryNavState with _$ContentsByCategoryNavState {
  const factory ContentsByCategoryNavState.unauthorized() = Unauthorized;
}

@freezed
abstract class ErrorState with _$ErrorState {
  const factory ErrorState.notFound() = _NotFoundState;

  const factory ErrorState.failure() = __FailureState;
}
