import 'package:data/src/premium/premium_service.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@Injectable(as: PremiumRepository)
class PremiumRepositoryImpl implements PremiumRepository {
  final PremiumService service;

  const PremiumRepositoryImpl(this.service);

  @override
  Future plans() {
    return service.plans();
  }
}
