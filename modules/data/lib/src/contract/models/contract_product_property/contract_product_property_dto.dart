import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contract_product_property_dto.g.dart';

@JsonSerializable()
class ContractProductPropertyDto {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "unitOfMeasure")
  final String? unitOfMeasure;

  ContractProductPropertyDto({
    this.name,
    this.unitOfMeasure,
  });

  factory ContractProductPropertyDto.fromJson(Map<String, dynamic> json) =>
      _$ContractProductPropertyDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ContractProductPropertyDtoToJson(this);

  ContractProductProperty toDomain() => ContractProductProperty(
        name: name,
        unitOfMeasure: unitOfMeasure,
      );
}
