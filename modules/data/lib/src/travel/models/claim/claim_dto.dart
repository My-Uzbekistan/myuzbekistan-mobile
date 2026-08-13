import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'claim_dto.g.dart';

@JsonSerializable()
class ClaimDto {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "packageSize")
  int? packageSize;
  @JsonKey(name: "claimedAt")
  String? claimedAt;

  ClaimDto({this.name, this.description, this.packageSize, this.claimedAt});

  factory ClaimDto.fromJson(Map<String, dynamic> json) =>
      _$ClaimDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ClaimDtoToJson(this);

  ClaimHistory toDomain() {
    return ClaimHistory(
      name: name,
      description: description,
      packageSize: packageSize,
      claimedAt: claimedAt,
    );
  }
}

@JsonSerializable()
class ClaimStatusDto {
  int? timeLeft;
  int? type;

  ClaimStatusDto({this.timeLeft, this.type});

  factory ClaimStatusDto.fromJson(Map<String, dynamic> json) =>
      _$ClaimStatusDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ClaimStatusDtoToJson(this);

  ClaimStatus toDomain() {
    return ClaimStatus(timeLeft: timeLeft ?? 0, timeStatus: type ?? 0);
  }
}
