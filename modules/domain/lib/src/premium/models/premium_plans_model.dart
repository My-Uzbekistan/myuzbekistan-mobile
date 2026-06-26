class PremiumPlansModel {
  final int? id;
  final String? name;
  final String? description;
  final int? durationInMonths;
  final int? price;
  final int? originalPrice;
  final int? discountPercent;
  final bool isSelect;

  PremiumPlansModel({
    this.id,
    this.name,
    this.description,
    this.durationInMonths,
    this.price,
    this.originalPrice,
    this.discountPercent,
    this.isSelect =false,
  });
}
