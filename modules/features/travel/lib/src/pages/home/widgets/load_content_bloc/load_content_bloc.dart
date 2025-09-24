

import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

part 'load_content_bloc_event.dart';

part 'load_content_bloc_state.dart';

part 'load_content_bloc.freezed.dart';

@injectable
class LoadContentBloc
    extends Bloc<LoadContentCategoryEvent, LoadContentCategoryState> {
  final Repository _repository;

  LoadContentBloc(Repository rp)
      : _repository = rp,
        super(LoadContentCategoryState(isLoading:false)) {
    on<_InitialEvent>(_onInitialEvent);
    on<_LoadNextEvent>(_onLoadNextEvent);
  }

  void _onInitialEvent(
      _InitialEvent event, Emitter<LoadContentCategoryState> emit) {
    emit(LoadContentCategoryState(
        contents: event.contents,
        isLoading: false,
        categoryId: event.categoryId,
        ));
  }


  var isLoading=false;
  Future<void> _onLoadNextEvent(
      _LoadNextEvent event, Emitter<LoadContentCategoryState> emit) async {
    debugPrint("LoadOmesdkfgsdkfjhsldfsdkjf");
    if(!isLoading && state.hasMore) {
      isLoading=true;
      emit(state.copyWith(isLoading: true));
      try {
        final result = await _repository.loadContentsByCategory(
            categoryId: state.categoryId,
            page: state.page,
            pageSize: state.pageSize);

        final set = Set.of(state.contents)..addAll(result);
        isLoading=false;
        emit(state.copyWith(
          isLoading: false,
          contents: set.toList(),
          page: state.page + 1,
          hasMore: result.length == state.pageSize,
        ));
      } catch (e) {
        isLoading=false;
        emit(state.copyWith(isLoading: false));
      }
    }
  }
}
