import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contract_product_dto.g.dart';

@JsonSerializable()
class ContractProductDto {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "code")
  final String? code;
  @JsonKey(name: "quantity")
  final double? quantity;
  @JsonKey(name: "price")
  final double? price;
  @JsonKey(name: "totalAmount")
  final double? totalAmount;
  @JsonKey(name: "advance")
  final double? advance;
  @JsonKey(name: "description")
  final String? description;

  ContractProductDto({
    this.name,
    this.code,
    this.quantity,
    this.price,
    this.totalAmount,
    this.advance,
    this.description,
  });

  factory ContractProductDto.fromJson(Map<String, dynamic> json) =>
      _$ContractProductDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ContractProductDtoToJson(this);

  ContractProduct toDomain() => ContractProduct(
        name: name,
        code: code,
        quantity: quantity,
        price: price,
        totalAmount: totalAmount,
        advance: advance,
        description: description,
      );
}
