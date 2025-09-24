import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@injectable
class LoadCardsUseCase {
  final FinanceRepository _financeRepository;

  LoadCardsUseCase(FinanceRepository financeRepository)
    : _financeRepository = financeRepository;

  Future<List<CardItem>> call() async {
    return await _financeRepository.cards();
  }

  Future<void> deleteCard(int cardId) async {
    return await _financeRepository.deleteCard(cardId: cardId);
  }
}
