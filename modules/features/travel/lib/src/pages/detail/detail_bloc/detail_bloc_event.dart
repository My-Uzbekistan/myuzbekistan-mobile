part of 'detail_bloc.dart';

@freezed
abstract class DetailBlocEvent with _$DetailBlocEvent {
  const factory DetailBlocEvent.initial({ ContentDetail? content,required String contentId}) =
      _DetailBlocInitialEvent;

  const factory DetailBlocEvent.changeFavoriteState({required bool isSetFavorite}) =
      _DetailBlocChangeFavorite;
}
