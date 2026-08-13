import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'premium_access_response.g.dart';

@JsonSerializable()
class PremiumAccessResponse {
  final bool? canAccess;
  final String? reason;
  final int? usageCount;
  final int? limit;

  PremiumAccessResponse({
    this.canAccess,
    this.reason,
    this.usageCount,
    this.limit,
  });

  factory PremiumAccessResponse.fromJson(Map<String, dynamic> json) =>
      _$PremiumAccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PremiumAccessResponseToJson(this);

  PremiumAccessModel toDomain() => PremiumAccessModel(
    canAccess: canAccess ?? false,
    reason: PremiumAccessReason.values.firstWhere(
      (e) => e.name == reason,
      orElse: () => PremiumAccessReason.PremiumRequired,
    ),
    usageCount: usageCount,
    limit: limit,
  );
}
