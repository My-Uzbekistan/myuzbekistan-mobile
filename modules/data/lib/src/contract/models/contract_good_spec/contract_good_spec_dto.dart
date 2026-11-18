import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contract_good_spec_dto.g.dart';

@JsonSerializable()
class ContractGoodSpecDto {
  @JsonKey(name: "unitOfMeasure")
  final String? unitOfMeasure;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "description")
  final String? description;

  ContractGoodSpecDto({
    this.unitOfMeasure,
    this.type,
    this.description,
  });

  factory ContractGoodSpecDto.fromJson(Map<String, dynamic> json) =>
      _$ContractGoodSpecDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ContractGoodSpecDtoToJson(this);

  ContractGoodSpec toDomain() => ContractGoodSpec(
        unitOfMeasure: unitOfMeasure,
        type: type,
        description: description,
      );
}
