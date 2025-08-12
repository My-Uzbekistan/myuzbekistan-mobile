import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@injectable
class LoadMerchantUseCase {
  final FinanceRepository financeRepository;

  LoadMerchantUseCase(this.financeRepository);

  Future<List<Merchant>> call() async {
    return financeRepository.merchants();
  }
}
