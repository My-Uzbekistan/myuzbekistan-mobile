import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'premium_feature_response.g.dart';

@JsonSerializable()
class PremiumFeatureResponse {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "icon")
  final String? icon;

  PremiumFeatureResponse({
    this.id,
    this.title,
    this.description,
    this.icon,
  });

  factory PremiumFeatureResponse.fromJson(Map<String, dynamic> json) =>
      _$PremiumFeatureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PremiumFeatureResponseToJson(this);

  PremiumFeatureModel toDomain() {
    return PremiumFeatureModel(
      id: id,
      title: title,
      description: description,
      icon: icon,
    );
  }
}
