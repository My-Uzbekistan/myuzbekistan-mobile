import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'premium_status_response.g.dart';

@JsonSerializable()
class PremiumStatusResponse {
  @JsonKey(name: "isPremium")
  final bool? isPremium;
  @JsonKey(name: "planName")
  final String? planName;
  @JsonKey(name: "planDescription")
  final String? planDescription;
  @JsonKey(name: "startDate")
  final String? startDate;
  @JsonKey(name: "endDate")
  final String? endDate;
  @JsonKey(name: "durationInMonths")
  final int? durationInMonths;
  @JsonKey(name: "daysRemaining")
  final int? daysRemaining;

  PremiumStatusResponse({
    this.isPremium,
    this.planName,
    this.planDescription,
    this.startDate,
    this.endDate,
    this.durationInMonths,
    this.daysRemaining,
  });

  factory PremiumStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$PremiumStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PremiumStatusResponseToJson(this);

  PremiumStatusModel toDomain() {
    return PremiumStatusModel(
      isPremium: isPremium ?? false,
      planName: planName,
      planDescription: planDescription,
      startDate: DateTime.tryParse(startDate ?? ""),
      endDate: DateTime.tryParse(endDate ?? ""),
      durationInMonths: durationInMonths,
      daysRemaining: daysRemaining,
    );
  }
}
