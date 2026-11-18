import 'package:data/src/contract/contract_service.dart';
import 'package:data/src/utils/generic/generics.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@Injectable(as: ContractRepository)
class ContractRepositoryImpl implements ContractRepository {
  final ContractService service;

  const ContractRepositoryImpl(this.service);

  @override
  Future<Contract> detail(int id) {
    return service.detail(id).call((data) => data.toDomain());
  }
}
