class PremiumStatusModel {
  final bool isPremium;
  final String? planName;
  final String? planDescription;
  final DateTime? startDate;
  final DateTime? endDate;
  final int? durationInMonths;
  final int? daysRemaining;

  PremiumStatusModel({
    this.isPremium = false,
    this.planName,
    this.planDescription,
    this.startDate,
    this.endDate,
    this.durationInMonths,
    this.daysRemaining,
  });
}
