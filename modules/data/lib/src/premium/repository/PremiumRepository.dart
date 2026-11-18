import 'package:data/src/premium/premium_service.dart';
import 'package:data/src/utils/generic/generics.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@Injectable(as: PremiumRepository)
class PremiumRepositoryImpl implements PremiumRepository {
  final PremiumService service;

  const PremiumRepositoryImpl(this.service);

  @override
  Future<List<PremiumPlansModel>> plans() {
    return service.plans().call(
      (data) => data.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<PremiumAccessModel> checkAccess(int catalogId) {
    return service.checkAccess(catalogId).call(
      (data) =>
          data?.toDomain() ??
          PremiumAccessModel(
            canAccess: true,
            reason: PremiumAccessReason.Free,
          ),
    );
  }

  @override
  Future<PremiumStatusModel> status() {
    return service.status().call((data) => data.toDomain());
  }

  @override
  Future<dynamic> cancelSubscription() {
    return service.cancel().call();
  }

  @override
  Future<void> subscribe(int planId) {
    return service.subscribe(planId).call();
  }
}
