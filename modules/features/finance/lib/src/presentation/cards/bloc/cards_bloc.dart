import 'dart:async';

import 'package:domain/domain.dart';
import 'package:finance/src/service/FinanceSharedService.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

import '../use_case/load_cards_use_case.dart';

part 'cards_state.dart';

part 'cards_event.dart';

part 'cards_bloc.freezed.dart';

@injectable
class CardsBloc extends Bloc<CardsEvent, CardsState> {
  final LoadCardsUseCase _loadCardsUseCase;

  final FinanceSharedService _financeSharedService;

  StreamSubscription? _cardsSubscription;
  StreamSubscription? _updateCardsSubscription;

  CardsBloc(LoadCardsUseCase loadCardsUseCase, this._financeSharedService)
    : _loadCardsUseCase = loadCardsUseCase,
      super(CardsState.loadingState()) {
    on<_LoadCardsEvent>(_loadCards);
    on<_SetCardsEvent>(_setCards);
    on<_LoadEditEvent>(_cardsEditEvent);
    on<_DeleteCardEvent>(_deleteCardEvent);
    on<_SetSelectedCardIdEvent>(_selectedCardId);
    debugPrint("loadCardsEvent");
    add(CardsEvent.loadCards());
    onInit();
  }

  void _selectedCardId(
    _SetSelectedCardIdEvent event,
    Emitter<CardsState> emitter,
  ) {
    if (state is CardsDataState) {
      emitter((state as CardsDataState).copyWith(selectedCardId: event.cardId));
    } else {
      emitter(CardsState.dataState([], selectedCardId: event.cardId));
    }
  }

  Future<void> _deleteCardEvent(
    _DeleteCardEvent event,
    Emitter<CardsState> emitter,
  ) async {
    try {
      _financeSharedService.removeCard(event.cardId);
      final result = await _loadCardsUseCase.deleteCard(event.cardId);
    } catch (e) {}
  }

  void _cardsEditEvent(_LoadEditEvent event, Emitter<CardsState> emitter) {
    emitter(
      (state as CardsDataState).copyWith(
        isEdit: !(state as CardsDataState).isEdit,
      ),
    );
  }

  void _setCards(_SetCardsEvent event, Emitter<CardsState> emitter) {
    if (state is CardsDataState) {
      emitter((state as CardsDataState).copyWith(cards: event.cards));
    } else {
      emitter(CardsState.dataState(event.cards));
    }
  }

  void onInit() {
    _cardsSubscription?.cancel();
    _updateCardsSubscription?.cancel();
    _updateCardsSubscription = _financeSharedService.updateCards.listen((d) {
      add(CardsEvent.loadCards());
    });
    _cardsSubscription = _financeSharedService.financeCards.listen((cards) {
      add(CardsEvent.setCards(cards));
    });
  }

  Future<void> _loadCards(
    _LoadCardsEvent event,
    Emitter<CardsState> emitter,
  ) async {
    try {
      final cards = await _loadCardsUseCase();
      _financeSharedService.addCards(cards);
    } catch (e) {}
  }

  @override
  Future<void> close() {
    _cardsSubscription?.cancel();
    _cardsSubscription = null;
    _updateCardsSubscription?.cancel();
    _updateCardsSubscription = null;
    return super.close();
  }
}
