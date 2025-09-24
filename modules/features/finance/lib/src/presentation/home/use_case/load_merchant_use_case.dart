import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@injectable
class LoadMerchantUseCase {
  final FinanceRepository _financeRepository;

  LoadMerchantUseCase(this._financeRepository);

  Future<List<Merchant>> call() {
    return _financeRepository.merchants();
  }

  Future<List<GroupBy<Merchant>>> groupByMerchants() {
    return _financeRepository.groupByMerchants();
  }
}
