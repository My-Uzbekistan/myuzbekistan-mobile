import 'premium_access_reason.dart';

class PremiumAccessModel {
  final bool canAccess;
  final PremiumAccessReason reason;
  final int? usageCount;
  final int? limit;

  PremiumAccessModel({
    required this.canAccess,
    required this.reason,
    this.usageCount,
    this.limit,
  });
}
