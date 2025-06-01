
part of 'load_content_bloc.dart';


@freezed
abstract class LoadContentCategoryEvent with _$LoadContentCategoryEvent{

  factory  LoadContentCategoryEvent.init(int categoryId,List<MainPageContent> contents) = _InitialEvent;
  factory  LoadContentCategoryEvent.loadNext() = _LoadNextEvent;

}