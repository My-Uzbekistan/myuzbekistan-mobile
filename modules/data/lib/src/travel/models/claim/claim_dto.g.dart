// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClaimDto _$ClaimDtoFromJson(Map<String, dynamic> json) => ClaimDto(
  name: json['name'] as String?,
  description: json['description'] as String?,
  packageSize: (json['packageSize'] as num?)?.toInt(),
  claimedAt: json['claimedAt'] as String?,
);

Map<String, dynamic> _$ClaimDtoToJson(ClaimDto instance) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'packageSize': instance.packageSize,
  'claimedAt': instance.claimedAt,
};

ClaimStatusDto _$ClaimStatusDtoFromJson(Map<String, dynamic> json) =>
    ClaimStatusDto(
      timeLeft: (json['timeLeft'] as num?)?.toInt(),
      type: (json['type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ClaimStatusDtoToJson(ClaimStatusDto instance) =>
    <String, dynamic>{'timeLeft': instance.timeLeft, 'type': instance.type};
