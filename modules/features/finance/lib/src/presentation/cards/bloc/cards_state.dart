part of 'cards_bloc.dart';

@freezed
abstract class CardsState with _$CardsState {
  const factory CardsState.loadingState() = CardsLoadingState;

  const factory CardsState.dataState(
    List<CardItem> cards, {
    @Default(false) bool isEdit,
    int? selectedCardId,
  }) = CardsDataState;
}
