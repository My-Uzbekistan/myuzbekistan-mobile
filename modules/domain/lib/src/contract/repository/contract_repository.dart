import '../models/contract.dart';

abstract interface class ContractRepository {
  /// Shartnoma detalini id bo'yicha yuklaydi.
  Future<Contract> detail(int id);
}
