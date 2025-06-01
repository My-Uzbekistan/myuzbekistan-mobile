part of 'detail_bloc.dart';

@freezed
abstract class DetailBlocState with _$DetailBlocState {
  const factory DetailBlocState.loadingState() = DetailBlocLoadingState;

  const factory DetailBlocState.dataState({
    required ContentDetail contentDetail,

    NavState ? navState
  }) = DetailBlocDataState;
}


@freezed
abstract class NavState with _$NavState {

  const factory NavState.unauthorized() = Unauthorized;

}