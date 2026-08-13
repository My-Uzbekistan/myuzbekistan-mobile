// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupByMerchantsDto _$GroupByMerchantsDtoFromJson(Map<String, dynamic> json) =>
    GroupByMerchantsDto(
      name: json['name'] as String?,
      merchants: (json['merchants'] as List<dynamic>)
          .map((e) => MerchantDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GroupByMerchantsDtoToJson(
  GroupByMerchantsDto instance,
) => <String, dynamic>{'name': instance.name, 'merchants': instance.merchants};

MerchantDto _$MerchantDtoFromJson(Map<String, dynamic> json) => MerchantDto(
  id: (json['id'] as num).toInt(),
  logo: const ImageConvertor().fromJson(json['logo'] as String?),
  name: json['name'] as String?,
  description: json['description'] as String?,
  address: json['address'] as String?,
  workTime: json['workTime'] as String?,
  phone: json['phone'] as String?,
  type: json['type'] as String?,
  distance: (json['distance'] as num?)?.toDouble(),
);

Map<String, dynamic> _$MerchantDtoToJson(MerchantDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo': const ImageConvertor().toJson(instance.logo),
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'workTime': instance.workTime,
      'phone': instance.phone,
      'type': instance.type,
      'distance': instance.distance,
    };
