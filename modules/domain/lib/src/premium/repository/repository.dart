import 'package:domain/domain.dart';

abstract interface class PremiumRepository {
  Future<List<PremiumPlansModel>> plans();
  Future<PremiumAccessModel> checkAccess(int catalogId);
  Future<PremiumStatusModel> status();
  Future<void> cancelSubscription();
  Future<void> subscribe(int planId);
}
