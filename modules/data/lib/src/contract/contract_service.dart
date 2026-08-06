import 'package:data/src/contract/models/contract_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shared/shared.dart';

part 'contract_service.g.dart';

@injectable
@RestApi()
abstract class ContractService {
  @factoryMethod
  factory ContractService(Dio dio) = _ContractService;

  // TODO(backend): endpoint tasdiqlanishi kerak. Hozircha taxminiy.
  @GET("contracts/{id}")
  Future<ContractDto> detail(@Path("id") int id);
}
