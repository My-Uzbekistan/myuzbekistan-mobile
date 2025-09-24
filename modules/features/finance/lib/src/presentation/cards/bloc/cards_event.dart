part of 'cards_bloc.dart';

@freezed
abstract class CardsEvent with _$CardsEvent {
  const factory CardsEvent.loadCards() = _LoadCardsEvent;

  const factory CardsEvent.edit() = _LoadEditEvent;

  const factory CardsEvent.setCards(List<CardItem> cards) = _SetCardsEvent;

  const factory CardsEvent.setSelectedCardId(int? cardId) =
      _SetSelectedCardIdEvent;

  const factory CardsEvent.deleteCard(int cardId) = _DeleteCardEvent;
}
