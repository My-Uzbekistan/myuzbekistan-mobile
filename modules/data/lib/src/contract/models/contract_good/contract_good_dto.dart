import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

import '../contract_good_spec/contract_good_spec_dto.dart';

part 'contract_good_dto.g.dart';

@JsonSerializable()
class ContractGoodDto {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "startingPricePerUnit")
  final double? startingPricePerUnit;
  @JsonKey(name: "totalPrice")
  final double? totalPrice;
  @JsonKey(name: "quantity")
  final double? quantity;
  @JsonKey(name: "spec")
  final ContractGoodSpecDto? spec;

  ContractGoodDto({
    this.name,
    this.startingPricePerUnit,
    this.totalPrice,
    this.quantity,
    this.spec,
  });

  factory ContractGoodDto.fromJson(Map<String, dynamic> json) =>
      _$ContractGoodDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ContractGoodDtoToJson(this);

  ContractGood toDomain() => ContractGood(
        name: name,
        startingPricePerUnit: startingPricePerUnit,
        totalPrice: totalPrice,
        quantity: quantity,
        spec: spec?.toDomain(),
      );
}
