import 'package:core/core.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/listeners/appsettings_change_listener.dart';

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
      final result = await _repository.loadContentDetail(
        contentId: event.contentId.toInt(),
      );

      handler.call(DetailBlocState.dataState(contentDetail: result));
    });

    on<_DetailBlocChangeFavorite>(_setFavoriteEvent);
  }

  Future<void> _setFavoriteEvent(
      _DetailBlocChangeFavorite event, Emitter<DetailBlocState> emit) async {
    final data = (state as _DetailBlocDataState).contentDetail;
    emit((state as _DetailBlocDataState).copyWith(
        contentDetail: data.copyWith(isFavorite: event.isSetFavorite)));
    try {

      final result = await _repository.favoriteChange(
          contentId: (state as _DetailBlocDataState).contentDetail.id,
          setFavorite: event.isSetFavorite);
      _appLocaleChangeListener.refreshFavorite(require: !event.isSetFavorite);
    } catch (e) {
      debugPrint("DetailBLocSetFavoriteEvent ${e}");
    }
  }
}
