// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerDto _$BannerDtoFromJson(Map<String, dynamic> json) => BannerDto(
  id: (json['id'] as num).toInt(),
  photo: const ImageConvertor().fromJson(json['photo'] as String?),
  url: json['url'] as String?,
);

Map<String, dynamic> _$BannerDtoToJson(BannerDto instance) => <String, dynamic>{
  'id': instance.id,
  'photo': const ImageConvertor().toJson(instance.photo),
  'url': instance.url,
};
