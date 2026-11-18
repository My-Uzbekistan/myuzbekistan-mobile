// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_merchant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMerchantDto _$SearchMerchantDtoFromJson(Map<String, dynamic> json) =>
    SearchMerchantDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      logo: const ImageConvertor().fromJson(json['logo'] as String?),
      type: json['type'] as String?,
      deeplink: json['deeplink'] as String?,
    );

Map<String, dynamic> _$SearchMerchantDtoToJson(SearchMerchantDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': const ImageConvertor().toJson(instance.logo),
      'type': instance.type,
      'deeplink': instance.deeplink,
    };
