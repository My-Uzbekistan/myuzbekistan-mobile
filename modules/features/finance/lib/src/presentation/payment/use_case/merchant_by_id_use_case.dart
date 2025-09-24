import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@injectable
class MerchantByIdUseCase {
  final FinanceRepository financeRepository;

  MerchantByIdUseCase(this.financeRepository);

  Future<Merchant> call(String id) async {
    return financeRepository.paymentMerchant(merchantId: id);
  }
}
