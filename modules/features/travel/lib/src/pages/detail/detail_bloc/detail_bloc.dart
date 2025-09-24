import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

part 'detail_bloc_event.dart';

part 'detail_bloc_state.dart';

part 'detail_bloc.freezed.dart';

@injectable
class DetailBloc extends Bloc<DetailBlocEvent, DetailBlocState> {
  final Repository _repository;
  final AppStatusChangeListeners _appLocaleChangeListener;

  DetailBloc(Repository rp, AppStatusChangeListeners appStatusChangeListeners)
    : _repository = rp,
      _appLocaleChangeListener = appStatusChangeListeners,
      super(DetailBlocState.loadingState()) {
    on<_DetailBlocInitialEvent>((event, handler) async {
      try {
        if (event.content != null) {
          handler.call(
            DetailBlocState.dataState(
              contentDetail: event.content!,
              contentId: int.parse(event.contentId),
              isLoading: true,
            ),
          );
        }
        final result = await _repository.loadContentDetail(
          contentId: event.contentId.toInt(),
        );
        handler.call(
          state.map(
            loadingState:
                (st) => DetailBlocState.dataState(
                  contentDetail: result,
                  contentId: int.parse(event.contentId),
                  isLoading: false,
                ),
            dataState:
                (dst) => dst.copyWith(contentDetail: result, isLoading: false),
          ),
        );
      } catch (e) {
        debugPrint("eventExaption");
      }
    });

    on<_DetailBlocChangeFavorite>(_setFavoriteEvent);
  }

  Future<void> _setFavoriteEvent(
    _DetailBlocChangeFavorite event,
    Emitter<DetailBlocState> emit,
  ) async {
    final dataState = (state as DetailBlocDataState);
    emit((state as DetailBlocDataState).copyWith(navState: null));
    AuthCheck.authCheck(
      authSuccess: () async {
        emit(
          dataState.copyWith(
            contentDetail: dataState.contentDetail.copyWith(
              isFavorite: event.isSetFavorite,
            ),
            navState: null,
          ),
        );
        try {
          final result = await _repository.favoriteChange(
            contentId: dataState.contentDetail!.id,
            setFavorite: event.isSetFavorite,
          );
          _appLocaleChangeListener.refreshFavorite(
            require: !event.isSetFavorite,
          );
        } catch (_) {}
      },
      unauthorized: () {
        emit(dataState.copyWith(navState: NavState.unauthorized()));
      },
    );
  }
}
