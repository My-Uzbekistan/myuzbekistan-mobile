import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

abstract interface class FinanceSharedService {
  late Stream<List<CardItem>> financeCards;
  late Stream<void> updateCards;

  void addCards(List<CardItem> cards);

  void removeCard(int cardId);

  void cardsUpdate();

  bool hasSetCards();
}

@LazySingleton(as: FinanceSharedService)
class FinanceSharedServiceIml extends FinanceSharedService {
  final BehaviorSubject<List<CardItem>> _cards = BehaviorSubject();
  final PublishSubject<void> _updateCards = PublishSubject();

  @override
  Stream<List<CardItem>> get financeCards => _cards.stream;

  @override
  Stream<void> get updateCards => _updateCards.stream;

  @override
  void addCards(List<CardItem> cards) {
    _cards.add(cards);
  }

  @override
  void removeCard(int cardId) {

    _cards.add(_cards.value.where((element) => element.id != cardId).toList());
  }

  @override
  bool hasSetCards() {
    return _cards.hasValue && _cards.value.isNotEmpty;
  }

  @override
  void cardsUpdate() {
    _updateCards.add(null);
  }
}
