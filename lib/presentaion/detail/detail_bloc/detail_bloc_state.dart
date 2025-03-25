part of 'detail_bloc.dart';

@freezed
abstract class DetailBlocState with _$DetailBlocState {
  const factory DetailBlocState.loadingState() = _LoadingState;

  const factory DetailBlocState.dataState({
    required ContentDetail contentDetail,
  }) = _DetailBlocDataState;
}
