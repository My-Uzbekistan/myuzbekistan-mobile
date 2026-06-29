import 'premium_feature_model.dart';

class PremiumPlansModel {
  final int? id;
  final String? name;
  final String? description;
  final int? durationInMonths;
  final int? price;
  final int? originalPrice;
  final int? discountPercent;
  final List<PremiumFeatureModel> features;
  final bool isSelect;

  PremiumPlansModel({
    this.id,
    this.name,
    this.description,
    this.durationInMonths,
    this.price,
    this.originalPrice,
    this.discountPercent,
    this.features = const [],
    this.isSelect = false,
  });

  PremiumPlansModel copyWith({
    int? id,
    String? name,
    String? description,
    int? durationInMonths,
    int? price,
    int? originalPrice,
    int? discountPercent,
    List<PremiumFeatureModel>? features,
    bool? isSelect,
  }) {
    return PremiumPlansModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      durationInMonths: durationInMonths ?? this.durationInMonths,
      price: price ?? this.price,
      originalPrice: originalPrice ?? this.originalPrice,
      discountPercent: discountPercent ?? this.discountPercent,
      features: features ?? this.features,
      isSelect: isSelect ?? this.isSelect,
    );
  }
}
