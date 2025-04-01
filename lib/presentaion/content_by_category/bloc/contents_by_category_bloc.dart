import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uzbekistan_travel/core/listeners/appsettings_change_listener.dart';
import 'package:uzbekistan_travel/core/utils/auth_check.dart';

part 'contents_by_category_event.dart';

part 'contents_by_category_state.dart';

part 'contents_by_category_bloc.freezed.dart';

@injectable
class ContentByCategoryBloc
    extends Bloc<ContentByCategoryEvent, ContentByCategoryState> {
  final Repository _repository;
  final AppStatusChangeListeners _changeStatusListener;
  Timer? _timer;

  ContentByCategoryBloc(this._repository, this._changeStatusListener)
      : super(ContentByCategoryState()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_InitialFavoriteEvent>(_onInitFavoriteEvent);
    on<_LoadFavoritesEvent>(_loadFavorites);
    on<_SetQueryEvent>(_onSetQueryEvent);
    on<_LoadMoreEvent>(_onLoadMoreEvent);
    on<_UpdateItemFavoriteWithPopResult>(_updateItemFavoriteWithPopResult);
    on<_UpdateItemFavoriteEvent>(_updateFavoriteItem);
    on<_LoadContentEvent>((event, emit) async {
      emit(ContentByCategoryState(
        categoryId: state.categoryId,
        query: state.query,
      ));
      await _loadContentByCategory(emit);
    });
  }

  void _updateFavoriteItem(
      _UpdateItemFavoriteEvent event, Emitter<ContentByCategoryState> emit) {
    if(state.navState!=null) {
      emit(state.copyWith(navState: null));
    }
    AuthCheck.authCheck(
      unauthorized: (){
        emit(state.copyWith(navState: ContentsByCategoryNavState.unauthorized()));
      },
      authSuccess: (){
        add(ContentByCategoryEvent.updateItemFavoriteWithPopResult(
            isFavorite: event.isFavorite, contentId: event.contentId));
        try {
          final result = _repository.favoriteChange(
              contentId: event.contentId, setFavorite: event.isFavorite);
          _changeStatusListener.refreshFavorite();
        } catch (e) {}
      }
    );

  }

  void _updateItemFavoriteWithPopResult(_UpdateItemFavoriteWithPopResult event,
      Emitter<ContentByCategoryState> emit) {
    if (state.type == ContentByCategoryType.favorites) {
      if (!event.isFavorite) {
        emit(state.copyWith(
            contents: List.of(state.contents)
              ..removeWhere((e) => e.contentId == event.contentId)));
      }
    } else {
      final index =
          state.contents.indexWhere((e) => e.contentId == event.contentId);
      final content = state.contents[index];
      emit(state.copyWith(
        contents: List.of(state.contents)
          ..removeAt(index)
          ..insert(index, content.copyWith(isFavorite: event.isFavorite)),
      ));
    }
  }

  _loadFavorites(
      _LoadFavoritesEvent event, Emitter<ContentByCategoryState> emit) async {
    try {
      final result = await _repository.loadFavourites(
        page: state.page,
        pageSize: state.pageSize,
        search: state.query,
      );
      emit(state.copyWith(
        isLoading: false,
        contents: List.of(state.contents)..addAll(result.contents),
        hasMore: result.contents.length == state.pageSize,
      ));
    } catch (e) {}
  }

  Future<void> _onInitialEvent(
      _InitialEvent event, Emitter<ContentByCategoryState> emit) async {
    emit(state.copyWith(categoryId: event.categoryId));
    await _loadContentByCategory(emit);
  }

  Future<void> _onInitFavoriteEvent(
      _InitialFavoriteEvent event, Emitter<ContentByCategoryState> emit) async {
    emit(state.copyWith(type: ContentByCategoryType.favorites));
    await _loadContentByCategory(emit);
  }

  void _onSetQueryEvent(
      _SetQueryEvent event, Emitter<ContentByCategoryState> emit) {
    if (event.query.length >= 3 || event.query.isEmpty) {
      if (state.query != event.query) {
        emit(state.copyWith(query: event.query));
        _timer?.cancel();
        _timer = Timer(
            const Duration(milliseconds: 300), () => add(_LoadContentEvent()));
      }
    } else {
      _timer?.cancel();
      emit(state.copyWith(query: event.query));
    }
  }

  Future<void> _onLoadMoreEvent(
      _LoadMoreEvent event, Emitter<ContentByCategoryState> emit) async {
    if (!state.isLoading && state.hasMore) {
      emit(state.copyWith(isLoading: true, page: state.page + 1));
      await _loadContentByCategory(emit);
    }
  }

  Future<void> _loadContentByCategory(
      Emitter<ContentByCategoryState> emit) async {
    if (state.type == ContentByCategoryType.contents) {
      try {
        final result = await _repository.loadContentsByCategory(
          categoryId: state.categoryId,
          page: state.page,
          pageSize: state.pageSize,
          search: state.query,
        );

        emit(state.copyWith(
          isLoading: false,
          contents: List.of(state.contents)..addAll(result),
          hasMore: result.length >= state.pageSize,
        ));
      } catch (e) {
        emit(state.copyWith(
          isLoading: false,
        ));
      }
    } else {
      add(ContentByCategoryEvent.loadFavorites());
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
