import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'premium_plans_response.g.dart';

@JsonSerializable()
class PremiumPlansResponse {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "durationInMonths")
  final int? durationInMonths;
  @JsonKey(name: "price")
  final int? price;
  @JsonKey(name: "originalPrice")
  final int? originalPrice;
  @JsonKey(name: "discountPercent")
  final int? discountPercent;

  PremiumPlansResponse({
    this.id,
    this.name,
    this.description,
    this.durationInMonths,
    this.price,
    this.originalPrice,
    this.discountPercent,
  });

  factory PremiumPlansResponse.fromJson(Map<String, dynamic> json) =>
      _$PremiumPlansResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PremiumPlansResponseToJson(this);

  PremiumPlansModel toDomain() {
    return PremiumPlansModel(
      id: id,
      name: name,
      description: description,
      durationInMonths: durationInMonths,
      price: price,
      originalPrice: originalPrice,
      discountPercent: discountPercent,
    );
  }
}
