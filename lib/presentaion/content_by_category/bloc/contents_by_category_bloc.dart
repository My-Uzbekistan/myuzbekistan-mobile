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
  late int categoryId;
  ContentByCategoryType type = ContentByCategoryType.contents;

  ContentByCategoryBloc(this._repository, this._changeStatusListener)
      : super(ContentByCategoryState.dataState()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_InitialFavoriteEvent>(_onInitFavoriteEvent);
    on<_LoadFavoritesEvent>(_loadFavorites);
    on<_SetQueryEvent>(_onSetQueryEvent);
    on<_LoadMoreEvent>(_onLoadMoreEvent);
    on<_UpdateItemFavoriteWithPopResult>(_updateItemFavoriteWithPopResult);
    on<_UpdateItemFavoriteEvent>(_updateFavoriteItem);
    on<_LoadContentEvent>((event, emit) async {
      if (state is ContentByCategoryDataState) {
        final currentState = state as ContentByCategoryDataState;
        emit(currentState.copyWith(
            categoryId: currentState.categoryId, query: currentState.query));
      } else {
        emit(ContentByCategoryState.dataState());
      }
      await _loadContentByCategory(emit);
    });
  }

  void _updateFavoriteItem(
      _UpdateItemFavoriteEvent event, Emitter<ContentByCategoryState> emit) {
    debugPrint("updateFavorite change ${event.isFavorite}");
    if (state is ContentByCategoryDataState) {
      final currentState = state as ContentByCategoryDataState;
      if (currentState.navState != null) {
        emit(currentState.copyWith(navState: null));
      }
      AuthCheck.authCheck(unauthorized: () {
        emit(currentState.copyWith(
            navState: ContentsByCategoryNavState.unauthorized()));
      }, authSuccess: () {
        try {
          final result = _repository.favoriteChange(
              contentId: event.contentId, setFavorite: event.isFavorite);
          add(ContentByCategoryEvent.updateItemFavoriteWithPopResult(
              isFavorite: event.isFavorite, contentId: event.contentId));
          _changeStatusListener.refreshFavorite();
        } catch (e) {}
      });
    }
  }

  void _updateItemFavoriteWithPopResult(_UpdateItemFavoriteWithPopResult event,
      Emitter<ContentByCategoryState> emit) {
    if (state is ContentByCategoryDataState) {
      final currentState = state as ContentByCategoryDataState;
      if (type == ContentByCategoryType.favorites) {
        if (!event.isFavorite) {
          emit(currentState.copyWith(
              contents: List.of(currentState.contents)
                ..removeWhere((e) => e.contentId == event.contentId)));
        }
      } else {
        debugPrint("updateFavorite popResult ${event.isFavorite}");

        final index = currentState.contents
            .indexWhere((e) => e.contentId == event.contentId);

        final content = currentState.contents[index];
        final contentCopy =
            currentState.contents[index].copyWith(isFavorite: event.isFavorite);

        final contents= List.of(currentState.contents);

        contents[index]=contentCopy;
        emit(currentState.copyWith(
          contents: contents,
        ));
      }
    }
  }

  _loadFavorites(
      _LoadFavoritesEvent event, Emitter<ContentByCategoryState> emit) async {
    if (state is ContentByCategoryDataState) {
      final currentState = state as ContentByCategoryDataState;
      try {
        final result = await _repository.loadFavourites(
          page: currentState.page,
          pageSize: currentState.pageSize,
          search: currentState.query,
        );
        emit(currentState.copyWith(
          isLoading: false,
          contents: List.of(currentState.contents)..addAll(result.contents),
          hasMore: result.contents.length == currentState.pageSize,
        ));
      } catch (e) {}
    }
  }

  Future<void> _onInitialEvent(
      _InitialEvent event, Emitter<ContentByCategoryState> emit) async {
    categoryId = event.categoryId;
    if (state is ContentByCategoryDataState) {
      final currentState = state as ContentByCategoryDataState;
      emit(currentState.copyWith(categoryId: categoryId));
    }
    await _loadContentByCategory(emit);
  }

  Future<void> _onInitFavoriteEvent(
      _InitialFavoriteEvent event, Emitter<ContentByCategoryState> emit) async {
    debugPrint("onInitFavoriteEvent  ");
    type = ContentByCategoryType.favorites;
    if (state is ContentByCategoryDataState) {
      final currentState = state as ContentByCategoryDataState;
      emit(currentState.copyWith(type: type));
    }
    await _loadContentByCategory(emit);
  }

  void _onSetQueryEvent(
      _SetQueryEvent event, Emitter<ContentByCategoryState> emit) {
    final currentState = ((state is! ContentByCategoryDataState)
        ? ContentByCategoryState.dataState()
        : state) as ContentByCategoryDataState;

    if (event.query.length >= 3 || event.query.isEmpty) {
      if (currentState.query != event.query) {
        emit(currentState.copyWith(
            query: event.query, contents: [], isLoading: true));
        _timer?.cancel();
        _timer = Timer(const Duration(milliseconds: 300),
            () => add(ContentByCategoryEvent.loadContentEvent()));
      }
    } else {
      _timer?.cancel();
      emit(currentState.copyWith(query: event.query));
    }
  }

  Future<void> _onLoadMoreEvent(
      _LoadMoreEvent event, Emitter<ContentByCategoryState> emit) async {
    if (state is ContentByCategoryDataState) {
      final currentState = state as ContentByCategoryDataState;
      if (!currentState.isLoading && currentState.hasMore) {
        emit(currentState.copyWith(
            isLoading: true, page: currentState.page + 1));
        await _loadContentByCategory(emit);
      }
    }
  }

  Future<void> _loadContentByCategory(
      Emitter<ContentByCategoryState> emit) async {
    if (state is ContentByCategoryDataState) {
      final currentState = state as ContentByCategoryDataState;
      if (type == ContentByCategoryType.contents) {
        try {
          final result = await _repository.loadContentsByCategory(
            categoryId: categoryId,
            page: currentState.page,
            pageSize: currentState.pageSize,
            search: currentState.query,
          );
          if (result.isEmpty && currentState.contents.isEmpty) {
            emit(ContentByCategoryState.noContentState());
          } else {
            emit(currentState.copyWith(
              isLoading: false,
              contents: List.of(currentState.contents)..addAll(result),
              hasMore: result.length >= currentState.pageSize,
            ));
          }
        } catch (e) {
          if (currentState.contents.isEmpty) {
            emit(ContentByCategoryState.errorState());
          } else {
            emit(currentState.copyWith(
              isLoading: false,
            ));
          }
        }
      } else {
        add(ContentByCategoryEvent.loadFavorites());
      }
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
