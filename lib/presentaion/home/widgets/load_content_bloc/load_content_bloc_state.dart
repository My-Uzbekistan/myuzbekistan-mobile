



part of 'load_content_bloc.dart';

@freezed
abstract class LoadContentCategoryState with _$LoadContentCategoryState {
 factory  LoadContentCategoryState({
   @Default([]) List<MainPageContent> contents,
   @Default(0) int categoryId,
   @Default(1) int page,
   @Default(20) int pageSize,
   @Default(true) bool isLoading,
   @Default(true) bool hasMore,
}) = _LoadContentCategoryState;


}